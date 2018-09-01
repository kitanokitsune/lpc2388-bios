.equ B_Irq,	0x80
.equ B_Fiq,	0x40
.equ B_Thumb,	0x20
.equ M_USR,	0x10
.equ M_FIQ,	0x11
.equ M_IRQ,	0x12
.equ M_SVC,	0x13
.equ M_ABT,	0x17
.equ M_UND,	0x1B
.equ M_SYS,	0x1F
.equ LPC_BASE_VIC,	0xFFFFF000
.equ VIC_VectAddr,	0xF00
.equ Mode_USR,            0x10
.equ Mode_FIQ,            0x11
.equ Mode_IRQ,            0x12
.equ Mode_SVC,            0x13
.equ Mode_ABT,            0x17
.equ Mode_UND,            0x1B
.equ Mode_SYS,            0x1F
/* when I bit is set, IRQ is disabled */
.equ I_Bit,               0x80
/* when F bit is set, FIQ is disabled */      
.equ F_Bit,               0x40
/* when T bit is set, Thumb mode */      
.equ T_Bit,               0x20


	.text

	.extern		main
	.extern		LPC2388_Initialize
	.extern		_sp_base
	.extern		_etext
	.extern		_sdata
	.extern		_edata
	.extern		_sbss
	.extern		_ebss
	.extern		_exception_sp_base
#======================================
#      Initialize vectors
#
##     0x00 	 Reset
##     0x04 	 Undefined Instruction
##     0x08 	 Software Interrupt
##     0x0c 	 Abort(prefetch)
##     0x10 	 Abort(data)
##     0x14 	 Reserved
##     0x18 	 IRQ
##     0x1c 	 FIQ
#======================================
	.global _startup

	.org 0x0
	B	_startup
	B	_handler_undef_inst
	B	_handler_swi
	B	_handler_prefetch_abort
	B	_handler_data_abort
	.word	0x9EE00E19
	LDR	pc, [pc, #-0x120]
	B	_handler_fiq

	.org 0x20
_startup:
	#リセット割り込みのACK（無くても動作するが）
	MOV R0, #0
	LDR	LR, =LPC_BASE_VIC
	STR	R0, [LR, #VIC_VectAddr]

	#IRQ通知を受け取るように設定する
	MRS	R0, cpsr
	eor	R0, R0, #0x80
	MSR	cpsr, R0
	#プロセッサモードをIRQモードへ	
	MRS	r1, CPSR
	BIC	R1, R1, #0x1F
	ORR	R1, R1, #0x12
	MSR	CPSR, R1
	#例外ハンドラ用スタックを設定
	LDR	sp, = _exception_sp_base

	#プロセッサモードをスーパーバイザモードへ戻す
	MRS	r1, CPSR
	BIC	R1, R1, #0x1F
	ORR	R1, R1, #0x13
	MSR	CPSR, R1

	# テンポラリにスタックを設定してデバイス初期化
	LDR	R13,=_sp_base
.ifdef THUMB
	LDR     R1,=LPC2388_Initialize
	ORR     R1, R1 ,#1
	BLX     R1
.else
	BL	LPC2388_Initialize
.endif

	# Relocate .data section (Copy from ROM to RAM)
	LDR     R1, =_etext
	LDR     R2, =_sdata 
	LDR     R3, =_edata 
	CMP     R2, R3
	BEQ     DataIsEmpty
LoopRel:
	CMP     R2, R3 
	LDRLO   R0, [R1], #4 
	STRLO   R0, [R2], #4 
	BLO     LoopRel 
DataIsEmpty:
 
	# Clear .bss section (Zero init)
	MOV     R0, #0 
	LDR     R1, =_sbss
	LDR     R2, =_ebss 
	CMP     R1,R2
	BEQ     BSSIsEmpty
LoopZI:
	CMP     R1, R2 
	STRLO   R0, [R1], #4 
	BLO     LoopZI 
BSSIsEmpty:

	# スタックを設定してmainへ
	LDR	R13,=_sp_base
.ifdef THUMB
	LDR     R1,=main
	ORR     R1, R1 ,#1
	BX      R1
.else
	B	main
.endif

# 例外ハンドル
	.align 0x4
	# 未使用の割り込み（停止）
_handler_undef_inst:
_handler_swi:
_handler_prefetch_abort:
_handler_data_abort:
_handler_fiq:
	B	_handler_undef_inst


	.global current_sp
current_sp:
	mov	r0, r13
	bx	lr


/* LPC2388 Code Read Protection    */
/* 0x11223344 is NO CRP Protection */

	.global _crp
	.org 0x01FC
_crp:
	crp_word:		.word	0x11223344
