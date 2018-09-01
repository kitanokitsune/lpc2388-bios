	.cpu arm7tdmi-s
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 1	@ Tag_ABI_enum_size
	.eabi_attribute 30, 1	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"test.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	test
	.syntax unified
	.arm
	.fpu softvfp
	.type	test, %function
test:
.LFB1:
	.file 1 "test.c"
	@ test.c:15
	.loc 1 15 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
@ BLOCK 2 freq:95 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI0:
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	sub	sp, sp, #12
.LCFI1:
	.cfi_def_cfa_offset 48
	@ test.c:18
	.loc 1 18 0
	mov	r0, #1040
	bl	malloc2388
.LVL0:
	mov	r2, r0
.LVL1:
.LBB4:
.LBB5:
	.file 2 "../../include/bios2388.h"
	@ ../../include/bios2388.h:40
	.loc 2 40 0
	.syntax divided
@ 40 "../../include/bios2388.h" 1
	mov r3, pc
@ 0 "" 2
	.arm
	.syntax unified
	str	r3, [sp, #4]
	@ ../../include/bios2388.h:41
	.loc 2 41 0
	ldr	r1, [sp, #4]
.LBE5:
.LBE4:
	@ test.c:19
	.loc 1 19 0
	ldr	r3, .L8
	str	r1, [r3]
	@ test.c:20
	.loc 1 20 0
	ldr	r0, .L8+4
.LVL2:
	bl	xprintf
.LVL3:
	@ test.c:21
	.loc 1 21 0
	mov	r2, #0
	ldr	r3, .L8+8
	str	r2, [r3]
	@ test.c:23
	.loc 1 23 0
	mov	r8, r3
	@ test.c:24
	.loc 1 24 0
	mov	r10, #2048
	@ test.c:25
	.loc 1 25 0
	ldr	r9, .L8+12
	@ test.c:27
	.loc 1 27 0
	ldr	r4, .L8+16
	@ test.c:29
	.loc 1 29 0
	ldr	r7, .L8+20
@ SUCC: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ test.c:27
	.loc 1 27 0
	ldr	r6, .L8+24
@ BLOCK 3 freq:1059 seq:1
@ PRED: 2 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 5 [9.0%]  (DFS_BACK,CAN_FALLTHRU,LOOP_EXIT)
.L5:
	@ test.c:23
	.loc 1 23 0
	ldr	r3, [r8]
	add	r3, r3, #1
	str	r3, [r8]
	@ test.c:24
	.loc 1 24 0
	mov	r0, r10
	bl	malloc2388
.LVL4:
	mov	r5, r0
.LVL5:
	@ test.c:25
	.loc 1 25 0
	ldr	fp, [r8]
	bl	current_sp
.LVL6:
	mov	r3, r0
	mov	r2, r5
	mov	r1, fp
	mov	r0, r9
	bl	xprintf
.LVL7:
	@ test.c:26
	.loc 1 26 0
	cmp	r5, #0
@ SUCC: 4 [85.0%]  (FALLTHRU,CAN_FALLTHRU) 8 [15.0%]  (CAN_FALLTHRU,LOOP_EXIT)
	beq	.L2
@ BLOCK 4 freq:900 seq:2
@ PRED: 3 [85.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ test.c:27
	.loc 1 27 0
	mov	r3, #0
	str	r3, [r4]
@ SUCC: 6 [100.0%]  (CAN_FALLTHRU)
	b	.L4
@ BLOCK 5 freq:9100 seq:3
@ PRED: 6 [48.8%]  (CAN_FALLTHRU) 7 [100.0%]  (CAN_FALLTHRU)
.L3:
	@ test.c:27
	.loc 1 27 0 is_stmt 0
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	cmp	r3, r6
@ SUCC: 6 [91.0%]  (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 3 [9.0%]  (DFS_BACK,CAN_FALLTHRU,LOOP_EXIT)
	bgt	.L5
@ BLOCK 6 freq:9100 seq:4
@ PRED: 5 [91.0%]  (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 4 [100.0%]  (CAN_FALLTHRU)
.L4:
	@ test.c:28
	.loc 1 28 0 is_stmt 1
	rsb	r2, r3, #0
	strb	r2, [r5, r3]
	@ test.c:29
	.loc 1 29 0
	ldr	r2, [r4]
	rsb	r3, r2, #0
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	and	r3, r3, #255
	cmp	r1, r3
@ SUCC: 7 [51.2%]  (FALLTHRU,CAN_FALLTHRU) 5 [48.8%]  (CAN_FALLTHRU)
	beq	.L3
@ BLOCK 7 freq:4662 seq:5
@ PRED: 6 [51.2%]  (FALLTHRU,CAN_FALLTHRU)
	@ test.c:29
	.loc 1 29 0 is_stmt 0
	mov	r1, r5
	mov	r0, r7
	bl	xprintf
.LVL8:
@ SUCC: 5 [100.0%]  (CAN_FALLTHRU)
	b	.L3
@ BLOCK 8 freq:159 seq:6
@ PRED: 3 [15.0%]  (CAN_FALLTHRU,LOOP_EXIT)
.L2:
	@ test.c:34
	.loc 1 34 0 is_stmt 1
	ldr	r0, .L8+28
	bl	xprintf
.LVL9:
	@ test.c:35
	.loc 1 35 0
	ldr	r0, .L8+32
	bl	sys_exit
.LVL10:
	@ test.c:36
	.loc 1 36 0
	add	sp, sp, #12
.LCFI2:
	.cfi_def_cfa_offset 36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI3:
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL11:
@ SUCC: EXIT [100.0%] 
	bx	lr
.L9:
	.align	2
.L8:
	.word	p
	.word	.LC0
	.word	i
	.word	.LC1
	.word	j
	.word	.LC2
	.word	2047
	.word	.LC3
	.word	2421
	.cfi_endproc
.LFE1:
	.size	test, .-test
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
.LFB2:
	@ test.c:40
	.loc 1 40 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ BLOCK 2 freq:1111 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
	push	{r4, r5, r6, r7, r8, lr}
.LCFI4:
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LVL12:
	@ test.c:49
	.loc 1 49 0
	ldr	r3, .L20
	ldr	r2, .L20+4
	mov	r1, #7
	mov	r0, #4
	bl	__malloc2388_init
.LVL13:
	mov	r3, r0
	mov	r2, #7
	mov	r1, #4
	ldr	r0, .L20+8
	bl	xprintf
.LVL14:
	@ test.c:52
	.loc 1 52 0
	mov	r0, #5
	bl	malloc2388
.LVL15:
	mov	r1, r0
	ldr	r0, .L20+12
	bl	xprintf
.LVL16:
	mov	r4, #3
	@ test.c:55
	.loc 1 55 0
	mov	r6, #8
@ SUCC: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	ldr	r5, .L20+16
.LVL17:
@ BLOCK 3 freq:3333 seq:1
@ PRED: 3 [75.0%]  (DFS_BACK,CAN_FALLTHRU) 2 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
.L11:
	@ test.c:55
	.loc 1 55 0 is_stmt 0
	mov	r0, r6
	bl	malloc2388
.LVL18:
	mov	r1, r0
	mov	r0, r5
	bl	xprintf
.LVL19:
	@ test.c:54
	.loc 1 54 0 is_stmt 1
	subs	r4, r4, #1
.LVL20:
@ SUCC: 3 [75.0%]  (DFS_BACK,CAN_FALLTHRU) 4 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	bne	.L11
@ BLOCK 4 freq:833 seq:2
@ PRED: 3 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	mov	r4, #3
.LVL21:
	@ test.c:59
	.loc 1 59 0
	mov	r6, #1
@ SUCC: 5 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	ldr	r5, .L20+20
@ BLOCK 5 freq:3333 seq:3
@ PRED: 4 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 5 [75.0%]  (DFS_BACK,CAN_FALLTHRU)
.L12:
.LVL22:
	@ test.c:59
	.loc 1 59 0 is_stmt 0
	mov	r0, r6
	bl	malloc2388
.LVL23:
	mov	r1, r0
	mov	r0, r5
	bl	xprintf
.LVL24:
	@ test.c:58
	.loc 1 58 0 is_stmt 1
	subs	r4, r4, #1
.LVL25:
@ SUCC: 5 [75.0%]  (DFS_BACK,CAN_FALLTHRU) 6 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	bne	.L12
@ BLOCK 6 freq:1111 seq:4
@ PRED: 5 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	@ test.c:62
	.loc 1 62 0
	mov	r0, #3
	bl	malloc2388
.LVL26:
	mov	r5, r0
.LVL27:
	mov	r1, r0
	ldr	r0, .L20+24
.LVL28:
	bl	xprintf
.LVL29:
	mov	r4, #3
	@ test.c:65
	.loc 1 65 0
	mov	r7, #8
@ SUCC: 7 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	ldr	r6, .L20+16
.LVL30:
@ BLOCK 7 freq:3333 seq:5
@ PRED: 7 [75.0%]  (DFS_BACK,CAN_FALLTHRU) 6 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
.L13:
	@ test.c:65
	.loc 1 65 0 is_stmt 0
	mov	r0, r7
	bl	malloc2388
.LVL31:
	mov	r1, r0
	mov	r0, r6
	bl	xprintf
.LVL32:
	@ test.c:64
	.loc 1 64 0 is_stmt 1
	subs	r4, r4, #1
.LVL33:
@ SUCC: 7 [75.0%]  (DFS_BACK,CAN_FALLTHRU) 8 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	bne	.L13
@ BLOCK 8 freq:1111 seq:6
@ PRED: 7 [25.0%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	@ test.c:68
	.loc 1 68 0
	mov	r1, r5
	ldr	r0, .L20+28
	bl	xprintf
.LVL34:
	@ test.c:69
	.loc 1 69 0
	mov	r0, r5
	bl	free2388
.LVL35:
	@ test.c:71
	.loc 1 71 0
	mov	r4, #8
@ SUCC: 9 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ test.c:72
	.loc 1 72 0
	ldr	r5, .L20+32
.LVL36:
@ BLOCK 9 freq:8890 seq:7
@ PRED: 9 [88.9%]  (DFS_BACK,CAN_FALLTHRU) 8 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
.L14:
	@ test.c:72
	.loc 1 72 0 is_stmt 0
	mov	r0, r4
	bl	malloc2388
.LVL37:
	mov	r2, r0
	mov	r1, r4
	mov	r0, r5
	bl	xprintf
.LVL38:
	@ test.c:71
	.loc 1 71 0 is_stmt 1
	subs	r4, r4, #1
.LVL39:
@ SUCC: 9 [88.9%]  (DFS_BACK,CAN_FALLTHRU) 10 [11.1%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	bne	.L14
@ BLOCK 10 freq:1111 seq:8
@ PRED: 9 [11.1%]  (FALLTHRU,CAN_FALLTHRU,LOOP_EXIT)
	@ test.c:76
	.loc 1 76 0
	bl	test
.LVL40:
	@ test.c:79
	.loc 1 79 0
	ldr	r0, .L20+36
	bl	xprintf
.LVL41:
	@ test.c:82
	.loc 1 82 0
	mov	r0, #1
	pop	{r4, r5, r6, r7, r8, lr}
.LCFI5:
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL42:
@ SUCC: EXIT [100.0%] 
	bx	lr
.L21:
	.align	2
.L20:
	.word	_heap_end_
	.word	_heap_start_
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.comm	p,4,4
	.comm	j,4,4
	.comm	i,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"\012pc=0x%08x, addr=%08x\012\000"
	.space	1
.LC1:
	.ascii	"(%2d) heap = %08x, sp=%08x\012\000"
.LC2:
	.ascii	"! %08x:%X\012\000"
	.space	1
.LC3:
	.ascii	"Exit internally with return code 0x975.\012\000"
	.space	3
.LC4:
	.ascii	"\012malloc2388_init(clustersize=%d, memcfg=%d): %ld"
	.ascii	" clusters available\012\000"
	.space	3
.LC5:
	.ascii	"* alloc(5) = %08x\012\000"
	.space	1
.LC6:
	.ascii	"* alloc(8) = %08x\012\000"
	.space	1
.LC7:
	.ascii	"* alloc(1) = %08x\012\000"
	.space	1
.LC8:
	.ascii	"* alloc(3) = %08x\012\000"
	.space	1
.LC9:
	.ascii	"* free(3 @ %08x)\012\000"
	.space	2
.LC10:
	.ascii	"* alloc(%d) = %08x\012\000"
.LC11:
	.ascii	"complete.\012\000"
	.text
.Letext0:
	.file 3 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\machine\\_default_types.h"
	.file 4 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\_stdint.h"
	.file 5 "../../include/xprintf.h"
	.file 6 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\lock.h"
	.file 7 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\_types.h"
	.file 8 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\lib\\gcc\\arm-none-eabi\\6.3.1\\include\\stddef.h"
	.file 9 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\reent.h"
	.file 10 "../../include/tinymalloc.h"
	.file 11 "../../include/malloc2388.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xbb3	@ Length of Compilation Unit Info
	.2byte	0x2	@ DWARF version number
	.4byte	.Ldebug_abbrev0	@ Offset Into Abbrev. Section
	.byte	0x4	@ Pointer Size (in bytes)
	.uleb128 0x1	@ (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF146	@ DW_AT_producer: "GNU C11 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437] -mcpu=arm7tdmi-s -g3 -gdwarf-2 -gstrict-dwarf -O"
	.byte	0x1	@ DW_AT_language
	.4byte	.LASF147	@ DW_AT_name: "test.c"
	.4byte	.LASF148	@ DW_AT_comp_dir: "C:\Users\USER\Desktop\ARM-DEV\Projects\lpc23xx\lpc2388-bios\sdk\application\heap"
	.4byte	.Ltext0	@ DW_AT_low_pc
	.4byte	.Letext0	@ DW_AT_high_pc
	.4byte	.Ldebug_line0	@ DW_AT_stmt_list
	.4byte	.Ldebug_macinfo0	@ DW_AT_macro_info
	.uleb128 0x2	@ (DIE (0x29) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x6	@ DW_AT_encoding
	.4byte	.LASF0	@ DW_AT_name: "signed char"
	.uleb128 0x3	@ (DIE (0x30) DW_TAG_typedef)
	.4byte	.LASF8	@ DW_AT_name: "__uint8_t"
	.byte	0x3	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\_default_types.h)
	.byte	0x2b	@ DW_AT_decl_line
	.4byte	0x3b	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0x3b) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x8	@ DW_AT_encoding
	.4byte	.LASF1	@ DW_AT_name: "unsigned char"
	.uleb128 0x2	@ (DIE (0x42) DW_TAG_base_type)
	.byte	0x2	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF2	@ DW_AT_name: "short int"
	.uleb128 0x2	@ (DIE (0x49) DW_TAG_base_type)
	.byte	0x2	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF3	@ DW_AT_name: "short unsigned int"
	.uleb128 0x2	@ (DIE (0x50) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF4	@ DW_AT_name: "long int"
	.uleb128 0x2	@ (DIE (0x57) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF5	@ DW_AT_name: "long unsigned int"
	.uleb128 0x4	@ (DIE (0x5e) DW_TAG_volatile_type)
	.4byte	0x57	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0x63) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF6	@ DW_AT_name: "long long int"
	.uleb128 0x2	@ (DIE (0x6a) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF7	@ DW_AT_name: "long long unsigned int"
	.uleb128 0x5	@ (DIE (0x71) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.ascii "int\0"	@ DW_AT_name
	.uleb128 0x3	@ (DIE (0x78) DW_TAG_typedef)
	.4byte	.LASF9	@ DW_AT_name: "__uintptr_t"
	.byte	0x3	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\_default_types.h)
	.byte	0xe8	@ DW_AT_decl_line
	.4byte	0x83	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0x83) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF10	@ DW_AT_name: "unsigned int"
	.uleb128 0x3	@ (DIE (0x8a) DW_TAG_typedef)
	.4byte	.LASF11	@ DW_AT_name: "uint8_t"
	.byte	0x4	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_stdint.h)
	.byte	0x18	@ DW_AT_decl_line
	.4byte	0x30	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0x95) DW_TAG_typedef)
	.4byte	.LASF12	@ DW_AT_name: "uintptr_t"
	.byte	0x4	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_stdint.h)
	.byte	0x52	@ DW_AT_decl_line
	.4byte	0x78	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0xa0) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x4	@ DW_AT_encoding
	.4byte	.LASF13	@ DW_AT_name: "double"
	.uleb128 0x2	@ (DIE (0xa7) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF14	@ DW_AT_name: "sizetype"
	.uleb128 0x6	@ (DIE (0xae) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0xba	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0xb4) DW_TAG_formal_parameter)
	.4byte	0x3b	@ DW_AT_type
	.byte	0	@ end of children of DIE 0xae
	.uleb128 0x8	@ (DIE (0xba) DW_TAG_variable)
	.4byte	.LASF15	@ DW_AT_name: "xfunc_out"
	.byte	0x5	@ DW_AT_decl_file (../../include/xprintf.h)
	.byte	0x15	@ DW_AT_decl_line
	.4byte	0xc7	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x9	@ (DIE (0xc7) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xae	@ DW_AT_type
	.uleb128 0xa	@ (DIE (0xcd) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x3b	@ DW_AT_type
	.uleb128 0x8	@ (DIE (0xd3) DW_TAG_variable)
	.4byte	.LASF16	@ DW_AT_name: "xfunc_in"
	.byte	0x5	@ DW_AT_decl_file (../../include/xprintf.h)
	.byte	0x25	@ DW_AT_decl_line
	.4byte	0xe0	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x9	@ (DIE (0xe0) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xcd	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0xe6) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x4	@ DW_AT_encoding
	.4byte	.LASF17	@ DW_AT_name: "long double"
	.uleb128 0x3	@ (DIE (0xed) DW_TAG_typedef)
	.4byte	.LASF18	@ DW_AT_name: "_LOCK_T"
	.byte	0x6	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\lock.h)
	.byte	0x22	@ DW_AT_decl_line
	.4byte	0xf8	@ DW_AT_type
	.uleb128 0x9	@ (DIE (0xf8) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xfe	@ DW_AT_type
	.uleb128 0xb	@ (DIE (0xfe) DW_TAG_structure_type)
	.4byte	.LASF125	@ DW_AT_name: "__lock"
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x3	@ (DIE (0x104) DW_TAG_typedef)
	.4byte	.LASF19	@ DW_AT_name: "_off_t"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0x2c	@ DW_AT_decl_line
	.4byte	0x50	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0x10f) DW_TAG_typedef)
	.4byte	.LASF20	@ DW_AT_name: "_fpos_t"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0x72	@ DW_AT_decl_line
	.4byte	0x50	@ DW_AT_type
	.uleb128 0xc	@ (DIE (0x11a) DW_TAG_typedef)
	.4byte	.LASF21	@ DW_AT_name: "wint_t"
	.byte	0x8	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stddef.h)
	.2byte	0x165	@ DW_AT_decl_line
	.4byte	0x83	@ DW_AT_type
	.uleb128 0xd	@ (DIE (0x126) DW_TAG_union_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xa6	@ DW_AT_decl_line
	.4byte	0x145	@ DW_AT_sibling
	.uleb128 0xe	@ (DIE (0x12e) DW_TAG_member)
	.4byte	.LASF22	@ DW_AT_name: "__wch"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xa8	@ DW_AT_decl_line
	.4byte	0x11a	@ DW_AT_type
	.uleb128 0xe	@ (DIE (0x139) DW_TAG_member)
	.4byte	.LASF23	@ DW_AT_name: "__wchb"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xa9	@ DW_AT_decl_line
	.4byte	0x145	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x126
	.uleb128 0xf	@ (DIE (0x145) DW_TAG_array_type)
	.4byte	0x3b	@ DW_AT_type
	.4byte	0x155	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x14e) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x3	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x145
	.uleb128 0x11	@ (DIE (0x155) DW_TAG_structure_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xa3	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x15d) DW_TAG_member)
	.4byte	.LASF24	@ DW_AT_name: "__count"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xa5	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0x16b) DW_TAG_member)
	.4byte	.LASF25	@ DW_AT_name: "__value"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xaa	@ DW_AT_decl_line
	.4byte	0x126	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.byte	0	@ end of children of DIE 0x155
	.uleb128 0x3	@ (DIE (0x17a) DW_TAG_typedef)
	.4byte	.LASF26	@ DW_AT_name: "_mbstate_t"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xab	@ DW_AT_decl_line
	.4byte	0x155	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0x185) DW_TAG_typedef)
	.4byte	.LASF27	@ DW_AT_name: "_flock_t"
	.byte	0x7	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h)
	.byte	0xaf	@ DW_AT_decl_line
	.4byte	0xed	@ DW_AT_type
	.uleb128 0x13	@ (DIE (0x190) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.uleb128 0x9	@ (DIE (0x192) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x198	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0x198) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x8	@ DW_AT_encoding
	.4byte	.LASF28	@ DW_AT_name: "char"
	.uleb128 0x14	@ (DIE (0x19f) DW_TAG_const_type)
	.4byte	0x198	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0x1a4) DW_TAG_typedef)
	.4byte	.LASF29	@ DW_AT_name: "__ULong"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x16	@ DW_AT_decl_line
	.4byte	0x57	@ DW_AT_type
	.uleb128 0x15	@ (DIE (0x1af) DW_TAG_structure_type)
	.4byte	.LASF34	@ DW_AT_name: "_Bigint"
	.byte	0x18	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x2f	@ DW_AT_decl_line
	.4byte	0x20e	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x1bb) DW_TAG_member)
	.4byte	.LASF30	@ DW_AT_name: "_next"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x31	@ DW_AT_decl_line
	.4byte	0x20e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x16	@ (DIE (0x1c9) DW_TAG_member)
	.ascii "_k\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x32	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x12	@ (DIE (0x1d6) DW_TAG_member)
	.4byte	.LASF31	@ DW_AT_name: "_maxwds"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x32	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x12	@ (DIE (0x1e4) DW_TAG_member)
	.4byte	.LASF32	@ DW_AT_name: "_sign"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x32	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x12	@ (DIE (0x1f2) DW_TAG_member)
	.4byte	.LASF33	@ DW_AT_name: "_wds"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x32	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x16	@ (DIE (0x200) DW_TAG_member)
	.ascii "_x\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x33	@ DW_AT_decl_line
	.4byte	0x214	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14
	.byte	0	@ end of children of DIE 0x1af
	.uleb128 0x9	@ (DIE (0x20e) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x1af	@ DW_AT_type
	.uleb128 0xf	@ (DIE (0x214) DW_TAG_array_type)
	.4byte	0x1a4	@ DW_AT_type
	.4byte	0x224	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x21d) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x214
	.uleb128 0x15	@ (DIE (0x224) DW_TAG_structure_type)
	.4byte	.LASF35	@ DW_AT_name: "__tm"
	.byte	0x24	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x37	@ DW_AT_decl_line
	.4byte	0x2af	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x230) DW_TAG_member)
	.4byte	.LASF36	@ DW_AT_name: "__tm_sec"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x39	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0x23e) DW_TAG_member)
	.4byte	.LASF37	@ DW_AT_name: "__tm_min"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3a	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x12	@ (DIE (0x24c) DW_TAG_member)
	.4byte	.LASF38	@ DW_AT_name: "__tm_hour"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3b	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x12	@ (DIE (0x25a) DW_TAG_member)
	.4byte	.LASF39	@ DW_AT_name: "__tm_mday"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3c	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x12	@ (DIE (0x268) DW_TAG_member)
	.4byte	.LASF40	@ DW_AT_name: "__tm_mon"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3d	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x12	@ (DIE (0x276) DW_TAG_member)
	.4byte	.LASF41	@ DW_AT_name: "__tm_year"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3e	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14
	.uleb128 0x12	@ (DIE (0x284) DW_TAG_member)
	.4byte	.LASF42	@ DW_AT_name: "__tm_wday"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x3f	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x18
	.uleb128 0x12	@ (DIE (0x292) DW_TAG_member)
	.4byte	.LASF43	@ DW_AT_name: "__tm_yday"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x40	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x1c
	.uleb128 0x12	@ (DIE (0x2a0) DW_TAG_member)
	.4byte	.LASF44	@ DW_AT_name: "__tm_isdst"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x41	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x20
	.byte	0	@ end of children of DIE 0x224
	.uleb128 0x17	@ (DIE (0x2af) DW_TAG_structure_type)
	.4byte	.LASF45	@ DW_AT_name: "_on_exit_args"
	.2byte	0x108	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x4a	@ DW_AT_decl_line
	.4byte	0x2f8	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x2bc) DW_TAG_member)
	.4byte	.LASF46	@ DW_AT_name: "_fnargs"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x4b	@ DW_AT_decl_line
	.4byte	0x2f8	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0x2ca) DW_TAG_member)
	.4byte	.LASF47	@ DW_AT_name: "_dso_handle"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x4c	@ DW_AT_decl_line
	.4byte	0x2f8	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x80
	.uleb128 0x12	@ (DIE (0x2d9) DW_TAG_member)
	.4byte	.LASF48	@ DW_AT_name: "_fntypes"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x4e	@ DW_AT_decl_line
	.4byte	0x1a4	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x100
	.uleb128 0x12	@ (DIE (0x2e8) DW_TAG_member)
	.4byte	.LASF49	@ DW_AT_name: "_is_cxa"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x51	@ DW_AT_decl_line
	.4byte	0x1a4	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x104
	.byte	0	@ end of children of DIE 0x2af
	.uleb128 0xf	@ (DIE (0x2f8) DW_TAG_array_type)
	.4byte	0x190	@ DW_AT_type
	.4byte	0x308	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x301) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x1f	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x2f8
	.uleb128 0x17	@ (DIE (0x308) DW_TAG_structure_type)
	.4byte	.LASF50	@ DW_AT_name: "_atexit"
	.2byte	0x190	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x5d	@ DW_AT_decl_line
	.4byte	0x34f	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x315) DW_TAG_member)
	.4byte	.LASF30	@ DW_AT_name: "_next"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x5e	@ DW_AT_decl_line
	.4byte	0x34f	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0x323) DW_TAG_member)
	.4byte	.LASF51	@ DW_AT_name: "_ind"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x5f	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x12	@ (DIE (0x331) DW_TAG_member)
	.4byte	.LASF52	@ DW_AT_name: "_fns"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x61	@ DW_AT_decl_line
	.4byte	0x355	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x12	@ (DIE (0x33f) DW_TAG_member)
	.4byte	.LASF45	@ DW_AT_name: "_on_exit_args"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x62	@ DW_AT_decl_line
	.4byte	0x2af	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x88
	.byte	0	@ end of children of DIE 0x308
	.uleb128 0x9	@ (DIE (0x34f) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x308	@ DW_AT_type
	.uleb128 0xf	@ (DIE (0x355) DW_TAG_array_type)
	.4byte	0x365	@ DW_AT_type
	.4byte	0x365	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x35e) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x1f	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x355
	.uleb128 0x9	@ (DIE (0x365) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x36b	@ DW_AT_type
	.uleb128 0x18	@ (DIE (0x36b) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.uleb128 0x15	@ (DIE (0x36d) DW_TAG_structure_type)
	.4byte	.LASF53	@ DW_AT_name: "__sbuf"
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x75	@ DW_AT_decl_line
	.4byte	0x396	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x379) DW_TAG_member)
	.4byte	.LASF54	@ DW_AT_name: "_base"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x76	@ DW_AT_decl_line
	.4byte	0x396	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0x387) DW_TAG_member)
	.4byte	.LASF55	@ DW_AT_name: "_size"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0x77	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.byte	0	@ end of children of DIE 0x36d
	.uleb128 0x9	@ (DIE (0x396) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x3b	@ DW_AT_type
	.uleb128 0x15	@ (DIE (0x39c) DW_TAG_structure_type)
	.4byte	.LASF56	@ DW_AT_name: "__sFILE"
	.byte	0x68	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xb5	@ DW_AT_decl_line
	.4byte	0x4f6	@ DW_AT_sibling
	.uleb128 0x16	@ (DIE (0x3a8) DW_TAG_member)
	.ascii "_p\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xb6	@ DW_AT_decl_line
	.4byte	0x396	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x16	@ (DIE (0x3b5) DW_TAG_member)
	.ascii "_r\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xb7	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x16	@ (DIE (0x3c2) DW_TAG_member)
	.ascii "_w\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xb8	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x12	@ (DIE (0x3cf) DW_TAG_member)
	.4byte	.LASF57	@ DW_AT_name: "_flags"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xb9	@ DW_AT_decl_line
	.4byte	0x42	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x12	@ (DIE (0x3dd) DW_TAG_member)
	.4byte	.LASF58	@ DW_AT_name: "_file"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xba	@ DW_AT_decl_line
	.4byte	0x42	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xe
	.uleb128 0x16	@ (DIE (0x3eb) DW_TAG_member)
	.ascii "_bf\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xbb	@ DW_AT_decl_line
	.4byte	0x36d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x12	@ (DIE (0x3f9) DW_TAG_member)
	.4byte	.LASF59	@ DW_AT_name: "_lbfsize"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xbc	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x18
	.uleb128 0x12	@ (DIE (0x407) DW_TAG_member)
	.4byte	.LASF60	@ DW_AT_name: "_cookie"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xc3	@ DW_AT_decl_line
	.4byte	0x190	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x1c
	.uleb128 0x12	@ (DIE (0x415) DW_TAG_member)
	.4byte	.LASF61	@ DW_AT_name: "_read"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xc5	@ DW_AT_decl_line
	.4byte	0x67e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x20
	.uleb128 0x12	@ (DIE (0x423) DW_TAG_member)
	.4byte	.LASF62	@ DW_AT_name: "_write"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xc7	@ DW_AT_decl_line
	.4byte	0x6a9	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x24
	.uleb128 0x12	@ (DIE (0x431) DW_TAG_member)
	.4byte	.LASF63	@ DW_AT_name: "_seek"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xca	@ DW_AT_decl_line
	.4byte	0x6ce	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x28
	.uleb128 0x12	@ (DIE (0x43f) DW_TAG_member)
	.4byte	.LASF64	@ DW_AT_name: "_close"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xcb	@ DW_AT_decl_line
	.4byte	0x6e9	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2c
	.uleb128 0x16	@ (DIE (0x44d) DW_TAG_member)
	.ascii "_ub\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xce	@ DW_AT_decl_line
	.4byte	0x36d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x30
	.uleb128 0x16	@ (DIE (0x45b) DW_TAG_member)
	.ascii "_up\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xcf	@ DW_AT_decl_line
	.4byte	0x396	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x38
	.uleb128 0x16	@ (DIE (0x469) DW_TAG_member)
	.ascii "_ur\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xd0	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x3c
	.uleb128 0x12	@ (DIE (0x477) DW_TAG_member)
	.4byte	.LASF65	@ DW_AT_name: "_ubuf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xd3	@ DW_AT_decl_line
	.4byte	0x6ef	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x40
	.uleb128 0x12	@ (DIE (0x485) DW_TAG_member)
	.4byte	.LASF66	@ DW_AT_name: "_nbuf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xd4	@ DW_AT_decl_line
	.4byte	0x6ff	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x43
	.uleb128 0x16	@ (DIE (0x493) DW_TAG_member)
	.ascii "_lb\0"	@ DW_AT_name
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xd7	@ DW_AT_decl_line
	.4byte	0x36d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x44
	.uleb128 0x12	@ (DIE (0x4a1) DW_TAG_member)
	.4byte	.LASF67	@ DW_AT_name: "_blksize"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xda	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4c
	.uleb128 0x12	@ (DIE (0x4af) DW_TAG_member)
	.4byte	.LASF68	@ DW_AT_name: "_offset"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xdb	@ DW_AT_decl_line
	.4byte	0x104	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x50
	.uleb128 0x12	@ (DIE (0x4bd) DW_TAG_member)
	.4byte	.LASF69	@ DW_AT_name: "_data"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xde	@ DW_AT_decl_line
	.4byte	0x515	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x54
	.uleb128 0x12	@ (DIE (0x4cb) DW_TAG_member)
	.4byte	.LASF70	@ DW_AT_name: "_lock"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xe2	@ DW_AT_decl_line
	.4byte	0x185	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x58
	.uleb128 0x12	@ (DIE (0x4d9) DW_TAG_member)
	.4byte	.LASF71	@ DW_AT_name: "_mbstate"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xe4	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x5c
	.uleb128 0x12	@ (DIE (0x4e7) DW_TAG_member)
	.4byte	.LASF72	@ DW_AT_name: "_flags2"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.byte	0xe5	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x64
	.byte	0	@ end of children of DIE 0x39c
	.uleb128 0x19	@ (DIE (0x4f6) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x71	@ DW_AT_type
	.4byte	0x515	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x500) DW_TAG_formal_parameter)
	.4byte	0x515	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x505) DW_TAG_formal_parameter)
	.4byte	0x190	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x50a) DW_TAG_formal_parameter)
	.4byte	0x192	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x50f) DW_TAG_formal_parameter)
	.4byte	0x71	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x4f6
	.uleb128 0x9	@ (DIE (0x515) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x520	@ DW_AT_type
	.uleb128 0x14	@ (DIE (0x51b) DW_TAG_const_type)
	.4byte	0x515	@ DW_AT_type
	.uleb128 0x1a	@ (DIE (0x520) DW_TAG_structure_type)
	.4byte	.LASF73	@ DW_AT_name: "_reent"
	.2byte	0x428	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x239	@ DW_AT_decl_line
	.4byte	0x67e	@ DW_AT_sibling
	.uleb128 0x1b	@ (DIE (0x52e) DW_TAG_member)
	.4byte	.LASF74	@ DW_AT_name: "_errno"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x23b	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x1b	@ (DIE (0x53d) DW_TAG_member)
	.4byte	.LASF75	@ DW_AT_name: "_stdin"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x240	@ DW_AT_decl_line
	.4byte	0x75c	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x1b	@ (DIE (0x54c) DW_TAG_member)
	.4byte	.LASF76	@ DW_AT_name: "_stdout"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x240	@ DW_AT_decl_line
	.4byte	0x75c	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x1b	@ (DIE (0x55b) DW_TAG_member)
	.4byte	.LASF77	@ DW_AT_name: "_stderr"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x240	@ DW_AT_decl_line
	.4byte	0x75c	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x1b	@ (DIE (0x56a) DW_TAG_member)
	.4byte	.LASF78	@ DW_AT_name: "_inc"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x242	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x1b	@ (DIE (0x579) DW_TAG_member)
	.4byte	.LASF79	@ DW_AT_name: "_emergency"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x243	@ DW_AT_decl_line
	.4byte	0x977	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14
	.uleb128 0x1b	@ (DIE (0x588) DW_TAG_member)
	.4byte	.LASF80	@ DW_AT_name: "_unspecified_locale_info"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x246	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x30
	.uleb128 0x1b	@ (DIE (0x597) DW_TAG_member)
	.4byte	.LASF81	@ DW_AT_name: "_locale"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x247	@ DW_AT_decl_line
	.4byte	0x98d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x34
	.uleb128 0x1b	@ (DIE (0x5a6) DW_TAG_member)
	.4byte	.LASF82	@ DW_AT_name: "__sdidinit"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x249	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x38
	.uleb128 0x1b	@ (DIE (0x5b5) DW_TAG_member)
	.4byte	.LASF83	@ DW_AT_name: "__cleanup"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x24b	@ DW_AT_decl_line
	.4byte	0x99f	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x3c
	.uleb128 0x1b	@ (DIE (0x5c4) DW_TAG_member)
	.4byte	.LASF84	@ DW_AT_name: "_result"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x24e	@ DW_AT_decl_line
	.4byte	0x20e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x40
	.uleb128 0x1b	@ (DIE (0x5d3) DW_TAG_member)
	.4byte	.LASF85	@ DW_AT_name: "_result_k"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x24f	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x44
	.uleb128 0x1b	@ (DIE (0x5e2) DW_TAG_member)
	.4byte	.LASF86	@ DW_AT_name: "_p5s"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x250	@ DW_AT_decl_line
	.4byte	0x20e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x48
	.uleb128 0x1b	@ (DIE (0x5f1) DW_TAG_member)
	.4byte	.LASF87	@ DW_AT_name: "_freelist"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x251	@ DW_AT_decl_line
	.4byte	0x9a5	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4c
	.uleb128 0x1b	@ (DIE (0x600) DW_TAG_member)
	.4byte	.LASF88	@ DW_AT_name: "_cvtlen"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x254	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x50
	.uleb128 0x1b	@ (DIE (0x60f) DW_TAG_member)
	.4byte	.LASF89	@ DW_AT_name: "_cvtbuf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x255	@ DW_AT_decl_line
	.4byte	0x192	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x54
	.uleb128 0x1b	@ (DIE (0x61e) DW_TAG_member)
	.4byte	.LASF90	@ DW_AT_name: "_new"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x278	@ DW_AT_decl_line
	.4byte	0x955	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x58
	.uleb128 0x1b	@ (DIE (0x62d) DW_TAG_member)
	.4byte	.LASF50	@ DW_AT_name: "_atexit"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x27c	@ DW_AT_decl_line
	.4byte	0x34f	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x148
	.uleb128 0x1b	@ (DIE (0x63d) DW_TAG_member)
	.4byte	.LASF91	@ DW_AT_name: "_atexit0"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x27d	@ DW_AT_decl_line
	.4byte	0x308	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14c
	.uleb128 0x1b	@ (DIE (0x64d) DW_TAG_member)
	.4byte	.LASF92	@ DW_AT_name: "_sig_func"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x281	@ DW_AT_decl_line
	.4byte	0x9b7	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2dc
	.uleb128 0x1b	@ (DIE (0x65d) DW_TAG_member)
	.4byte	.LASF93	@ DW_AT_name: "__sglue"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x286	@ DW_AT_decl_line
	.4byte	0x71b	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2e0
	.uleb128 0x1b	@ (DIE (0x66d) DW_TAG_member)
	.4byte	.LASF94	@ DW_AT_name: "__sf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x287	@ DW_AT_decl_line
	.4byte	0x9c3	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2ec
	.byte	0	@ end of children of DIE 0x520
	.uleb128 0x9	@ (DIE (0x67e) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x4f6	@ DW_AT_type
	.uleb128 0x19	@ (DIE (0x684) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x71	@ DW_AT_type
	.4byte	0x6a3	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x68e) DW_TAG_formal_parameter)
	.4byte	0x515	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x693) DW_TAG_formal_parameter)
	.4byte	0x190	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x698) DW_TAG_formal_parameter)
	.4byte	0x6a3	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x69d) DW_TAG_formal_parameter)
	.4byte	0x71	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x684
	.uleb128 0x9	@ (DIE (0x6a3) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x19f	@ DW_AT_type
	.uleb128 0x9	@ (DIE (0x6a9) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x684	@ DW_AT_type
	.uleb128 0x19	@ (DIE (0x6af) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x10f	@ DW_AT_type
	.4byte	0x6ce	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x6b9) DW_TAG_formal_parameter)
	.4byte	0x515	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x6be) DW_TAG_formal_parameter)
	.4byte	0x190	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x6c3) DW_TAG_formal_parameter)
	.4byte	0x10f	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x6c8) DW_TAG_formal_parameter)
	.4byte	0x71	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x6af
	.uleb128 0x9	@ (DIE (0x6ce) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x6af	@ DW_AT_type
	.uleb128 0x19	@ (DIE (0x6d4) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x71	@ DW_AT_type
	.4byte	0x6e9	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x6de) DW_TAG_formal_parameter)
	.4byte	0x515	@ DW_AT_type
	.uleb128 0x7	@ (DIE (0x6e3) DW_TAG_formal_parameter)
	.4byte	0x190	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x6d4
	.uleb128 0x9	@ (DIE (0x6e9) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x6d4	@ DW_AT_type
	.uleb128 0xf	@ (DIE (0x6ef) DW_TAG_array_type)
	.4byte	0x3b	@ DW_AT_type
	.4byte	0x6ff	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x6f8) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x2	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x6ef
	.uleb128 0xf	@ (DIE (0x6ff) DW_TAG_array_type)
	.4byte	0x3b	@ DW_AT_type
	.4byte	0x70f	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x708) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x6ff
	.uleb128 0xc	@ (DIE (0x70f) DW_TAG_typedef)
	.4byte	.LASF95	@ DW_AT_name: "__FILE"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x11f	@ DW_AT_decl_line
	.4byte	0x39c	@ DW_AT_type
	.uleb128 0x1c	@ (DIE (0x71b) DW_TAG_structure_type)
	.4byte	.LASF96	@ DW_AT_name: "_glue"
	.byte	0xc	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x123	@ DW_AT_decl_line
	.4byte	0x756	@ DW_AT_sibling
	.uleb128 0x1b	@ (DIE (0x728) DW_TAG_member)
	.4byte	.LASF30	@ DW_AT_name: "_next"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x125	@ DW_AT_decl_line
	.4byte	0x756	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x1b	@ (DIE (0x737) DW_TAG_member)
	.4byte	.LASF97	@ DW_AT_name: "_niobs"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x126	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x1b	@ (DIE (0x746) DW_TAG_member)
	.4byte	.LASF98	@ DW_AT_name: "_iobs"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x127	@ DW_AT_decl_line
	.4byte	0x75c	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.byte	0	@ end of children of DIE 0x71b
	.uleb128 0x9	@ (DIE (0x756) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x71b	@ DW_AT_type
	.uleb128 0x9	@ (DIE (0x75c) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x70f	@ DW_AT_type
	.uleb128 0x1c	@ (DIE (0x762) DW_TAG_structure_type)
	.4byte	.LASF99	@ DW_AT_name: "_rand48"
	.byte	0xe	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x13f	@ DW_AT_decl_line
	.4byte	0x79d	@ DW_AT_sibling
	.uleb128 0x1b	@ (DIE (0x76f) DW_TAG_member)
	.4byte	.LASF100	@ DW_AT_name: "_seed"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x140	@ DW_AT_decl_line
	.4byte	0x79d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x1b	@ (DIE (0x77e) DW_TAG_member)
	.4byte	.LASF101	@ DW_AT_name: "_mult"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x141	@ DW_AT_decl_line
	.4byte	0x79d	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0x1b	@ (DIE (0x78d) DW_TAG_member)
	.4byte	.LASF102	@ DW_AT_name: "_add"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x142	@ DW_AT_decl_line
	.4byte	0x49	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.byte	0	@ end of children of DIE 0x762
	.uleb128 0xf	@ (DIE (0x79d) DW_TAG_array_type)
	.4byte	0x49	@ DW_AT_type
	.4byte	0x7ad	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x7a6) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x2	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x79d
	.uleb128 0x1d	@ (DIE (0x7ad) DW_TAG_structure_type)
	.byte	0xd0	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x259	@ DW_AT_decl_line
	.4byte	0x8dd	@ DW_AT_sibling
	.uleb128 0x1b	@ (DIE (0x7b6) DW_TAG_member)
	.4byte	.LASF103	@ DW_AT_name: "_unused_rand"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x25b	@ DW_AT_decl_line
	.4byte	0x83	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x1b	@ (DIE (0x7c5) DW_TAG_member)
	.4byte	.LASF104	@ DW_AT_name: "_strtok_last"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x25c	@ DW_AT_decl_line
	.4byte	0x192	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x1b	@ (DIE (0x7d4) DW_TAG_member)
	.4byte	.LASF105	@ DW_AT_name: "_asctime_buf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x25d	@ DW_AT_decl_line
	.4byte	0x8dd	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x1b	@ (DIE (0x7e3) DW_TAG_member)
	.4byte	.LASF106	@ DW_AT_name: "_localtime_buf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x25e	@ DW_AT_decl_line
	.4byte	0x224	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x24
	.uleb128 0x1b	@ (DIE (0x7f2) DW_TAG_member)
	.4byte	.LASF107	@ DW_AT_name: "_gamma_signgam"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x25f	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x48
	.uleb128 0x1b	@ (DIE (0x801) DW_TAG_member)
	.4byte	.LASF108	@ DW_AT_name: "_rand_next"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x260	@ DW_AT_decl_line
	.4byte	0x6a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x50
	.uleb128 0x1b	@ (DIE (0x810) DW_TAG_member)
	.4byte	.LASF109	@ DW_AT_name: "_r48"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x261	@ DW_AT_decl_line
	.4byte	0x762	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x58
	.uleb128 0x1b	@ (DIE (0x81f) DW_TAG_member)
	.4byte	.LASF110	@ DW_AT_name: "_mblen_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x262	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x68
	.uleb128 0x1b	@ (DIE (0x82e) DW_TAG_member)
	.4byte	.LASF111	@ DW_AT_name: "_mbtowc_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x263	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x70
	.uleb128 0x1b	@ (DIE (0x83d) DW_TAG_member)
	.4byte	.LASF112	@ DW_AT_name: "_wctomb_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x264	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x78
	.uleb128 0x1b	@ (DIE (0x84c) DW_TAG_member)
	.4byte	.LASF113	@ DW_AT_name: "_l64a_buf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x265	@ DW_AT_decl_line
	.4byte	0x8ed	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x80
	.uleb128 0x1b	@ (DIE (0x85c) DW_TAG_member)
	.4byte	.LASF114	@ DW_AT_name: "_signal_buf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x266	@ DW_AT_decl_line
	.4byte	0x8fd	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x88
	.uleb128 0x1b	@ (DIE (0x86c) DW_TAG_member)
	.4byte	.LASF115	@ DW_AT_name: "_getdate_err"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x267	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xa0
	.uleb128 0x1b	@ (DIE (0x87c) DW_TAG_member)
	.4byte	.LASF116	@ DW_AT_name: "_mbrlen_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x268	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xa4
	.uleb128 0x1b	@ (DIE (0x88c) DW_TAG_member)
	.4byte	.LASF117	@ DW_AT_name: "_mbrtowc_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x269	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xac
	.uleb128 0x1b	@ (DIE (0x89c) DW_TAG_member)
	.4byte	.LASF118	@ DW_AT_name: "_mbsrtowcs_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x26a	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xb4
	.uleb128 0x1b	@ (DIE (0x8ac) DW_TAG_member)
	.4byte	.LASF119	@ DW_AT_name: "_wcrtomb_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x26b	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xbc
	.uleb128 0x1b	@ (DIE (0x8bc) DW_TAG_member)
	.4byte	.LASF120	@ DW_AT_name: "_wcsrtombs_state"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x26c	@ DW_AT_decl_line
	.4byte	0x17a	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc4
	.uleb128 0x1b	@ (DIE (0x8cc) DW_TAG_member)
	.4byte	.LASF121	@ DW_AT_name: "_h_errno"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x26d	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x3	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xcc
	.byte	0	@ end of children of DIE 0x7ad
	.uleb128 0xf	@ (DIE (0x8dd) DW_TAG_array_type)
	.4byte	0x198	@ DW_AT_type
	.4byte	0x8ed	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x8e6) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x19	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x8dd
	.uleb128 0xf	@ (DIE (0x8ed) DW_TAG_array_type)
	.4byte	0x198	@ DW_AT_type
	.4byte	0x8fd	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x8f6) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x7	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x8ed
	.uleb128 0xf	@ (DIE (0x8fd) DW_TAG_array_type)
	.4byte	0x198	@ DW_AT_type
	.4byte	0x90d	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x906) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x17	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x8fd
	.uleb128 0x1d	@ (DIE (0x90d) DW_TAG_structure_type)
	.byte	0xf0	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x272	@ DW_AT_decl_line
	.4byte	0x935	@ DW_AT_sibling
	.uleb128 0x1b	@ (DIE (0x916) DW_TAG_member)
	.4byte	.LASF122	@ DW_AT_name: "_nextf"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x275	@ DW_AT_decl_line
	.4byte	0x935	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x1b	@ (DIE (0x925) DW_TAG_member)
	.4byte	.LASF123	@ DW_AT_name: "_nmalloc"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x276	@ DW_AT_decl_line
	.4byte	0x945	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x78
	.byte	0	@ end of children of DIE 0x90d
	.uleb128 0xf	@ (DIE (0x935) DW_TAG_array_type)
	.4byte	0x396	@ DW_AT_type
	.4byte	0x945	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x93e) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x1d	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x935
	.uleb128 0xf	@ (DIE (0x945) DW_TAG_array_type)
	.4byte	0x83	@ DW_AT_type
	.4byte	0x955	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x94e) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x1d	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x945
	.uleb128 0x1e	@ (DIE (0x955) DW_TAG_union_type)
	.byte	0xf0	@ DW_AT_byte_size
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x257	@ DW_AT_decl_line
	.4byte	0x977	@ DW_AT_sibling
	.uleb128 0x1f	@ (DIE (0x95e) DW_TAG_member)
	.4byte	.LASF73	@ DW_AT_name: "_reent"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x26e	@ DW_AT_decl_line
	.4byte	0x7ad	@ DW_AT_type
	.uleb128 0x1f	@ (DIE (0x96a) DW_TAG_member)
	.4byte	.LASF124	@ DW_AT_name: "_unused"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x277	@ DW_AT_decl_line
	.4byte	0x90d	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x955
	.uleb128 0xf	@ (DIE (0x977) DW_TAG_array_type)
	.4byte	0x198	@ DW_AT_type
	.4byte	0x987	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x980) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x18	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x977
	.uleb128 0xb	@ (DIE (0x987) DW_TAG_structure_type)
	.4byte	.LASF126	@ DW_AT_name: "__locale_t"
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x9	@ (DIE (0x98d) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x987	@ DW_AT_type
	.uleb128 0x6	@ (DIE (0x993) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x99f	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x999) DW_TAG_formal_parameter)
	.4byte	0x515	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x993
	.uleb128 0x9	@ (DIE (0x99f) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x993	@ DW_AT_type
	.uleb128 0x9	@ (DIE (0x9a5) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x20e	@ DW_AT_type
	.uleb128 0x6	@ (DIE (0x9ab) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x9b7	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x9b1) DW_TAG_formal_parameter)
	.4byte	0x71	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x9ab
	.uleb128 0x9	@ (DIE (0x9b7) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x9bd	@ DW_AT_type
	.uleb128 0x9	@ (DIE (0x9bd) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x9ab	@ DW_AT_type
	.uleb128 0xf	@ (DIE (0x9c3) DW_TAG_array_type)
	.4byte	0x70f	@ DW_AT_type
	.4byte	0x9d3	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x9cc) DW_TAG_subrange_type)
	.4byte	0xa7	@ DW_AT_type
	.byte	0x2	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x9c3
	.uleb128 0x20	@ (DIE (0x9d3) DW_TAG_variable)
	.4byte	.LASF127	@ DW_AT_name: "_impure_ptr"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x2fe	@ DW_AT_decl_line
	.4byte	0x515	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x20	@ (DIE (0x9e1) DW_TAG_variable)
	.4byte	.LASF128	@ DW_AT_name: "_global_impure_ptr"
	.byte	0x9	@ DW_AT_decl_file (c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h)
	.2byte	0x2ff	@ DW_AT_decl_line
	.4byte	0x51b	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x3	@ (DIE (0x9ef) DW_TAG_typedef)
	.4byte	.LASF129	@ DW_AT_name: "_CLUSTER_IDX_t"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0xd	@ DW_AT_decl_line
	.4byte	0x49	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0x9fa) DW_TAG_typedef)
	.4byte	.LASF130	@ DW_AT_name: "_CLUSTER_SIZE_t"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0xe	@ DW_AT_decl_line
	.4byte	0x49	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0xa05) DW_TAG_typedef)
	.4byte	.LASF131	@ DW_AT_name: "_BANK_IDX_t"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0xf	@ DW_AT_decl_line
	.4byte	0x49	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0xa10) DW_TAG_typedef)
	.4byte	.LASF132	@ DW_AT_name: "_BANK_BIT_t"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x10	@ DW_AT_decl_line
	.4byte	0x49	@ DW_AT_type
	.uleb128 0x11	@ (DIE (0xa1b) DW_TAG_structure_type)
	.byte	0x14	@ DW_AT_byte_size
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x11	@ DW_AT_decl_line
	.4byte	0xa86	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0xa23) DW_TAG_member)
	.4byte	.LASF133	@ DW_AT_name: "mark_alloc"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x12	@ DW_AT_decl_line
	.4byte	0xa86	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x12	@ (DIE (0xa31) DW_TAG_member)
	.4byte	.LASF134	@ DW_AT_name: "mark_chain"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x13	@ DW_AT_decl_line
	.4byte	0xa86	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x12	@ (DIE (0xa3f) DW_TAG_member)
	.4byte	.LASF135	@ DW_AT_name: "heap_base_address"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x14	@ DW_AT_decl_line
	.4byte	0x190	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x12	@ (DIE (0xa4d) DW_TAG_member)
	.4byte	.LASF136	@ DW_AT_name: "cluster_size"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x15	@ DW_AT_decl_line
	.4byte	0x9fa	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x12	@ (DIE (0xa5b) DW_TAG_member)
	.4byte	.LASF137	@ DW_AT_name: "max_cluster_id"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x16	@ DW_AT_decl_line
	.4byte	0x9ef	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xe
	.uleb128 0x12	@ (DIE (0xa69) DW_TAG_member)
	.4byte	.LASF138	@ DW_AT_name: "number_of_banks"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x17	@ DW_AT_decl_line
	.4byte	0xa05	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x12	@ (DIE (0xa77) DW_TAG_member)
	.4byte	.LASF139	@ DW_AT_name: "chk_sp_collision"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x19	@ DW_AT_decl_line
	.4byte	0x8a	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x12
	.byte	0	@ end of children of DIE 0xa1b
	.uleb128 0x9	@ (DIE (0xa86) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xa10	@ DW_AT_type
	.uleb128 0x3	@ (DIE (0xa8c) DW_TAG_typedef)
	.4byte	.LASF140	@ DW_AT_name: "_TN_MALLOC_INFO_t"
	.byte	0xa	@ DW_AT_decl_file (../../include/tinymalloc.h)
	.byte	0x1b	@ DW_AT_decl_line
	.4byte	0xa1b	@ DW_AT_type
	.uleb128 0x8	@ (DIE (0xa97) DW_TAG_variable)
	.4byte	.LASF141	@ DW_AT_name: "_heap_start_"
	.byte	0xb	@ DW_AT_decl_file (../../include/malloc2388.h)
	.byte	0x60	@ DW_AT_decl_line
	.4byte	0x50	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x8	@ (DIE (0xaa4) DW_TAG_variable)
	.4byte	.LASF142	@ DW_AT_name: "_heap_end_"
	.byte	0xb	@ DW_AT_decl_file (../../include/malloc2388.h)
	.byte	0x61	@ DW_AT_decl_line
	.4byte	0x50	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0xf	@ (DIE (0xab1) DW_TAG_array_type)
	.4byte	0xa8c	@ DW_AT_type
	.4byte	0xabc	@ DW_AT_sibling
	.uleb128 0x21	@ (DIE (0xaba) DW_TAG_subrange_type)
	.byte	0	@ end of children of DIE 0xab1
	.uleb128 0x8	@ (DIE (0xabc) DW_TAG_variable)
	.4byte	.LASF143	@ DW_AT_name: "_tn_malloc_info"
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x9	@ DW_AT_decl_line
	.4byte	0xab1	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x8	@ (DIE (0xac9) DW_TAG_variable)
	.4byte	.LASF144	@ DW_AT_name: "_tiny_malloc_flag"
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0xa	@ DW_AT_decl_line
	.4byte	0x8a	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0x22	@ (DIE (0xad6) DW_TAG_variable)
	.ascii "i\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0xc	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	i
	.uleb128 0x22	@ (DIE (0xae6) DW_TAG_variable)
	.ascii "j\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0xc	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	j
	.uleb128 0x22	@ (DIE (0xaf6) DW_TAG_variable)
	.ascii "p\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0xd	@ DW_AT_decl_line
	.4byte	0x57	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	p
	.uleb128 0x23	@ (DIE (0xb06) DW_TAG_subprogram)
	.byte	0x1	@ DW_AT_external
	.4byte	.LASF149	@ DW_AT_name: "main"
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x27	@ DW_AT_decl_line
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x71	@ DW_AT_type
	.4byte	.LFB2	@ DW_AT_low_pc
	.4byte	.LFE2	@ DW_AT_high_pc
	.4byte	.LLST2	@ DW_AT_frame_base
	.4byte	0xb56	@ DW_AT_sibling
	.uleb128 0x24	@ (DIE (0xb23) DW_TAG_variable)
	.ascii "i\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x29	@ DW_AT_decl_line
	.4byte	0x71	@ DW_AT_type
	.4byte	.LLST3	@ DW_AT_location
	.uleb128 0x25	@ (DIE (0xb30) DW_TAG_variable)
	.ascii "blk\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x2a	@ DW_AT_decl_line
	.4byte	0x3b	@ DW_AT_type
	.byte	0x4	@ DW_AT_const_value
	.uleb128 0x26	@ (DIE (0xb3c) DW_TAG_variable)
	.4byte	.LASF145	@ DW_AT_name: "memcfg"
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x2a	@ DW_AT_decl_line
	.4byte	0x3b	@ DW_AT_type
	.byte	0x7	@ DW_AT_const_value
	.uleb128 0x24	@ (DIE (0xb48) DW_TAG_variable)
	.ascii "k\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x2b	@ DW_AT_decl_line
	.4byte	0x190	@ DW_AT_type
	.4byte	.LLST4	@ DW_AT_location
	.byte	0	@ end of children of DIE 0xb06
	.uleb128 0x27	@ (DIE (0xb56) DW_TAG_subprogram)
	.byte	0x1	@ DW_AT_external
	.4byte	.LASF150	@ DW_AT_name: "test"
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0xe	@ DW_AT_decl_line
	.byte	0x1	@ DW_AT_prototyped
	.4byte	.LFB1	@ DW_AT_low_pc
	.4byte	.LFE1	@ DW_AT_high_pc
	.4byte	.LLST0	@ DW_AT_frame_base
	.4byte	0xb9e	@ DW_AT_sibling
	.uleb128 0x24	@ (DIE (0xb6f) DW_TAG_variable)
	.ascii "pc\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (test.c)
	.byte	0x10	@ DW_AT_decl_line
	.4byte	0x396	@ DW_AT_type
	.4byte	.LLST1	@ DW_AT_location
	.uleb128 0x28	@ (DIE (0xb7d) DW_TAG_inlined_subroutine)
	.4byte	0xb9e	@ DW_AT_abstract_origin
	.4byte	.LBB4	@ DW_AT_low_pc
	.4byte	.LBE4	@ DW_AT_high_pc
	.uleb128 0x29	@ (DIE (0xb8a) DW_TAG_lexical_block)
	.4byte	.LBB5	@ DW_AT_low_pc
	.4byte	.LBE5	@ DW_AT_high_pc
	.uleb128 0x2a	@ (DIE (0xb93) DW_TAG_variable)
	.4byte	0xbab	@ DW_AT_abstract_origin
	.byte	0x2	@ DW_AT_location
	.byte	0x91	@ DW_OP_fbreg
	.sleb128 -44
	.byte	0	@ end of children of DIE 0xb8a
	.byte	0	@ end of children of DIE 0xb7d
	.byte	0	@ end of children of DIE 0xb56
	.uleb128 0x2b	@ (DIE (0xb9e) DW_TAG_subprogram)
	.4byte	.LASF151	@ DW_AT_name: "gcc_current_pc"
	.byte	0x2	@ DW_AT_decl_file (../../include/bios2388.h)
	.byte	0x26	@ DW_AT_decl_line
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x57	@ DW_AT_type
	.byte	0x3	@ DW_AT_inline
	.uleb128 0x2c	@ (DIE (0xbab) DW_TAG_variable)
	.ascii "pc\0"	@ DW_AT_name
	.byte	0x2	@ DW_AT_decl_file (../../include/bios2388.h)
	.byte	0x27	@ DW_AT_decl_line
	.4byte	0x5e	@ DW_AT_type
	.byte	0	@ end of children of DIE 0xb9e
	.byte	0	@ end of children of DIE 0xb
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1	@ (abbrev code)
	.uleb128 0x11	@ (TAG: DW_TAG_compile_unit)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x25	@ (DW_AT_producer)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x13	@ (DW_AT_language)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x1b	@ (DW_AT_comp_dir)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x10	@ (DW_AT_stmt_list)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x43	@ (DW_AT_macro_info)
	.uleb128 0x6	@ (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x2	@ (abbrev code)
	.uleb128 0x24	@ (TAG: DW_TAG_base_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3e	@ (DW_AT_encoding)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.byte	0
	.byte	0
	.uleb128 0x3	@ (abbrev code)
	.uleb128 0x16	@ (TAG: DW_TAG_typedef)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x4	@ (abbrev code)
	.uleb128 0x35	@ (TAG: DW_TAG_volatile_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x5	@ (abbrev code)
	.uleb128 0x24	@ (TAG: DW_TAG_base_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3e	@ (DW_AT_encoding)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.byte	0
	.byte	0
	.uleb128 0x6	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x7	@ (abbrev code)
	.uleb128 0x5	@ (TAG: DW_TAG_formal_parameter)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x8	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x3c	@ (DW_AT_declaration)
	.uleb128 0xc	@ (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0x9	@ (abbrev code)
	.uleb128 0xf	@ (TAG: DW_TAG_pointer_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xa	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0	@ DW_children_no
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xb	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3c	@ (DW_AT_declaration)
	.uleb128 0xc	@ (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0xc	@ (abbrev code)
	.uleb128 0x16	@ (TAG: DW_TAG_typedef)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xd	@ (abbrev code)
	.uleb128 0x17	@ (TAG: DW_TAG_union_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xe	@ (abbrev code)
	.uleb128 0xd	@ (TAG: DW_TAG_member)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xf	@ (abbrev code)
	.uleb128 0x1	@ (TAG: DW_TAG_array_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x10	@ (abbrev code)
	.uleb128 0x21	@ (TAG: DW_TAG_subrange_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2f	@ (DW_AT_upper_bound)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x11	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x12	@ (abbrev code)
	.uleb128 0xd	@ (TAG: DW_TAG_member)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x38	@ (DW_AT_data_member_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x13	@ (abbrev code)
	.uleb128 0xf	@ (TAG: DW_TAG_pointer_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x14	@ (abbrev code)
	.uleb128 0x26	@ (TAG: DW_TAG_const_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x15	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x16	@ (abbrev code)
	.uleb128 0xd	@ (TAG: DW_TAG_member)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x38	@ (DW_AT_data_member_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x17	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x18	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0	@ DW_children_no
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0x19	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1a	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1b	@ (abbrev code)
	.uleb128 0xd	@ (TAG: DW_TAG_member)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x38	@ (DW_AT_data_member_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x1c	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1d	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1e	@ (abbrev code)
	.uleb128 0x17	@ (TAG: DW_TAG_union_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x1f	@ (abbrev code)
	.uleb128 0xd	@ (TAG: DW_TAG_member)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x20	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0x5	@ (DW_FORM_data2)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x3c	@ (DW_AT_declaration)
	.uleb128 0xc	@ (DW_FORM_flag)
	.byte	0
	.byte	0
	.uleb128 0x21	@ (abbrev code)
	.uleb128 0x21	@ (TAG: DW_TAG_subrange_type)
	.byte	0	@ DW_children_no
	.byte	0
	.byte	0
	.uleb128 0x22	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x2	@ (DW_AT_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x23	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x24	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2	@ (DW_AT_location)
	.uleb128 0x6	@ (DW_FORM_data4)
	.byte	0
	.byte	0
	.uleb128 0x25	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x1c	@ (DW_AT_const_value)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x26	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x1c	@ (DW_AT_const_value)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x27	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3f	@ (DW_AT_external)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x40	@ (DW_AT_frame_base)
	.uleb128 0x6	@ (DW_FORM_data4)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x28	@ (abbrev code)
	.uleb128 0x1d	@ (TAG: DW_TAG_inlined_subroutine)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x31	@ (DW_AT_abstract_origin)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.byte	0
	.byte	0
	.uleb128 0x29	@ (abbrev code)
	.uleb128 0xb	@ (TAG: DW_TAG_lexical_block)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x11	@ (DW_AT_low_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.uleb128 0x12	@ (DW_AT_high_pc)
	.uleb128 0x1	@ (DW_FORM_addr)
	.byte	0
	.byte	0
	.uleb128 0x2a	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x31	@ (DW_AT_abstract_origin)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2	@ (DW_AT_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x2b	@ (abbrev code)
	.uleb128 0x2e	@ (TAG: DW_TAG_subprogram)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x20	@ (DW_AT_inline)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x2c	@ (abbrev code)
	.uleb128 0x34	@ (TAG: DW_TAG_variable)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0x8	@ (DW_FORM_string)
	.uleb128 0x3a	@ (DW_AT_decl_file)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x3b	@ (DW_AT_decl_line)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LFB2-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LCFI4-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	.LCFI4-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LCFI5-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 24
	.4byte	.LCFI5-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LFE2-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	0	@ Location list terminator begin (*.LLST2)
	.4byte	0	@ Location list terminator end (*.LLST2)
.LLST3:
	.4byte	.LVL36-.Ltext0	@ Location list begin address (*.LLST3)
	.4byte	.LVL38-.Ltext0	@ Location list end address (*.LLST3)
	.2byte	0x1	@ Location expression size
	.byte	0x54	@ DW_OP_reg4
	.4byte	.LVL39-.Ltext0	@ Location list begin address (*.LLST3)
	.4byte	.LVL42-.Ltext0	@ Location list end address (*.LLST3)
	.2byte	0x1	@ Location expression size
	.byte	0x54	@ DW_OP_reg4
	.4byte	0	@ Location list terminator begin (*.LLST3)
	.4byte	0	@ Location list terminator end (*.LLST3)
.LLST4:
	.4byte	.LVL27-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LVL28-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL28-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LVL29-1-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x1	@ Location expression size
	.byte	0x51	@ DW_OP_reg1
	.4byte	.LVL29-1-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LVL36-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x1	@ Location expression size
	.byte	0x55	@ DW_OP_reg5
	.4byte	0	@ Location list terminator begin (*.LLST4)
	.4byte	0	@ Location list terminator end (*.LLST4)
.LLST0:
	.4byte	.LFB1-.Ltext0	@ Location list begin address (*.LLST0)
	.4byte	.LCFI0-.Ltext0	@ Location list end address (*.LLST0)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	.LCFI0-.Ltext0	@ Location list begin address (*.LLST0)
	.4byte	.LCFI1-.Ltext0	@ Location list end address (*.LLST0)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 36
	.4byte	.LCFI1-.Ltext0	@ Location list begin address (*.LLST0)
	.4byte	.LCFI2-.Ltext0	@ Location list end address (*.LLST0)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 48
	.4byte	.LCFI2-.Ltext0	@ Location list begin address (*.LLST0)
	.4byte	.LCFI3-.Ltext0	@ Location list end address (*.LLST0)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 36
	.4byte	.LCFI3-.Ltext0	@ Location list begin address (*.LLST0)
	.4byte	.LFE1-.Ltext0	@ Location list end address (*.LLST0)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	0	@ Location list terminator begin (*.LLST0)
	.4byte	0	@ Location list terminator end (*.LLST0)
.LLST1:
	.4byte	.LVL1-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL2-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL2-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL3-1-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x52	@ DW_OP_reg2
	.4byte	.LVL5-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL6-1-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL6-1-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL11-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x55	@ DW_OP_reg5
	.4byte	0	@ Location list terminator begin (*.LLST1)
	.4byte	0	@ Location list terminator end (*.LLST1)
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c	@ Length of Address Ranges Info
	.2byte	0x2	@ DWARF Version
	.4byte	.Ldebug_info0	@ Offset of Compilation Unit Info
	.byte	0x4	@ Size of Address
	.byte	0	@ Size of Segment Descriptor
	.2byte	0	@ Pad to 8 byte boundary
	.2byte	0
	.4byte	.Ltext0	@ Address
	.4byte	.Letext0-.Ltext0	@ Length
	.4byte	0
	.4byte	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo0:
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__STDC__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__STDC_VERSION__ 201112L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__STDC_UTF_16__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__STDC_UTF_32__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__STDC_HOSTED__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GNUC__ 6\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GNUC_MINOR__ 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GNUC_PATCHLEVEL__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__VERSION__ \"6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_RELAXED 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_SEQ_CST 5\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_ACQUIRE 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_RELEASE 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_ACQ_REL 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ATOMIC_CONSUME 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__OPTIMIZE__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FINITE_MATH_ONLY__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_INT__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_LONG__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_LONG_LONG__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_SHORT__ 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_FLOAT__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_DOUBLE__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_LONG_DOUBLE__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_SIZE_T__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__CHAR_BIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__BIGGEST_ALIGNMENT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_POINTER__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZE_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__PTRDIFF_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WCHAR_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WINT_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INTMAX_TYPE__ long long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__CHAR16_TYPE__ short unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__CHAR32_TYPE__ long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIG_ATOMIC_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT8_TYPE__ signed char\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT16_TYPE__ short int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT32_TYPE__ long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT64_TYPE__ long long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT8_TYPE__ unsigned char\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT16_TYPE__ short unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT32_TYPE__ long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT64_TYPE__ long long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST8_TYPE__ signed char\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST16_TYPE__ short int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST32_TYPE__ long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST64_TYPE__ long long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST32_TYPE__ long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST8_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST16_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST32_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST64_TYPE__ long long int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST8_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST16_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INTPTR_TYPE__ int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINTPTR_TYPE__ unsigned int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__has_include(STR) __has_include__(STR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GXX_ABI_VERSION 1010\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SCHAR_MAX__ 0x7f\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SHRT_MAX__ 0x7fff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LONG_MAX__ 0x7fffffffL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WCHAR_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WCHAR_MIN__ 0U\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WINT_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__WINT_MIN__ 0U\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__PTRDIFF_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZE_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INTMAX_C(c) c ## LL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINTMAX_C(c) c ## ULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT8_MAX__ 0x7f\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT16_MAX__ 0x7fff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT32_MAX__ 0x7fffffffL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT8_MAX__ 0xff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT16_MAX__ 0xffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT32_MAX__ 0xffffffffUL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT8_C(c) c\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT16_C(c) c\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST32_MAX__ 0x7fffffffL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT32_C(c) c ## L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT64_C(c) c ## LL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT8_C(c) c\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT16_C(c) c\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffUL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT32_C(c) c ## UL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT64_C(c) c ## ULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST8_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST16_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST8_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST16_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__INTPTR_MAX__ 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UINTPTR_MAX__ 0xffffffffU\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_IEC_559 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_IEC_559_COMPLEX 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_EVAL_METHOD__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC_EVAL_METHOD__ 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_RADIX__ 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MANT_DIG__ 24\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_DIG__ 6\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MIN_EXP__ (-125)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MAX_EXP__ 128\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MAX_10_EXP__ 38\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_DECIMAL_DIG__ 9\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MAX__ 3.4028234663852886e+38F\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_MIN__ 1.1754943508222875e-38F\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_EPSILON__ 1.1920928955078125e-7F\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_DENORM_MIN__ 1.4012984643248171e-45F\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_HAS_DENORM__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_HAS_INFINITY__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MANT_DIG__ 53\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_DIG__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MIN_EXP__ (-1021)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MAX_EXP__ 1024\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MAX_10_EXP__ 308\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_DECIMAL_DIG__ 17\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MAX__ ((double)1.7976931348623157e+308L)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_MIN__ ((double)2.2250738585072014e-308L)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_HAS_DENORM__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_HAS_INFINITY__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MANT_DIG__ 53\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_DIG__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MIN_EXP__ (-1021)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MIN_10_EXP__ (-307)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MAX_EXP__ 1024\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MAX_10_EXP__ 308\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DECIMAL_DIG__ 17\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MAX__ 1.7976931348623157e+308L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_MIN__ 2.2250738585072014e-308L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_EPSILON__ 2.2204460492503131e-16L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_HAS_DENORM__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_HAS_INFINITY__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_MANT_DIG__ 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_MIN_EXP__ (-94)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_MAX_EXP__ 97\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_MIN__ 1E-95DF\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_MANT_DIG__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_MIN_EXP__ (-382)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_MAX_EXP__ 385\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_MIN__ 1E-383DD\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_MANT_DIG__ 34\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_MAX_EXP__ 6145\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_MIN__ 1E-6143DL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SFRACT_FBIT__ 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SFRACT_MIN__ (-0.5HR-0.5HR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SFRACT_MAX__ 0X7FP-7HR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SFRACT_EPSILON__ 0x1P-7HR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USFRACT_FBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USFRACT_MIN__ 0.0UHR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USFRACT_MAX__ 0XFFP-8UHR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USFRACT_EPSILON__ 0x1P-8UHR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FRACT_FBIT__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FRACT_MIN__ (-0.5R-0.5R)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FRACT_MAX__ 0X7FFFP-15R\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__FRACT_EPSILON__ 0x1P-15R\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UFRACT_FBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UFRACT_MIN__ 0.0UR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UFRACT_MAX__ 0XFFFFP-16UR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UFRACT_EPSILON__ 0x1P-16UR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LFRACT_FBIT__ 31\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LFRACT_MIN__ (-0.5LR-0.5LR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LFRACT_MAX__ 0X7FFFFFFFP-31LR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LFRACT_EPSILON__ 0x1P-31LR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULFRACT_FBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULFRACT_MIN__ 0.0ULR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULFRACT_EPSILON__ 0x1P-32ULR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLFRACT_FBIT__ 63\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLFRACT_EPSILON__ 0x1P-63LLR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLFRACT_FBIT__ 64\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLFRACT_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLFRACT_MIN__ 0.0ULLR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLFRACT_EPSILON__ 0x1P-64ULLR\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SACCUM_FBIT__ 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SACCUM_IBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SACCUM_MAX__ 0X7FFFP-7HK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SACCUM_EPSILON__ 0x1P-7HK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USACCUM_FBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USACCUM_IBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USACCUM_MIN__ 0.0UHK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USACCUM_MAX__ 0XFFFFP-8UHK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USACCUM_EPSILON__ 0x1P-8UHK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ACCUM_FBIT__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ACCUM_IBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ACCUM_MIN__ (-0X1P15K-0X1P15K)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ACCUM_MAX__ 0X7FFFFFFFP-15K\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ACCUM_EPSILON__ 0x1P-15K\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UACCUM_FBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UACCUM_IBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UACCUM_MIN__ 0.0UK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UACCUM_MAX__ 0XFFFFFFFFP-16UK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UACCUM_EPSILON__ 0x1P-16UK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LACCUM_FBIT__ 31\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LACCUM_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LACCUM_EPSILON__ 0x1P-31LK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULACCUM_FBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULACCUM_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULACCUM_MIN__ 0.0ULK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULACCUM_EPSILON__ 0x1P-32ULK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLACCUM_FBIT__ 31\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLACCUM_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__LLACCUM_EPSILON__ 0x1P-31LLK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLACCUM_FBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLACCUM_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLACCUM_MIN__ 0.0ULLK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ULLACCUM_EPSILON__ 0x1P-32ULLK\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__QQ_FBIT__ 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__QQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__HQ_FBIT__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__HQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SQ_FBIT__ 31\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DQ_FBIT__ 63\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__TQ_FBIT__ 127\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__TQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UQQ_FBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UQQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UHQ_FBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UHQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USQ_FBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UDQ_FBIT__ 64\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UDQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UTQ_FBIT__ 128\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UTQ_IBIT__ 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__HA_FBIT__ 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__HA_IBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SA_FBIT__ 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SA_IBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DA_FBIT__ 31\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__DA_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__TA_FBIT__ 63\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__TA_IBIT__ 64\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UHA_FBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UHA_IBIT__ 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USA_FBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USA_IBIT__ 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UDA_FBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UDA_IBIT__ 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UTA_FBIT__ 64\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__UTA_IBIT__ 64\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__REGISTER_PREFIX__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USER_LABEL_PREFIX__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GNUC_STDC_INLINE__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__CHAR_UNSIGNED__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_WCHAR_T__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_WINT_T__ 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SIZEOF_PTRDIFF_T__ 4\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_DSP\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_QBIT\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_SAT\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_CRYPTO\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_UNALIGNED\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_QRDMX\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_32BIT_STATE 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_LDREX\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_CLZ\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_SIMD32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_SIZEOF_MINIMAL_ENUM 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_SIZEOF_WCHAR_T 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__arm__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ARCH 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ARCH_ISA_ARM 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__APCS_32__ 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__thumb__\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__thumb2__\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__THUMBEL__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ARCH_ISA_THUMB 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARMEL__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__SOFTFP__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__VFP_FP__ 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FP\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_FMA\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_NEON__\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_NEON\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_NEON_FP\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__THUMB_INTERWORK__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ARCH_4T__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_PCS 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_EABI__ 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ARCH_EXT_IDIV__\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_IDIV\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_ASM_SYNTAX_UNIFIED__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ARM_FEATURE_COPROC 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__ELF__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0	@ At line number 0
	.ascii "__USES_INITFINI__ 1\0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0	@ Included from line number 0
	.uleb128 0x1	@ file test.c
	.byte	0x3	@ Start new file
	.uleb128 0x5	@ Included from line number 5
	.uleb128 0x2	@ file ../../include/bios2388.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "_BIOS2388_H_ \0"	@ The macro
	.file 12 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\lib\\gcc\\arm-none-eabi\\6.3.1\\include\\stdint.h"
	.byte	0x3	@ Start new file
	.uleb128 0x4	@ Included from line number 4
	.uleb128 0xc	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stdint.h
	.file 13 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\stdint.h"
	.byte	0x3	@ Start new file
	.uleb128 0x9	@ Included from line number 9
	.uleb128 0xd	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\stdint.h
	.byte	0x1	@ Define macro
	.uleb128 0xa	@ At line number 10
	.ascii "_STDINT_H \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0xc	@ Included from line number 12
	.uleb128 0x3	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\_default_types.h
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"	@ The macro
	.file 14 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\features.h"
	.byte	0x3	@ Start new file
	.uleb128 0x8	@ Included from line number 8
	.uleb128 0xe	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\features.h
	.byte	0x1	@ Define macro
	.uleb128 0x16	@ At line number 22
	.ascii "_SYS_FEATURES_H \0"	@ The macro
	.file 15 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\_newlib_version.h"
	.byte	0x3	@ Start new file
	.uleb128 0x1c	@ Included from line number 28
	.uleb128 0xf	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\_newlib_version.h
	.byte	0x1	@ Define macro
	.uleb128 0x4	@ At line number 4
	.ascii "_NEWLIB_VERSION_H__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_NEWLIB_VERSION \"2.5.0\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7	@ At line number 7
	.ascii "__NEWLIB__ 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8	@ At line number 8
	.ascii "__NEWLIB_MINOR__ 5\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9	@ At line number 9
	.ascii "__NEWLIB_PATCHLEVEL__ 0\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x21	@ At line number 33
	.ascii "__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28	@ At line number 40
	.ascii "__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x80	@ At line number 128
	.ascii "_DEFAULT_SOURCE\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x81	@ At line number 129
	.ascii "_DEFAULT_SOURCE 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x85	@ At line number 133
	.ascii "_POSIX_SOURCE\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x86	@ At line number 134
	.ascii "_POSIX_SOURCE 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x87	@ At line number 135
	.ascii "_POSIX_C_SOURCE\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x88	@ At line number 136
	.ascii "_POSIX_C_SOURCE 200809L\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x9b	@ At line number 155
	.ascii "_ATFILE_SOURCE\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9c	@ At line number 156
	.ascii "_ATFILE_SOURCE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf2	@ At line number 242
	.ascii "__ATFILE_VISIBLE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf8	@ At line number 248
	.ascii "__BSD_VISIBLE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x100	@ At line number 256
	.ascii "__GNU_VISIBLE 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x105	@ At line number 261
	.ascii "__ISO_C_VISIBLE 2011\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x110	@ At line number 272
	.ascii "__LARGEFILE_VISIBLE 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x114	@ At line number 276
	.ascii "__MISC_VISIBLE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11a	@ At line number 282
	.ascii "__POSIX_VISIBLE 200809\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12a	@ At line number 298
	.ascii "__SVID_VISIBLE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13a	@ At line number 314
	.ascii "__XSI_VISIBLE 0\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xf	@ At line number 15
	.ascii "__EXP(x) __ ##x ##__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a	@ At line number 26
	.ascii "__have_longlong64 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21	@ At line number 33
	.ascii "__have_long32 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f	@ At line number 47
	.ascii "___int8_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d	@ At line number 61
	.ascii "___int16_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x53	@ At line number 83
	.ascii "___int32_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6d	@ At line number 109
	.ascii "___int64_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8c	@ At line number 140
	.ascii "___int_least8_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa6	@ At line number 166
	.ascii "___int_least16_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbc	@ At line number 188
	.ascii "___int_least32_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xce	@ At line number 206
	.ascii "___int_least64_t_defined 1\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xf4	@ At line number 244
	.ascii "__EXP\0"	@ The macro
	.byte	0x4	@ End file
	.file 16 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\_intsup.h"
	.byte	0x3	@ Start new file
	.uleb128 0xd	@ Included from line number 13
	.uleb128 0x10	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_intsup.h
	.byte	0x1	@ Define macro
	.uleb128 0xa	@ At line number 10
	.ascii "_SYS__INTSUP_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10	@ At line number 16
	.ascii "__STDINT_EXP(x) __ ##x ##__\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2a	@ At line number 42
	.ascii "signed\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2b	@ At line number 43
	.ascii "unsigned\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2c	@ At line number 44
	.ascii "char\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2d	@ At line number 45
	.ascii "short\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2e	@ At line number 46
	.ascii "int\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x2f	@ At line number 47
	.ascii "__int20\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x30	@ At line number 48
	.ascii "long\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31	@ At line number 49
	.ascii "signed +0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32	@ At line number 50
	.ascii "unsigned +0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33	@ At line number 51
	.ascii "char +0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34	@ At line number 52
	.ascii "short +1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35	@ At line number 53
	.ascii "__int20 +2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36	@ At line number 54
	.ascii "int +2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37	@ At line number 55
	.ascii "long +4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40	@ At line number 64
	.ascii "_INTPTR_EQ_INT \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x47	@ At line number 71
	.ascii "_INT32_EQ_LONG \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4f	@ At line number 79
	.ascii "__INT8 \"hh\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5a	@ At line number 90
	.ascii "__INT16 \"h\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x65	@ At line number 101
	.ascii "__INT32 \"l\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6e	@ At line number 110
	.ascii "__INT64 \"ll\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x75	@ At line number 117
	.ascii "__FAST8 \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7e	@ At line number 126
	.ascii "__FAST16 \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x85	@ At line number 133
	.ascii "__FAST32 \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x90	@ At line number 144
	.ascii "__FAST64 \"ll\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x94	@ At line number 148
	.ascii "__LEAST8 \"hh\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9f	@ At line number 159
	.ascii "__LEAST16 \"h\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xaa	@ At line number 170
	.ascii "__LEAST32 \"l\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb3	@ At line number 179
	.ascii "__LEAST64 \"ll\"\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xb5	@ At line number 181
	.ascii "signed\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xb6	@ At line number 182
	.ascii "unsigned\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xb7	@ At line number 183
	.ascii "char\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xb8	@ At line number 184
	.ascii "short\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xb9	@ At line number 185
	.ascii "int\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xba	@ At line number 186
	.ascii "long\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xbf	@ At line number 191
	.ascii "__int20\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0xe	@ Included from line number 14
	.uleb128 0x4	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_stdint.h
	.byte	0x1	@ Define macro
	.uleb128 0xa	@ At line number 10
	.ascii "_SYS__STDINT_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15	@ At line number 21
	.ascii "_INT8_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19	@ At line number 25
	.ascii "_UINT8_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b	@ At line number 27
	.ascii "__int8_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21	@ At line number 33
	.ascii "_INT16_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25	@ At line number 37
	.ascii "_UINT16_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27	@ At line number 39
	.ascii "__int16_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d	@ At line number 45
	.ascii "_INT32_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31	@ At line number 49
	.ascii "_UINT32_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33	@ At line number 51
	.ascii "__int32_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39	@ At line number 57
	.ascii "_INT64_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d	@ At line number 61
	.ascii "_UINT64_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "__int64_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x44	@ At line number 68
	.ascii "_INTMAX_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49	@ At line number 73
	.ascii "_UINTMAX_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4e	@ At line number 78
	.ascii "_INTPTR_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x53	@ At line number 83
	.ascii "_UINTPTR_T_DECLARED \0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x17	@ At line number 23
	.ascii "__int_least8_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d	@ At line number 29
	.ascii "__int_least16_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23	@ At line number 35
	.ascii "__int_least32_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29	@ At line number 41
	.ascii "__int_least64_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35	@ At line number 53
	.ascii "__int_fast8_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "__int_fast16_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49	@ At line number 73
	.ascii "__int_fast32_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x53	@ At line number 83
	.ascii "__int_fast64_t_defined 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x80	@ At line number 128
	.ascii "INTPTR_MIN (-__INTPTR_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x81	@ At line number 129
	.ascii "INTPTR_MAX (__INTPTR_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x82	@ At line number 130
	.ascii "UINTPTR_MAX (__UINTPTR_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x98	@ At line number 152
	.ascii "INT8_MIN (-__INT8_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x99	@ At line number 153
	.ascii "INT8_MAX (__INT8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9a	@ At line number 154
	.ascii "UINT8_MAX (__UINT8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa2	@ At line number 162
	.ascii "INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa3	@ At line number 163
	.ascii "INT_LEAST8_MAX (__INT_LEAST8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa4	@ At line number 164
	.ascii "UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xae	@ At line number 174
	.ascii "INT16_MIN (-__INT16_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xaf	@ At line number 175
	.ascii "INT16_MAX (__INT16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb0	@ At line number 176
	.ascii "UINT16_MAX (__UINT16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb8	@ At line number 184
	.ascii "INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb9	@ At line number 185
	.ascii "INT_LEAST16_MAX (__INT_LEAST16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xba	@ At line number 186
	.ascii "UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc4	@ At line number 196
	.ascii "INT32_MIN (-__INT32_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc5	@ At line number 197
	.ascii "INT32_MAX (__INT32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc6	@ At line number 198
	.ascii "UINT32_MAX (__UINT32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd4	@ At line number 212
	.ascii "INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd5	@ At line number 213
	.ascii "INT_LEAST32_MAX (__INT_LEAST32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd6	@ At line number 214
	.ascii "UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe6	@ At line number 230
	.ascii "INT64_MIN (-__INT64_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe7	@ At line number 231
	.ascii "INT64_MAX (__INT64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe8	@ At line number 232
	.ascii "UINT64_MAX (__UINT64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf6	@ At line number 246
	.ascii "INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf7	@ At line number 247
	.ascii "INT_LEAST64_MAX (__INT_LEAST64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf8	@ At line number 248
	.ascii "UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x106	@ At line number 262
	.ascii "INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x107	@ At line number 263
	.ascii "INT_FAST8_MAX (__INT_FAST8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x108	@ At line number 264
	.ascii "UINT_FAST8_MAX (__UINT_FAST8_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x116	@ At line number 278
	.ascii "INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x117	@ At line number 279
	.ascii "INT_FAST16_MAX (__INT_FAST16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x118	@ At line number 280
	.ascii "UINT_FAST16_MAX (__UINT_FAST16_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x126	@ At line number 294
	.ascii "INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x127	@ At line number 295
	.ascii "INT_FAST32_MAX (__INT_FAST32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x128	@ At line number 296
	.ascii "UINT_FAST32_MAX (__UINT_FAST32_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x136	@ At line number 310
	.ascii "INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x137	@ At line number 311
	.ascii "INT_FAST64_MAX (__INT_FAST64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x138	@ At line number 312
	.ascii "UINT_FAST64_MAX (__UINT_FAST64_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x146	@ At line number 326
	.ascii "INTMAX_MAX (__INTMAX_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x147	@ At line number 327
	.ascii "INTMAX_MIN (-INTMAX_MAX - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14f	@ At line number 335
	.ascii "UINTMAX_MAX (__UINTMAX_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x157	@ At line number 343
	.ascii "SIZE_MAX (__SIZE_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15d	@ At line number 349
	.ascii "SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15e	@ At line number 350
	.ascii "SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x162	@ At line number 354
	.ascii "PTRDIFF_MAX (__PTRDIFF_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x166	@ At line number 358
	.ascii "PTRDIFF_MIN (-PTRDIFF_MAX - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16b	@ At line number 363
	.ascii "WCHAR_MIN (__WCHAR_MIN__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x176	@ At line number 374
	.ascii "WCHAR_MAX (__WCHAR_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x180	@ At line number 384
	.ascii "WINT_MAX (__WINT_MAX__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x185	@ At line number 389
	.ascii "WINT_MIN (__WINT_MIN__)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18c	@ At line number 396
	.ascii "INT8_C(x) __INT8_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18d	@ At line number 397
	.ascii "UINT8_C(x) __UINT8_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x198	@ At line number 408
	.ascii "INT16_C(x) __INT16_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x199	@ At line number 409
	.ascii "UINT16_C(x) __UINT16_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a4	@ At line number 420
	.ascii "INT32_C(x) __INT32_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a5	@ At line number 421
	.ascii "UINT32_C(x) __UINT32_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b1	@ At line number 433
	.ascii "INT64_C(x) __INT64_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b2	@ At line number 434
	.ascii "UINT64_C(x) __UINT64_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c1	@ At line number 449
	.ascii "INTMAX_C(x) __INTMAX_C(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c2	@ At line number 450
	.ascii "UINTMAX_C(x) __UINTMAX_C(x)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xd	@ At line number 13
	.ascii "_GCC_WRAP_STDINT_H \0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x12	@ At line number 18
	.ascii "exit(x) sys_exit(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15	@ At line number 21
	.ascii "d2sf(b,d,w,p) _dbl2str(b, d, w, p, 'f')\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16	@ At line number 22
	.ascii "d2se(b,d,w,p) _dbl2str(b, d, w, p, 'e')\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17	@ At line number 23
	.ascii "d2sg(b,d,w,p) _dbl2str(b, d, w, p, 'g')\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0x6	@ Included from line number 6
	.uleb128 0x5	@ file ../../include/xprintf.h
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_STRFUNC \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc	@ At line number 12
	.ascii "_USE_XFUNC_OUT 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd	@ At line number 13
	.ascii "_CR_CRLF 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf	@ At line number 15
	.ascii "_USE_XFUNC_IN 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10	@ At line number 16
	.ascii "_LINE_ECHO 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14	@ At line number 20
	.ascii "xdev_out(func) xfunc_out = (void(*)(unsigned char))(func)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d	@ At line number 29
	.ascii "DW_CHAR sizeof(char)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e	@ At line number 30
	.ascii "DW_SHORT sizeof(short)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f	@ At line number 31
	.ascii "DW_LONG sizeof(long)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24	@ At line number 36
	.ascii "xdev_in(func) xfunc_in = (unsigned char(*)(void))(func)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0x7	@ Included from line number 7
	.uleb128 0xb	@ file ../../include/malloc2388.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "_MALLOC2388_H_ \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0x56	@ Included from line number 86
	.uleb128 0xa	@ file ../../include/tinymalloc.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "_TINYMALLOC_H_ \0"	@ The macro
	.file 17 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\string.h"
	.byte	0x3	@ Start new file
	.uleb128 0x4	@ Included from line number 4
	.uleb128 0x11	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\string.h
	.byte	0x1	@ Define macro
	.uleb128 0x8	@ At line number 8
	.ascii "_STRING_H_ \0"	@ The macro
	.file 18 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\_ansi.h"
	.byte	0x3	@ Start new file
	.uleb128 0xa	@ Included from line number 10
	.uleb128 0x12	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\_ansi.h
	.byte	0x1	@ Define macro
	.uleb128 0xd	@ At line number 13
	.ascii "_ANSIDECL_H_ \0"	@ The macro
	.file 19 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\newlib.h"
	.byte	0x3	@ Start new file
	.uleb128 0xf	@ Included from line number 15
	.uleb128 0x13	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\newlib.h
	.byte	0x1	@ Define macro
	.uleb128 0x8	@ At line number 8
	.ascii "__NEWLIB_H__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15	@ At line number 21
	.ascii "_WANT_IO_LONG_LONG 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18	@ At line number 24
	.ascii "_WANT_REGISTER_FINI 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28	@ At line number 40
	.ascii "_MB_LEN_MAX 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32	@ At line number 50
	.ascii "HAVE_INITFINI_ARRAY 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36	@ At line number 54
	.ascii "_ATEXIT_DYNAMIC_ALLOC 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39	@ At line number 57
	.ascii "_HAVE_LONG_DOUBLE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c	@ At line number 60
	.ascii "_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "_LDBL_EQ_DBL 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42	@ At line number 66
	.ascii "_FVWRITE_IN_STREAMIO 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x45	@ At line number 69
	.ascii "_FSEEK_OPTIMIZATION 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48	@ At line number 72
	.ascii "_WIDE_ORIENT 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b	@ At line number 75
	.ascii "_UNBUF_STREAM_OPT 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x57	@ At line number 87
	.ascii "_RETARGETABLE_LOCKING 1\0"	@ The macro
	.byte	0x4	@ End file
	.file 20 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\config.h"
	.byte	0x3	@ Start new file
	.uleb128 0x10	@ Included from line number 16
	.uleb128 0x14	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\config.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "__SYS_CONFIG_H__ \0"	@ The macro
	.file 21 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\machine\\ieeefp.h"
	.byte	0x3	@ Start new file
	.uleb128 0x4	@ Included from line number 4
	.uleb128 0x15	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\ieeefp.h
	.byte	0x1	@ Define macro
	.uleb128 0x3c	@ At line number 60
	.ascii "__IEEE_LITTLE_ENDIAN \0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xdb	@ At line number 219
	.ascii "_POINTER_INT long\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xe1	@ At line number 225
	.ascii "__RAND_MAX\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe5	@ At line number 229
	.ascii "__RAND_MAX 0x7fffffff\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf4	@ At line number 244
	.ascii "__EXPORT \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf8	@ At line number 248
	.ascii "__IMPORT \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xff	@ At line number 255
	.ascii "_READ_WRITE_RETURN_TYPE int\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x105	@ At line number 261
	.ascii "_READ_WRITE_BUFSIZE_TYPE int\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x17	@ At line number 23
	.ascii "_HAVE_STDC \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c	@ At line number 44
	.ascii "_BEGIN_STD_C \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d	@ At line number 45
	.ascii "_END_STD_C \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e	@ At line number 46
	.ascii "_NOTHROW \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32	@ At line number 50
	.ascii "_PTR void *\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33	@ At line number 51
	.ascii "_AND ,\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34	@ At line number 52
	.ascii "_NOARGS void\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35	@ At line number 53
	.ascii "_CONST const\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36	@ At line number 54
	.ascii "_VOLATILE volatile\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37	@ At line number 55
	.ascii "_SIGNED signed\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38	@ At line number 56
	.ascii "_DOTS , ...\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39	@ At line number 57
	.ascii "_VOID void\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40	@ At line number 64
	.ascii "_EXFUN_NOTHROW(name,proto) name proto _NOTHROW\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41	@ At line number 65
	.ascii "_EXFUN(name,proto) name proto\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42	@ At line number 66
	.ascii "_EXPARM(name,proto) (* name) proto\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x43	@ At line number 67
	.ascii "_EXFNPTR(name,proto) (* name) proto\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x45	@ At line number 69
	.ascii "_DEFUN(name,arglist,args) name(args)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x46	@ At line number 70
	.ascii "_DEFUN_VOID(name) name(_NOARGS)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x47	@ At line number 71
	.ascii "_CAST_VOID (void)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49	@ At line number 73
	.ascii "_LONG_DOUBLE long double\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4c	@ At line number 76
	.ascii "_PARAMS(paramlist) paramlist\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x65	@ At line number 101
	.ascii "_ATTRIBUTE(attrs) __attribute__ (attrs)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7f	@ At line number 127
	.ascii "_ELIDABLE_INLINE static __inline__\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x83	@ At line number 131
	.ascii "_NOINLINE __attribute__ ((__noinline__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x84	@ At line number 132
	.ascii "_NOINLINE_STATIC _NOINLINE static\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0xb	@ Included from line number 11
	.uleb128 0x9	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\reent.h
	.byte	0x1	@ Define macro
	.uleb128 0xb	@ At line number 11
	.ascii "_SYS_REENT_H_ \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0xd	@ Included from line number 13
	.uleb128 0x12	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\_ansi.h
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0xe	@ Included from line number 14
	.uleb128 0x8	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stddef.h
	.byte	0x1	@ Define macro
	.uleb128 0x27	@ At line number 39
	.ascii "_STDDEF_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28	@ At line number 40
	.ascii "_STDDEF_H_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a	@ At line number 42
	.ascii "_ANSI_STDDEF_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x89	@ At line number 137
	.ascii "_PTRDIFF_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8a	@ At line number 138
	.ascii "_T_PTRDIFF_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8b	@ At line number 139
	.ascii "_T_PTRDIFF \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8c	@ At line number 140
	.ascii "__PTRDIFF_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8d	@ At line number 141
	.ascii "_PTRDIFF_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8e	@ At line number 142
	.ascii "_BSD_PTRDIFF_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8f	@ At line number 143
	.ascii "___int_ptrdiff_t_h \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x90	@ At line number 144
	.ascii "_GCC_PTRDIFF_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x91	@ At line number 145
	.ascii "_PTRDIFF_T_DECLARED \0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xa1	@ At line number 161
	.ascii "__need_ptrdiff_t\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbb	@ At line number 187
	.ascii "__size_t__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbc	@ At line number 188
	.ascii "__SIZE_T__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbd	@ At line number 189
	.ascii "_SIZE_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbe	@ At line number 190
	.ascii "_SYS_SIZE_T_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbf	@ At line number 191
	.ascii "_T_SIZE_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc0	@ At line number 192
	.ascii "_T_SIZE \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc1	@ At line number 193
	.ascii "__SIZE_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc2	@ At line number 194
	.ascii "_SIZE_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc3	@ At line number 195
	.ascii "_BSD_SIZE_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc4	@ At line number 196
	.ascii "_SIZE_T_DEFINED_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc5	@ At line number 197
	.ascii "_SIZE_T_DEFINED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc6	@ At line number 198
	.ascii "_BSD_SIZE_T_DEFINED_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc7	@ At line number 199
	.ascii "_SIZE_T_DECLARED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc8	@ At line number 200
	.ascii "___int_size_t_h \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc9	@ At line number 201
	.ascii "_GCC_SIZE_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xca	@ At line number 202
	.ascii "_SIZET_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd2	@ At line number 210
	.ascii "__size_t \0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xee	@ At line number 238
	.ascii "__need_size_t\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10b	@ At line number 267
	.ascii "__wchar_t__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10c	@ At line number 268
	.ascii "__WCHAR_T__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10d	@ At line number 269
	.ascii "_WCHAR_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10e	@ At line number 270
	.ascii "_T_WCHAR_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10f	@ At line number 271
	.ascii "_T_WCHAR \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x110	@ At line number 272
	.ascii "__WCHAR_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x111	@ At line number 273
	.ascii "_WCHAR_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x112	@ At line number 274
	.ascii "_BSD_WCHAR_T_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x113	@ At line number 275
	.ascii "_WCHAR_T_DEFINED_ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x114	@ At line number 276
	.ascii "_WCHAR_T_DEFINED \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x115	@ At line number 277
	.ascii "_WCHAR_T_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x116	@ At line number 278
	.ascii "___int_wchar_t_h \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x117	@ At line number 279
	.ascii "__INT_WCHAR_T_H \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x118	@ At line number 280
	.ascii "_GCC_WCHAR_T \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x119	@ At line number 281
	.ascii "_WCHAR_T_DECLARED \0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x126	@ At line number 294
	.ascii "_BSD_WCHAR_T_\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x15b	@ At line number 347
	.ascii "__need_wchar_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x191	@ At line number 401
	.ascii "NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x196	@ At line number 406
	.ascii "NULL ((void *)0)\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x19c	@ At line number 412
	.ascii "__need_NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a1	@ At line number 417
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a6	@ At line number 422
	.ascii "_GCC_MAX_ALIGN_T \0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0xf	@ Included from line number 15
	.uleb128 0x7	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_types.h
	.byte	0x1	@ Define macro
	.uleb128 0x14	@ At line number 20
	.ascii "_SYS__TYPES_H \0"	@ The macro
	.file 22 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\machine\\_types.h"
	.byte	0x3	@ Start new file
	.uleb128 0x18	@ Included from line number 24
	.uleb128 0x16	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\_types.h
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_MACHINE__TYPES_H \0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0x19	@ Included from line number 25
	.uleb128 0x6	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\lock.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "__SYS_LOCK_H__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23	@ At line number 35
	.ascii "_LOCK_RECURSIVE_T _LOCK_T\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25	@ At line number 37
	.ascii "__LOCK_INIT(class,lock) extern struct __lock __lock_ ## lock; class _LOCK_T lock = &__lock_ ## lock\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27	@ At line number 39
	.ascii "__LOCK_INIT_RECURSIVE(class,lock) __LOCK_INIT(class,lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a	@ At line number 42
	.ascii "__lock_init(lock) __retarget_lock_init(&lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c	@ At line number 44
	.ascii "__lock_init_recursive(lock) __retarget_lock_init_recursive(&lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e	@ At line number 46
	.ascii "__lock_close(lock) __retarget_lock_close(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30	@ At line number 48
	.ascii "__lock_close_recursive(lock) __retarget_lock_close_recursive(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32	@ At line number 50
	.ascii "__lock_acquire(lock) __retarget_lock_acquire(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34	@ At line number 52
	.ascii "__lock_acquire_recursive(lock) __retarget_lock_acquire_recursive(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36	@ At line number 54
	.ascii "__lock_try_acquire(lock) __retarget_lock_try_acquire(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38	@ At line number 56
	.ascii "__lock_try_acquire_recursive(lock) __retarget_lock_try_acquire_recursive(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b	@ At line number 59
	.ascii "__lock_release(lock) __retarget_lock_release(lock)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d	@ At line number 61
	.ascii "__lock_release_recursive(lock) __retarget_lock_release_recursive(lock)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x2	@ Undefine macro
	.uleb128 0x7d	@ At line number 125
	.ascii "__size_t\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x90	@ At line number 144
	.ascii "unsigned signed\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x92	@ At line number 146
	.ascii "unsigned\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9e	@ At line number 158
	.ascii "__need_wint_t \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0x9f	@ Included from line number 159
	.uleb128 0x8	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stddef.h
	.byte	0x2	@ Undefine macro
	.uleb128 0xa1	@ At line number 161
	.ascii "__need_ptrdiff_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xee	@ At line number 238
	.ascii "__need_size_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x15b	@ At line number 347
	.ascii "__need_wchar_t\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x160	@ At line number 352
	.ascii "_WINT_T \0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x167	@ At line number 359
	.ascii "__need_wint_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x191	@ At line number 401
	.ascii "NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x196	@ At line number 406
	.ascii "NULL ((void *)0)\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x19c	@ At line number 412
	.ascii "__need_NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a1	@ At line number 417
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xb7	@ At line number 183
	.ascii "_CLOCK_T_ unsigned long\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xba	@ At line number 186
	.ascii "_TIME_T_ long\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbd	@ At line number 189
	.ascii "_CLOCKID_T_ unsigned long\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc0	@ At line number 192
	.ascii "_TIMER_T_ unsigned long\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x11	@ At line number 17
	.ascii "_NULL 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15	@ At line number 21
	.ascii "__Long long\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48	@ At line number 72
	.ascii "_ATEXIT_SIZE 32\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x64	@ At line number 100
	.ascii "_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6a	@ At line number 106
	.ascii "_REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb2	@ At line number 178
	.ascii "_REENT_SMALL_CHECK_INIT(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x138	@ At line number 312
	.ascii "_RAND48_SEED_0 (0x330e)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x139	@ At line number 313
	.ascii "_RAND48_SEED_1 (0xabcd)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13a	@ At line number 314
	.ascii "_RAND48_SEED_2 (0x1234)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13b	@ At line number 315
	.ascii "_RAND48_MULT_0 (0xe66d)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13c	@ At line number 316
	.ascii "_RAND48_MULT_1 (0xdeec)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13d	@ At line number 317
	.ascii "_RAND48_MULT_2 (0x0005)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13e	@ At line number 318
	.ascii "_RAND48_ADD (0x000b)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14a	@ At line number 330
	.ascii "_REENT_EMERGENCY_SIZE 25\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14b	@ At line number 331
	.ascii "_REENT_ASCTIME_SIZE 26\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14c	@ At line number 332
	.ascii "_REENT_SIGNAL_SIZE 24\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x274	@ At line number 628
	.ascii "_N_LISTS 30\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28a	@ At line number 650
	.ascii "_REENT_INIT(var) { 0, &(var).__sf[0], &(var).__sf[1], &(var).__sf[2], 0, \"\", 0, _NULL, 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { 0, _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ba	@ At line number 698
	.ascii "_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = &(var)->__sf[0]; (var)->_stdout = &(var)->__sf[1]; (var)->_stderr = &(var)->__sf[2]; (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c8	@ At line number 712
	.ascii "_REENT_CHECK_RAND48(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c9	@ At line number 713
	.ascii "_REENT_CHECK_MP(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ca	@ At line number 714
	.ascii "_REENT_CHECK_TM(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cb	@ At line number 715
	.ascii "_REENT_CHECK_ASCTIME_BUF(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cc	@ At line number 716
	.ascii "_REENT_CHECK_EMERGENCY(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cd	@ At line number 717
	.ascii "_REENT_CHECK_MISC(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ce	@ At line number 718
	.ascii "_REENT_CHECK_SIGNAL_BUF(ptr) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d0	@ At line number 720
	.ascii "_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d1	@ At line number 721
	.ascii "_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d2	@ At line number 722
	.ascii "_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d3	@ At line number 723
	.ascii "_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d4	@ At line number 724
	.ascii "_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d5	@ At line number 725
	.ascii "_REENT_MP_RESULT(ptr) ((ptr)->_result)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d6	@ At line number 726
	.ascii "_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d7	@ At line number 727
	.ascii "_REENT_MP_P5S(ptr) ((ptr)->_p5s)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d8	@ At line number 728
	.ascii "_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d9	@ At line number 729
	.ascii "_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2da	@ At line number 730
	.ascii "_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2db	@ At line number 731
	.ascii "_REENT_EMERGENCY(ptr) ((ptr)->_emergency)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2dc	@ At line number 732
	.ascii "_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2dd	@ At line number 733
	.ascii "_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2de	@ At line number 734
	.ascii "_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2df	@ At line number 735
	.ascii "_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e0	@ At line number 736
	.ascii "_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e1	@ At line number 737
	.ascii "_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e2	@ At line number 738
	.ascii "_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e3	@ At line number 739
	.ascii "_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e4	@ At line number 740
	.ascii "_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e5	@ At line number 741
	.ascii "_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e6	@ At line number 742
	.ascii "_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e7	@ At line number 743
	.ascii "_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2eb	@ At line number 747
	.ascii "_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f3	@ At line number 755
	.ascii "_Kmax (sizeof (size_t) << 3)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2fb	@ At line number 763
	.ascii "__ATTRIBUTE_IMPURE_PTR__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30b	@ At line number 779
	.ascii "_REENT _impure_ptr\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30e	@ At line number 782
	.ascii "_GLOBAL_REENT _global_impure_ptr\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x314	@ At line number 788
	.ascii "_GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)\0"	@ The macro
	.byte	0x4	@ End file
	.file 23 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\cdefs.h"
	.byte	0x3	@ Start new file
	.uleb128 0xc	@ Included from line number 12
	.uleb128 0x17	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\cdefs.h
	.byte	0x1	@ Define macro
	.uleb128 0x29	@ At line number 41
	.ascii "_SYS_CDEFS_H_ \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0x2d	@ Included from line number 45
	.uleb128 0x8	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stddef.h
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x2f	@ At line number 47
	.ascii "__PMT(args) args\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30	@ At line number 48
	.ascii "__DOTS , ...\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31	@ At line number 49
	.ascii "__THROW \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34	@ At line number 52
	.ascii "__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37	@ At line number 55
	.ascii "__ptr_t void *\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38	@ At line number 56
	.ascii "__long_double_t long double\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a	@ At line number 58
	.ascii "__attribute_malloc__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b	@ At line number 59
	.ascii "__attribute_pure__ \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c	@ At line number 60
	.ascii "__attribute_format_strfmon__(a,b) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d	@ At line number 61
	.ascii "__flexarr [0]\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40	@ At line number 64
	.ascii "__bounded \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41	@ At line number 65
	.ascii "__unbounded \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42	@ At line number 66
	.ascii "__ptrvalue \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4c	@ At line number 76
	.ascii "__has_extension __has_feature\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4f	@ At line number 79
	.ascii "__has_feature(x) 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x55	@ At line number 85
	.ascii "__has_builtin(x) 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5c	@ At line number 92
	.ascii "__BEGIN_DECLS \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5d	@ At line number 93
	.ascii "__END_DECLS \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x69	@ At line number 105
	.ascii "__GNUCLIKE_ASM 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6a	@ At line number 106
	.ascii "__GNUCLIKE_MATH_BUILTIN_CONSTANTS \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6e	@ At line number 110
	.ascii "__GNUCLIKE___TYPEOF 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6f	@ At line number 111
	.ascii "__GNUCLIKE___OFFSETOF 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x70	@ At line number 112
	.ascii "__GNUCLIKE___SECTION 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x73	@ At line number 115
	.ascii "__GNUCLIKE_CTOR_SECTION_HANDLING 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x76	@ At line number 118
	.ascii "__GNUCLIKE_BUILTIN_CONSTANT_P 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7d	@ At line number 125
	.ascii "__GNUCLIKE_BUILTIN_VARARGS 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7e	@ At line number 126
	.ascii "__GNUCLIKE_BUILTIN_STDARG 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7f	@ At line number 127
	.ascii "__GNUCLIKE_BUILTIN_VAALIST 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x83	@ At line number 131
	.ascii "__GNUC_VA_LIST_COMPATIBILITY 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8a	@ At line number 138
	.ascii "__compiler_membar() __asm __volatile(\" \" : : : \"memory\")\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8e	@ At line number 142
	.ascii "__GNUCLIKE_BUILTIN_NEXT_ARG 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8f	@ At line number 143
	.ascii "__GNUCLIKE_MATH_BUILTIN_RELOPS \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x92	@ At line number 146
	.ascii "__GNUCLIKE_BUILTIN_MEMCPY 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x95	@ At line number 149
	.ascii "__CC_SUPPORTS_INLINE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x96	@ At line number 150
	.ascii "__CC_SUPPORTS___INLINE 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x97	@ At line number 151
	.ascii "__CC_SUPPORTS___INLINE__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x99	@ At line number 153
	.ascii "__CC_SUPPORTS___FUNC__ 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9a	@ At line number 154
	.ascii "__CC_SUPPORTS_WARNING 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9c	@ At line number 156
	.ascii "__CC_SUPPORTS_VARADIC_XXX 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9e	@ At line number 158
	.ascii "__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xaf	@ At line number 175
	.ascii "__P(protos) protos\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb0	@ At line number 176
	.ascii "__CONCAT1(x,y) x ## y\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb1	@ At line number 177
	.ascii "__CONCAT(x,y) __CONCAT1(x,y)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb2	@ At line number 178
	.ascii "__STRING(x) #x\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb3	@ At line number 179
	.ascii "__XSTRING(x) __STRING(x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb5	@ At line number 181
	.ascii "__const const\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb6	@ At line number 182
	.ascii "__signed signed\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb7	@ At line number 183
	.ascii "__volatile volatile\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xef	@ At line number 239
	.ascii "__weak_symbol __attribute__((__weak__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfc	@ At line number 252
	.ascii "__dead2 __attribute__((__noreturn__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfd	@ At line number 253
	.ascii "__pure2 __attribute__((__const__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfe	@ At line number 254
	.ascii "__unused __attribute__((__unused__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xff	@ At line number 255
	.ascii "__used __attribute__((__used__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x100	@ At line number 256
	.ascii "__packed __attribute__((__packed__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x101	@ At line number 257
	.ascii "__aligned(x) __attribute__((__aligned__(x)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x102	@ At line number 258
	.ascii "__section(x) __attribute__((__section__(x)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x105	@ At line number 261
	.ascii "__alloc_size(x) __attribute__((__alloc_size__(x)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10a	@ At line number 266
	.ascii "__alloc_align(x) __attribute__((__alloc_align__(x)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x164	@ At line number 356
	.ascii "__generic(expr,t,yes,no) _Generic(expr, t: yes, default: no)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x176	@ At line number 374
	.ascii "__min_size(x) static (x)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17c	@ At line number 380
	.ascii "__malloc_like __attribute__((__malloc__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17d	@ At line number 381
	.ascii "__pure __attribute__((__pure__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x184	@ At line number 388
	.ascii "__always_inline __attribute__((__always_inline__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18a	@ At line number 394
	.ascii "__noinline __attribute__ ((__noinline__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x190	@ At line number 400
	.ascii "__nonnull(x) __attribute__((__nonnull__(x)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x191	@ At line number 401
	.ascii "__nonnull_all __attribute__((__nonnull__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x198	@ At line number 408
	.ascii "__fastcall __attribute__((__fastcall__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x199	@ At line number 409
	.ascii "__result_use_check __attribute__((__warn_unused_result__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a0	@ At line number 416
	.ascii "__returns_twice __attribute__((__returns_twice__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a6	@ At line number 422
	.ascii "__unreachable() __builtin_unreachable()\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ba	@ At line number 442
	.ascii "__restrict restrict\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1db	@ At line number 475
	.ascii "__predict_true(exp) __builtin_expect((exp), 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1dc	@ At line number 476
	.ascii "__predict_false(exp) __builtin_expect((exp), 0)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e3	@ At line number 483
	.ascii "__null_sentinel __attribute__((__sentinel__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e4	@ At line number 484
	.ascii "__exported __attribute__((__visibility__(\"default\")))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e7	@ At line number 487
	.ascii "__hidden __attribute__((__visibility__(\"hidden\")))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f1	@ At line number 497
	.ascii "__offsetof(type,field) offsetof(type, field)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f2	@ At line number 498
	.ascii "__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fc	@ At line number 508
	.ascii "__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x212	@ At line number 530
	.ascii "__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x214	@ At line number 532
	.ascii "__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x216	@ At line number 534
	.ascii "__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x217	@ At line number 535
	.ascii "__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x219	@ At line number 537
	.ascii "__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x223	@ At line number 547
	.ascii "__printf0like(fmtarg,firstvararg) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x228	@ At line number 552
	.ascii "__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22d	@ At line number 557
	.ascii "__weak_reference(sym,alias) __asm__(\".weak \" #alias); __asm__(\".equ \" #alias \", \" #sym)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x230	@ At line number 560
	.ascii "__warn_references(sym,msg) __asm__(\".section .gnu.warning.\" #sym); __asm__(\".asciz \\\"\" msg \"\\\"\"); __asm__(\".previous\")\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x234	@ At line number 564
	.ascii "__sym_compat(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@\" #verid)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x236	@ At line number 566
	.ascii "__sym_default(sym,impl,verid) __asm__(\".symver \" #impl \", \" #sym \"@@\" #verid)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x259	@ At line number 601
	.ascii "__FBSDID(s) struct __hack\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25d	@ At line number 605
	.ascii "__RCSID(s) struct __hack\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x261	@ At line number 609
	.ascii "__RCSID_SOURCE(s) struct __hack\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x265	@ At line number 613
	.ascii "__SCCSID(s) struct __hack\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x269	@ At line number 617
	.ascii "__COPYRIGHT(s) struct __hack\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26d	@ At line number 621
	.ascii "__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x271	@ At line number 625
	.ascii "__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x275	@ At line number 629
	.ascii "__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27c	@ At line number 636
	.ascii "_Nonnull \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27d	@ At line number 637
	.ascii "_Nullable \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27e	@ At line number 638
	.ascii "_Null_unspecified \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27f	@ At line number 639
	.ascii "__NULLABILITY_PRAGMA_PUSH \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x280	@ At line number 640
	.ascii "__NULLABILITY_PRAGMA_POP \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x295	@ At line number 661
	.ascii "__arg_type_tag(arg_kind,arg_idx,type_tag_idx) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x296	@ At line number 662
	.ascii "__datatype_type_tag(kind,type) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a8	@ At line number 680
	.ascii "__lock_annotate(x) \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ac	@ At line number 684
	.ascii "__lockable __lock_annotate(lockable)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2af	@ At line number 687
	.ascii "__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b1	@ At line number 689
	.ascii "__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b5	@ At line number 693
	.ascii "__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b7	@ At line number 695
	.ascii "__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2bb	@ At line number 699
	.ascii "__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2be	@ At line number 702
	.ascii "__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c0	@ At line number 704
	.ascii "__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c4	@ At line number 708
	.ascii "__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c6	@ At line number 710
	.ascii "__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c8	@ At line number 712
	.ascii "__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cc	@ At line number 716
	.ascii "__no_lock_analysis __lock_annotate(no_thread_safety_analysis)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cf	@ At line number 719
	.ascii "__guarded_by(x) __lock_annotate(guarded_by(x))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d0	@ At line number 720
	.ascii "__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xf	@ At line number 15
	.ascii "__need_size_t \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10	@ At line number 16
	.ascii "__need_NULL \0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0x11	@ Included from line number 17
	.uleb128 0x8	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stddef.h
	.byte	0x2	@ Undefine macro
	.uleb128 0xa1	@ At line number 161
	.ascii "__need_ptrdiff_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0xee	@ At line number 238
	.ascii "__need_size_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x15b	@ At line number 347
	.ascii "__need_wchar_t\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x191	@ At line number 401
	.ascii "NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x196	@ At line number 406
	.ascii "NULL ((void *)0)\0"	@ The macro
	.byte	0x2	@ Undefine macro
	.uleb128 0x19c	@ At line number 412
	.ascii "__need_NULL\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a1	@ At line number 417
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"	@ The macro
	.byte	0x4	@ End file
	.file 24 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\xlocale.h"
	.byte	0x3	@ Start new file
	.uleb128 0x14	@ Included from line number 20
	.uleb128 0x18	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\xlocale.h
	.byte	0x1	@ Define macro
	.uleb128 0x4	@ At line number 4
	.ascii "_XLOCALE_H \0"	@ The macro
	.byte	0x4	@ End file
	.file 25 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\string.h"
	.byte	0x3	@ Start new file
	.uleb128 0xc0	@ Included from line number 192
	.uleb128 0x19	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\string.h
	.byte	0x4	@ End file
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0xb	@ At line number 11
	.ascii "_sp_margin_ ((uintptr_t)16)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x5c	@ At line number 92
	.ascii "LPC_RAM (1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5d	@ At line number 93
	.ascii "LPC_URAM (1 << 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5e	@ At line number 94
	.ascii "LPC_ERAM (1 << 2)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x62	@ At line number 98
	.ascii "beg_heap ((uintptr_t)&_heap_start_)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x63	@ At line number 99
	.ascii "end_heap ((uintptr_t)&_heap_end_)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x66	@ At line number 102
	.ascii "malloc2388_init(bs,flg) __malloc2388_init(bs, flg, beg_heap, end_heap)\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x4	@ End file
	.byte	0	@ End compilation unit
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF47:
	.ascii	"_dso_handle\000"
.LASF136:
	.ascii	"cluster_size\000"
.LASF55:
	.ascii	"_size\000"
.LASF137:
	.ascii	"max_cluster_id\000"
.LASF12:
	.ascii	"uintptr_t\000"
.LASF79:
	.ascii	"_emergency\000"
.LASF71:
	.ascii	"_mbstate\000"
.LASF8:
	.ascii	"__uint8_t\000"
.LASF69:
	.ascii	"_data\000"
.LASF119:
	.ascii	"_wcrtomb_state\000"
.LASF120:
	.ascii	"_wcsrtombs_state\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF59:
	.ascii	"_lbfsize\000"
.LASF126:
	.ascii	"__locale_t\000"
.LASF150:
	.ascii	"test\000"
.LASF117:
	.ascii	"_mbrtowc_state\000"
.LASF36:
	.ascii	"__tm_sec\000"
.LASF6:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF65:
	.ascii	"_ubuf\000"
.LASF54:
	.ascii	"_base\000"
.LASF38:
	.ascii	"__tm_hour\000"
.LASF94:
	.ascii	"__sf\000"
.LASF45:
	.ascii	"_on_exit_args\000"
.LASF60:
	.ascii	"_cookie\000"
.LASF93:
	.ascii	"__sglue\000"
.LASF4:
	.ascii	"long int\000"
.LASF57:
	.ascii	"_flags\000"
.LASF49:
	.ascii	"_is_cxa\000"
.LASF75:
	.ascii	"_stdin\000"
.LASF147:
	.ascii	"test.c\000"
.LASF67:
	.ascii	"_blksize\000"
.LASF15:
	.ascii	"xfunc_out\000"
.LASF13:
	.ascii	"double\000"
.LASF89:
	.ascii	"_cvtbuf\000"
.LASF68:
	.ascii	"_offset\000"
.LASF134:
	.ascii	"mark_chain\000"
.LASF118:
	.ascii	"_mbsrtowcs_state\000"
.LASF116:
	.ascii	"_mbrlen_state\000"
.LASF46:
	.ascii	"_fnargs\000"
.LASF52:
	.ascii	"_fns\000"
.LASF32:
	.ascii	"_sign\000"
.LASF142:
	.ascii	"_heap_end_\000"
.LASF27:
	.ascii	"_flock_t\000"
.LASF77:
	.ascii	"_stderr\000"
.LASF34:
	.ascii	"_Bigint\000"
.LASF107:
	.ascii	"_gamma_signgam\000"
.LASF133:
	.ascii	"mark_alloc\000"
.LASF61:
	.ascii	"_read\000"
.LASF85:
	.ascii	"_result_k\000"
.LASF135:
	.ascii	"heap_base_address\000"
.LASF35:
	.ascii	"__tm\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF23:
	.ascii	"__wchb\000"
.LASF151:
	.ascii	"gcc_current_pc\000"
.LASF76:
	.ascii	"_stdout\000"
.LASF88:
	.ascii	"_cvtlen\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF58:
	.ascii	"_file\000"
.LASF141:
	.ascii	"_heap_start_\000"
.LASF97:
	.ascii	"_niobs\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF91:
	.ascii	"_atexit0\000"
.LASF114:
	.ascii	"_signal_buf\000"
.LASF105:
	.ascii	"_asctime_buf\000"
.LASF84:
	.ascii	"_result\000"
.LASF22:
	.ascii	"__wch\000"
.LASF129:
	.ascii	"_CLUSTER_IDX_t\000"
.LASF18:
	.ascii	"_LOCK_T\000"
.LASF21:
	.ascii	"wint_t\000"
.LASF70:
	.ascii	"_lock\000"
.LASF72:
	.ascii	"_flags2\000"
.LASF62:
	.ascii	"_write\000"
.LASF41:
	.ascii	"__tm_year\000"
.LASF131:
	.ascii	"_BANK_IDX_t\000"
.LASF123:
	.ascii	"_nmalloc\000"
.LASF144:
	.ascii	"_tiny_malloc_flag\000"
.LASF14:
	.ascii	"sizetype\000"
.LASF17:
	.ascii	"long double\000"
.LASF122:
	.ascii	"_nextf\000"
.LASF40:
	.ascii	"__tm_mon\000"
.LASF50:
	.ascii	"_atexit\000"
.LASF82:
	.ascii	"__sdidinit\000"
.LASF19:
	.ascii	"_off_t\000"
.LASF87:
	.ascii	"_freelist\000"
.LASF112:
	.ascii	"_wctomb_state\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF90:
	.ascii	"_new\000"
.LASF121:
	.ascii	"_h_errno\000"
.LASF2:
	.ascii	"short int\000"
.LASF43:
	.ascii	"__tm_yday\000"
.LASF53:
	.ascii	"__sbuf\000"
.LASF98:
	.ascii	"_iobs\000"
.LASF95:
	.ascii	"__FILE\000"
.LASF26:
	.ascii	"_mbstate_t\000"
.LASF56:
	.ascii	"__sFILE\000"
.LASF9:
	.ascii	"__uintptr_t\000"
.LASF108:
	.ascii	"_rand_next\000"
.LASF110:
	.ascii	"_mblen_state\000"
.LASF78:
	.ascii	"_inc\000"
.LASF51:
	.ascii	"_ind\000"
.LASF81:
	.ascii	"_locale\000"
.LASF83:
	.ascii	"__cleanup\000"
.LASF80:
	.ascii	"_unspecified_locale_info\000"
.LASF139:
	.ascii	"chk_sp_collision\000"
.LASF31:
	.ascii	"_maxwds\000"
.LASF73:
	.ascii	"_reent\000"
.LASF99:
	.ascii	"_rand48\000"
.LASF100:
	.ascii	"_seed\000"
.LASF24:
	.ascii	"__count\000"
.LASF125:
	.ascii	"__lock\000"
.LASF25:
	.ascii	"__value\000"
.LASF140:
	.ascii	"_TN_MALLOC_INFO_t\000"
.LASF63:
	.ascii	"_seek\000"
.LASF127:
	.ascii	"_impure_ptr\000"
.LASF20:
	.ascii	"_fpos_t\000"
.LASF74:
	.ascii	"_errno\000"
.LASF28:
	.ascii	"char\000"
.LASF37:
	.ascii	"__tm_min\000"
.LASF143:
	.ascii	"_tn_malloc_info\000"
.LASF148:
	.ascii	"C:\\Users\\USER\\Desktop\\ARM-DEV\\Projects\\lpc23x"
	.ascii	"x\\lpc2388-bios\\sdk\\application\\heap\000"
.LASF101:
	.ascii	"_mult\000"
.LASF146:
	.ascii	"GNU C11 6.3.1 20170620 (release) [ARM/embedded-6-br"
	.ascii	"anch revision 249437] -mcpu=arm7tdmi-s -g3 -gdwarf-"
	.ascii	"2 -gstrict-dwarf -O\000"
.LASF30:
	.ascii	"_next\000"
.LASF104:
	.ascii	"_strtok_last\000"
.LASF48:
	.ascii	"_fntypes\000"
.LASF102:
	.ascii	"_add\000"
.LASF29:
	.ascii	"__ULong\000"
.LASF115:
	.ascii	"_getdate_err\000"
.LASF130:
	.ascii	"_CLUSTER_SIZE_t\000"
.LASF128:
	.ascii	"_global_impure_ptr\000"
.LASF16:
	.ascii	"xfunc_in\000"
.LASF145:
	.ascii	"memcfg\000"
.LASF103:
	.ascii	"_unused_rand\000"
.LASF138:
	.ascii	"number_of_banks\000"
.LASF33:
	.ascii	"_wds\000"
.LASF42:
	.ascii	"__tm_wday\000"
.LASF96:
	.ascii	"_glue\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF113:
	.ascii	"_l64a_buf\000"
.LASF92:
	.ascii	"_sig_func\000"
.LASF132:
	.ascii	"_BANK_BIT_t\000"
.LASF66:
	.ascii	"_nbuf\000"
.LASF124:
	.ascii	"_unused\000"
.LASF44:
	.ascii	"__tm_isdst\000"
.LASF106:
	.ascii	"_localtime_buf\000"
.LASF64:
	.ascii	"_close\000"
.LASF109:
	.ascii	"_r48\000"
.LASF111:
	.ascii	"_mbtowc_state\000"
.LASF86:
	.ascii	"_p5s\000"
.LASF149:
	.ascii	"main\000"
.LASF39:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors 6-2017-q2-update) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
