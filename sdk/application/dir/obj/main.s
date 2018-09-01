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
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	scan_files
	.syntax unified
	.arm
	.fpu softvfp
	.type	scan_files, %function
scan_files:
.LFB1:
	.file 1 "main.c"
	@ main.c:14
	.loc 1 14 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
@ BLOCK 2 freq:1200 seq:0
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
	sub	sp, sp, #52
.LCFI1:
	.cfi_def_cfa_offset 88
	mov	r5, r0
	@ main.c:21
	.loc 1 21 0
	mov	r1, r0
	mov	r0, sp
.LVL1:
	bl	f_opendir
.LVL2:
	@ main.c:22
	.loc 1 22 0
	subs	r6, r0, #0
@ SUCC: 3 [61.0%]  (FALLTHRU,CAN_FALLTHRU) 13 [39.0%]  (CAN_FALLTHRU)
	bne	.L3
@ BLOCK 3 freq:732 seq:1
@ PRED: 2 [61.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:24
	.loc 1 24 0
	ldr	r4, .L10
	@ main.c:33
	.loc 1 33 0
	ldr	r10, .L10+4
	@ main.c:34
	.loc 1 34 0
	add	r8, r4, #9
	ldr	fp, .L10+8
	@ main.c:28
	.loc 1 28 0
	ldr	r9, .L10+12
@ SUCC: 6 [100.0%]  (CAN_FALLTHRU)
	b	.L8
@ BLOCK 4 freq:4705 seq:2
@ PRED: 8 [50.0%]  (CAN_FALLTHRU)
.L5:
	@ main.c:33
	.loc 1 33 0
	mov	r1, r10
	mov	r0, r5
.LVL3:
	bl	xstrcmp
.LVL4:
	cmp	r0, #0
@ SUCC: 5 [50.0%]  (FALLTHRU,CAN_FALLTHRU) 11 [50.0%]  (CAN_FALLTHRU)
	beq	.L7
@ BLOCK 5 freq:2352 seq:3
@ PRED: 4 [50.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:33
	.loc 1 33 0 is_stmt 0
	mov	r2, r8
	mov	r1, r5
	ldr	r0, .L10+16
@ SUCC: 6 [100.0%]  (FALLTHRU,DFS_BACK,CAN_FALLTHRU)
	bl	xprintf
.LVL5:
@ BLOCK 6 freq:10000 seq:4
@ PRED: 10 [100.0%]  (DFS_BACK,CAN_FALLTHRU) 5 [100.0%]  (FALLTHRU,DFS_BACK,CAN_FALLTHRU) 3 [100.0%]  (CAN_FALLTHRU) 11 [100.0%]  (DFS_BACK,CAN_FALLTHRU)
.L8:
	@ main.c:24
	.loc 1 24 0 is_stmt 1
	mov	r1, r4
	mov	r0, sp
	bl	f_readdir
.LVL6:
	@ main.c:25
	.loc 1 25 0
	subs	r6, r0, #0
@ SUCC: 12 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT) 7 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	bne	.L4
@ BLOCK 7 freq:9700 seq:5
@ PRED: 6 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:25
	.loc 1 25 0 is_stmt 0
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	cmp	r3, #0
@ SUCC: 12 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT) 8 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	beq	.L4
@ BLOCK 8 freq:9409 seq:6
@ PRED: 7 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:26
	.loc 1 26 0 is_stmt 1
	ldrb	r3, [r4, #8]	@ zero_extendqisi2
	tst	r3, #16
@ SUCC: 9 [50.0%]  (FALLTHRU,CAN_FALLTHRU) 4 [50.0%]  (CAN_FALLTHRU)
	beq	.L5
@ BLOCK 9 freq:4705 seq:7
@ PRED: 8 [50.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:27
	.loc 1 27 0
	mov	r0, r5
.LVL7:
	bl	xstrlen
.LVL8:
	mov	r7, r0
.LVL9:
	@ main.c:28
	.loc 1 28 0
	mov	r2, r8
	mov	r1, r9
	add	r0, r5, r0
.LVL10:
	bl	xsprintf
.LVL11:
	@ main.c:29
	.loc 1 29 0
	mov	r0, r5
	bl	scan_files
.LVL12:
	@ main.c:30
	.loc 1 30 0
	subs	r6, r0, #0
@ SUCC: 12 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT) 10 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	bne	.L4
@ BLOCK 10 freq:4563 seq:8
@ PRED: 9 [97.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:31
	.loc 1 31 0
	mov	r3, #0
	strb	r3, [r5, r7]
@ SUCC: 6 [100.0%]  (DFS_BACK,CAN_FALLTHRU)
	b	.L8
.LVL13:
@ BLOCK 11 freq:2352 seq:9
@ PRED: 4 [50.0%]  (CAN_FALLTHRU)
.L7:
	@ main.c:34
	.loc 1 34 0
	mov	r1, r8
	mov	r0, fp
	bl	xprintf
.LVL14:
@ SUCC: 6 [100.0%]  (DFS_BACK,CAN_FALLTHRU)
	b	.L8
.LVL15:
@ BLOCK 12 freq:732 seq:10
@ PRED: 6 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT) 7 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT) 9 [3.0%]  (CAN_FALLTHRU,LOOP_EXIT)
.L4:
	@ main.c:37
	.loc 1 37 0
	mov	r0, sp
@ SUCC: 13 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	bl	f_closedir
.LVL16:
@ BLOCK 13 freq:1200 seq:11
@ PRED: 12 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 2 [39.0%]  (CAN_FALLTHRU)
.L3:
	@ main.c:41
	.loc 1 41 0
	mov	r0, r6
	add	sp, sp, #52
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
.LVL17:
@ SUCC: EXIT [100.0%] 
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC3
	.word	.LC0
	.word	.LC2
	.cfi_endproc
.LFE1:
	.size	scan_files, .-scan_files
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
.LFB2:
	@ main.c:45
	.loc 1 45 0
	.cfi_startproc
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
@ BLOCK 2 freq:10000 seq:0
@ PRED: ENTRY [100.0%]  (FALLTHRU)
	push	{r4, lr}
.LCFI4:
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	@ main.c:49
	.loc 1 49 0
	ldr	r0, .L17
	bl	xprintf
.LVL18:
	@ main.c:50
	.loc 1 50 0
	mov	r2, #1
	ldr	r1, .L17+4
	ldr	r0, .L17+8
	bl	f_mount
.LVL19:
	@ main.c:51
	.loc 1 51 0
	subs	r4, r0, #0
@ SUCC: 5 [39.0%]  (CAN_FALLTHRU) 3 [61.0%]  (FALLTHRU,CAN_FALLTHRU)
	beq	.L16
@ BLOCK 3 freq:6100 seq:1
@ PRED: 2 [61.0%]  (FALLTHRU,CAN_FALLTHRU)
	@ main.c:55
	.loc 1 55 0
	ldr	r0, .L17+12
.LVL20:
@ SUCC: 4 [100.0%]  (FALLTHRU,CAN_FALLTHRU)
	bl	xprintf
.LVL21:
@ BLOCK 4 freq:10000 seq:2
@ PRED: 3 [100.0%]  (FALLTHRU,CAN_FALLTHRU) 5 [100.0%]  (CAN_FALLTHRU)
.L14:
	@ main.c:59
	.loc 1 59 0
	mov	r0, r4
	pop	{r4, lr}
.LCFI5:
	.cfi_remember_state
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL22:
@ SUCC: EXIT [100.0%] 
	bx	lr
.LVL23:
@ BLOCK 5 freq:3900 seq:3
@ PRED: 2 [39.0%]  (CAN_FALLTHRU)
.L16:
.LCFI6:
	.cfi_restore_state
	@ main.c:52
	.loc 1 52 0
	ldr	r4, .L17+16
	mov	r2, #255
	ldr	r1, .L17+20
	mov	r0, r4
.LVL24:
	bl	xstrncpy_n
.LVL25:
	@ main.c:53
	.loc 1 53 0
	mov	r0, r4
	bl	scan_files
.LVL26:
	mov	r4, r0
.LVL27:
@ SUCC: 4 [100.0%]  (CAN_FALLTHRU)
	b	.L14
.L18:
	.align	2
.L17:
	.word	.LC4
	.word	.LC5
	.word	fs
	.word	.LC6
	.word	buff
	.word	.LC1
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.comm	buff,256,4
	.comm	fs,564,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	fno.4502, %object
	.size	fno.4502, 24
fno.4502:
	.space	24
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"/%s\000"
.LC1:
	.ascii	"/\000"
	.space	2
.LC2:
	.ascii	"%s/%s\012\000"
	.space	1
.LC3:
	.ascii	"/%s\012\000"
	.space	3
.LC4:
	.ascii	"\012\000"
	.space	2
.LC5:
	.ascii	"\000"
	.space	3
.LC6:
	.ascii	"Drive not ready\012\000"
	.text
.Letext0:
	.file 2 "../../include/integer.h"
	.file 3 "../../include/ff.h"
	.file 4 "../../include/xprintf.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4f1	@ Length of Compilation Unit Info
	.2byte	0x2	@ DWARF version number
	.4byte	.Ldebug_abbrev0	@ Offset Into Abbrev. Section
	.byte	0x4	@ Pointer Size (in bytes)
	.uleb128 0x1	@ (DIE (0xb) DW_TAG_compile_unit)
	.4byte	.LASF75	@ DW_AT_producer: "GNU C11 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437] -mcpu=arm7tdmi-s -g3 -gdwarf-2 -gstrict-dwarf -O"
	.byte	0x1	@ DW_AT_language
	.4byte	.LASF76	@ DW_AT_name: "main.c"
	.4byte	.LASF77	@ DW_AT_comp_dir: "C:\Users\USER\Desktop\ARM-DEV\Projects\lpc23xx\lpc2388-bios\sdk\application\dir"
	.4byte	.Ltext0	@ DW_AT_low_pc
	.4byte	.Letext0	@ DW_AT_high_pc
	.4byte	.Ldebug_line0	@ DW_AT_stmt_list
	.4byte	.Ldebug_macinfo0	@ DW_AT_macro_info
	.uleb128 0x2	@ (DIE (0x29) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x6	@ DW_AT_encoding
	.4byte	.LASF0	@ DW_AT_name: "signed char"
	.uleb128 0x2	@ (DIE (0x30) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x8	@ DW_AT_encoding
	.4byte	.LASF1	@ DW_AT_name: "unsigned char"
	.uleb128 0x2	@ (DIE (0x37) DW_TAG_base_type)
	.byte	0x2	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF2	@ DW_AT_name: "short int"
	.uleb128 0x2	@ (DIE (0x3e) DW_TAG_base_type)
	.byte	0x2	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF3	@ DW_AT_name: "short unsigned int"
	.uleb128 0x2	@ (DIE (0x45) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF4	@ DW_AT_name: "long int"
	.uleb128 0x2	@ (DIE (0x4c) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF5	@ DW_AT_name: "long unsigned int"
	.uleb128 0x2	@ (DIE (0x53) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.4byte	.LASF6	@ DW_AT_name: "long long int"
	.uleb128 0x2	@ (DIE (0x5a) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF7	@ DW_AT_name: "long long unsigned int"
	.uleb128 0x3	@ (DIE (0x61) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x5	@ DW_AT_encoding
	.ascii "int\0"	@ DW_AT_name
	.uleb128 0x2	@ (DIE (0x68) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF8	@ DW_AT_name: "unsigned int"
	.uleb128 0x2	@ (DIE (0x6f) DW_TAG_base_type)
	.byte	0x8	@ DW_AT_byte_size
	.byte	0x4	@ DW_AT_encoding
	.4byte	.LASF9	@ DW_AT_name: "double"
	.uleb128 0x2	@ (DIE (0x76) DW_TAG_base_type)
	.byte	0x4	@ DW_AT_byte_size
	.byte	0x7	@ DW_AT_encoding
	.4byte	.LASF10	@ DW_AT_name: "sizetype"
	.uleb128 0x4	@ (DIE (0x7d) DW_TAG_typedef)
	.4byte	.LASF11	@ DW_AT_name: "UINT"
	.byte	0x2	@ DW_AT_decl_file (../../include/integer.h)
	.byte	0x13	@ DW_AT_decl_line
	.4byte	0x68	@ DW_AT_type
	.uleb128 0x4	@ (DIE (0x88) DW_TAG_typedef)
	.4byte	.LASF12	@ DW_AT_name: "BYTE"
	.byte	0x2	@ DW_AT_decl_file (../../include/integer.h)
	.byte	0x16	@ DW_AT_decl_line
	.4byte	0x30	@ DW_AT_type
	.uleb128 0x4	@ (DIE (0x93) DW_TAG_typedef)
	.4byte	.LASF13	@ DW_AT_name: "WORD"
	.byte	0x2	@ DW_AT_decl_file (../../include/integer.h)
	.byte	0x1a	@ DW_AT_decl_line
	.4byte	0x3e	@ DW_AT_type
	.uleb128 0x4	@ (DIE (0x9e) DW_TAG_typedef)
	.4byte	.LASF14	@ DW_AT_name: "DWORD"
	.byte	0x2	@ DW_AT_decl_file (../../include/integer.h)
	.byte	0x1f	@ DW_AT_decl_line
	.4byte	0x4c	@ DW_AT_type
	.uleb128 0x4	@ (DIE (0xa9) DW_TAG_typedef)
	.4byte	.LASF15	@ DW_AT_name: "TCHAR"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x3d	@ DW_AT_decl_line
	.4byte	0xb9	@ DW_AT_type
	.uleb128 0x5	@ (DIE (0xb4) DW_TAG_const_type)
	.4byte	0xa9	@ DW_AT_type
	.uleb128 0x2	@ (DIE (0xb9) DW_TAG_base_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x8	@ DW_AT_encoding
	.4byte	.LASF16	@ DW_AT_name: "char"
	.uleb128 0x4	@ (DIE (0xc0) DW_TAG_typedef)
	.4byte	.LASF17	@ DW_AT_name: "FSIZE_t"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x4e	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.uleb128 0x6	@ (DIE (0xcb) DW_TAG_structure_type)
	.2byte	0x234	@ DW_AT_byte_size
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x55	@ DW_AT_decl_line
	.4byte	0x1de	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0xd4) DW_TAG_member)
	.4byte	.LASF18	@ DW_AT_name: "fs_type"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x56	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x7	@ (DIE (0xe2) DW_TAG_member)
	.4byte	.LASF19	@ DW_AT_name: "pdrv"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x57	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x1
	.uleb128 0x7	@ (DIE (0xf0) DW_TAG_member)
	.4byte	.LASF20	@ DW_AT_name: "n_fats"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x58	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2
	.uleb128 0x7	@ (DIE (0xfe) DW_TAG_member)
	.4byte	.LASF21	@ DW_AT_name: "wflag"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x59	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x3
	.uleb128 0x7	@ (DIE (0x10c) DW_TAG_member)
	.4byte	.LASF22	@ DW_AT_name: "fsi_flag"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x5a	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x8	@ (DIE (0x11a) DW_TAG_member)
	.ascii "id\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x5b	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0x7	@ (DIE (0x127) DW_TAG_member)
	.4byte	.LASF23	@ DW_AT_name: "n_rootdir"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x5c	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x7	@ (DIE (0x135) DW_TAG_member)
	.4byte	.LASF24	@ DW_AT_name: "csize"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x5d	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xa
	.uleb128 0x7	@ (DIE (0x143) DW_TAG_member)
	.4byte	.LASF25	@ DW_AT_name: "last_clst"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x6b	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.uleb128 0x7	@ (DIE (0x151) DW_TAG_member)
	.4byte	.LASF26	@ DW_AT_name: "free_clst"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x6c	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x7	@ (DIE (0x15f) DW_TAG_member)
	.4byte	.LASF27	@ DW_AT_name: "cdir"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x6f	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14
	.uleb128 0x7	@ (DIE (0x16d) DW_TAG_member)
	.4byte	.LASF28	@ DW_AT_name: "n_fatent"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x76	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x18
	.uleb128 0x7	@ (DIE (0x17b) DW_TAG_member)
	.4byte	.LASF29	@ DW_AT_name: "fsize"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x77	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x1c
	.uleb128 0x7	@ (DIE (0x189) DW_TAG_member)
	.4byte	.LASF30	@ DW_AT_name: "volbase"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x78	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x20
	.uleb128 0x7	@ (DIE (0x197) DW_TAG_member)
	.4byte	.LASF31	@ DW_AT_name: "fatbase"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x79	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x24
	.uleb128 0x7	@ (DIE (0x1a5) DW_TAG_member)
	.4byte	.LASF32	@ DW_AT_name: "dirbase"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x7a	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x28
	.uleb128 0x7	@ (DIE (0x1b3) DW_TAG_member)
	.4byte	.LASF33	@ DW_AT_name: "database"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x7b	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2c
	.uleb128 0x7	@ (DIE (0x1c1) DW_TAG_member)
	.4byte	.LASF34	@ DW_AT_name: "winsect"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x7c	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x30
	.uleb128 0x8	@ (DIE (0x1cf) DW_TAG_member)
	.ascii "win\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x7d	@ DW_AT_decl_line
	.4byte	0x1de	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x34
	.byte	0	@ end of children of DIE 0xcb
	.uleb128 0x9	@ (DIE (0x1de) DW_TAG_array_type)
	.4byte	0x88	@ DW_AT_type
	.4byte	0x1ef	@ DW_AT_sibling
	.uleb128 0xa	@ (DIE (0x1e7) DW_TAG_subrange_type)
	.4byte	0x76	@ DW_AT_type
	.2byte	0x1ff	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x1de
	.uleb128 0x4	@ (DIE (0x1ef) DW_TAG_typedef)
	.4byte	.LASF35	@ DW_AT_name: "FATFS"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x7e	@ DW_AT_decl_line
	.4byte	0xcb	@ DW_AT_type
	.uleb128 0xb	@ (DIE (0x1fa) DW_TAG_structure_type)
	.byte	0x10	@ DW_AT_byte_size
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x84	@ DW_AT_decl_line
	.4byte	0x255	@ DW_AT_sibling
	.uleb128 0x8	@ (DIE (0x202) DW_TAG_member)
	.ascii "fs\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x85	@ DW_AT_decl_line
	.4byte	0x255	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x8	@ (DIE (0x20f) DW_TAG_member)
	.ascii "id\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x86	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x7	@ (DIE (0x21c) DW_TAG_member)
	.4byte	.LASF36	@ DW_AT_name: "attr"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x87	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0x7	@ (DIE (0x22a) DW_TAG_member)
	.4byte	.LASF37	@ DW_AT_name: "stat"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x88	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x7
	.uleb128 0x7	@ (DIE (0x238) DW_TAG_member)
	.4byte	.LASF38	@ DW_AT_name: "sclust"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x89	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x7	@ (DIE (0x246) DW_TAG_member)
	.4byte	.LASF39	@ DW_AT_name: "objsize"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x8a	@ DW_AT_decl_line
	.4byte	0xc0	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0xc
	.byte	0	@ end of children of DIE 0x1fa
	.uleb128 0xc	@ (DIE (0x255) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x1ef	@ DW_AT_type
	.uleb128 0x4	@ (DIE (0x25b) DW_TAG_typedef)
	.4byte	.LASF40	@ DW_AT_name: "FFOBJID"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0x95	@ DW_AT_decl_line
	.4byte	0x1fa	@ DW_AT_type
	.uleb128 0xc	@ (DIE (0x266) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x88	@ DW_AT_type
	.uleb128 0xb	@ (DIE (0x26c) DW_TAG_structure_type)
	.byte	0x30	@ DW_AT_byte_size
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb2	@ DW_AT_decl_line
	.4byte	0x2d6	@ DW_AT_sibling
	.uleb128 0x8	@ (DIE (0x274) DW_TAG_member)
	.ascii "obj\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb3	@ DW_AT_decl_line
	.4byte	0x25b	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x7	@ (DIE (0x282) DW_TAG_member)
	.4byte	.LASF41	@ DW_AT_name: "dptr"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb4	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x10
	.uleb128 0x7	@ (DIE (0x290) DW_TAG_member)
	.4byte	.LASF42	@ DW_AT_name: "clust"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb5	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x14
	.uleb128 0x7	@ (DIE (0x29e) DW_TAG_member)
	.4byte	.LASF43	@ DW_AT_name: "sect"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb6	@ DW_AT_decl_line
	.4byte	0x9e	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x18
	.uleb128 0x8	@ (DIE (0x2ac) DW_TAG_member)
	.ascii "dir\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb7	@ DW_AT_decl_line
	.4byte	0x266	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x1c
	.uleb128 0x8	@ (DIE (0x2ba) DW_TAG_member)
	.ascii "fn\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xb8	@ DW_AT_decl_line
	.4byte	0x2d6	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x20
	.uleb128 0x8	@ (DIE (0x2c7) DW_TAG_member)
	.ascii "pat\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xbd	@ DW_AT_decl_line
	.4byte	0x2e6	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x2c
	.byte	0	@ end of children of DIE 0x26c
	.uleb128 0x9	@ (DIE (0x2d6) DW_TAG_array_type)
	.4byte	0x88	@ DW_AT_type
	.4byte	0x2e6	@ DW_AT_sibling
	.uleb128 0xd	@ (DIE (0x2df) DW_TAG_subrange_type)
	.4byte	0x76	@ DW_AT_type
	.byte	0xb	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x2d6
	.uleb128 0xc	@ (DIE (0x2e6) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xb4	@ DW_AT_type
	.uleb128 0xe	@ (DIE (0x2ec) DW_TAG_typedef)
	.ascii "DIR\0"	@ DW_AT_name
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xbf	@ DW_AT_decl_line
	.4byte	0x26c	@ DW_AT_type
	.uleb128 0xb	@ (DIE (0x2f7) DW_TAG_structure_type)
	.byte	0x18	@ DW_AT_byte_size
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xc5	@ DW_AT_decl_line
	.4byte	0x346	@ DW_AT_sibling
	.uleb128 0x7	@ (DIE (0x2ff) DW_TAG_member)
	.4byte	.LASF29	@ DW_AT_name: "fsize"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xc6	@ DW_AT_decl_line
	.4byte	0xc0	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0
	.uleb128 0x7	@ (DIE (0x30d) DW_TAG_member)
	.4byte	.LASF44	@ DW_AT_name: "fdate"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xc7	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x4
	.uleb128 0x7	@ (DIE (0x31b) DW_TAG_member)
	.4byte	.LASF45	@ DW_AT_name: "ftime"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xc8	@ DW_AT_decl_line
	.4byte	0x93	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x6
	.uleb128 0x7	@ (DIE (0x329) DW_TAG_member)
	.4byte	.LASF46	@ DW_AT_name: "fattrib"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xc9	@ DW_AT_decl_line
	.4byte	0x88	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x8
	.uleb128 0x7	@ (DIE (0x337) DW_TAG_member)
	.4byte	.LASF47	@ DW_AT_name: "fname"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xce	@ DW_AT_decl_line
	.4byte	0x346	@ DW_AT_type
	.byte	0x2	@ DW_AT_data_member_location
	.byte	0x23	@ DW_OP_plus_uconst
	.uleb128 0x9
	.byte	0	@ end of children of DIE 0x2f7
	.uleb128 0x9	@ (DIE (0x346) DW_TAG_array_type)
	.4byte	0xa9	@ DW_AT_type
	.4byte	0x356	@ DW_AT_sibling
	.uleb128 0xd	@ (DIE (0x34f) DW_TAG_subrange_type)
	.4byte	0x76	@ DW_AT_type
	.byte	0xc	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x346
	.uleb128 0x4	@ (DIE (0x356) DW_TAG_typedef)
	.4byte	.LASF48	@ DW_AT_name: "FILINFO"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xd0	@ DW_AT_decl_line
	.4byte	0x2f7	@ DW_AT_type
	.uleb128 0xf	@ (DIE (0x361) DW_TAG_enumeration_type)
	.byte	0x1	@ DW_AT_byte_size
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xd6	@ DW_AT_decl_line
	.4byte	0x3e2	@ DW_AT_sibling
	.uleb128 0x10	@ (DIE (0x369) DW_TAG_enumerator)
	.4byte	.LASF49	@ DW_AT_name: "FR_OK"
	.byte	0	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x36f) DW_TAG_enumerator)
	.4byte	.LASF50	@ DW_AT_name: "FR_DISK_ERR"
	.byte	0x1	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x375) DW_TAG_enumerator)
	.4byte	.LASF51	@ DW_AT_name: "FR_INT_ERR"
	.byte	0x2	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x37b) DW_TAG_enumerator)
	.4byte	.LASF52	@ DW_AT_name: "FR_NOT_READY"
	.byte	0x3	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x381) DW_TAG_enumerator)
	.4byte	.LASF53	@ DW_AT_name: "FR_NO_FILE"
	.byte	0x4	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x387) DW_TAG_enumerator)
	.4byte	.LASF54	@ DW_AT_name: "FR_NO_PATH"
	.byte	0x5	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x38d) DW_TAG_enumerator)
	.4byte	.LASF55	@ DW_AT_name: "FR_INVALID_NAME"
	.byte	0x6	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x393) DW_TAG_enumerator)
	.4byte	.LASF56	@ DW_AT_name: "FR_DENIED"
	.byte	0x7	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x399) DW_TAG_enumerator)
	.4byte	.LASF57	@ DW_AT_name: "FR_EXIST"
	.byte	0x8	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x39f) DW_TAG_enumerator)
	.4byte	.LASF58	@ DW_AT_name: "FR_INVALID_OBJECT"
	.byte	0x9	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3a5) DW_TAG_enumerator)
	.4byte	.LASF59	@ DW_AT_name: "FR_WRITE_PROTECTED"
	.byte	0xa	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3ab) DW_TAG_enumerator)
	.4byte	.LASF60	@ DW_AT_name: "FR_INVALID_DRIVE"
	.byte	0xb	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3b1) DW_TAG_enumerator)
	.4byte	.LASF61	@ DW_AT_name: "FR_NOT_ENABLED"
	.byte	0xc	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3b7) DW_TAG_enumerator)
	.4byte	.LASF62	@ DW_AT_name: "FR_NO_FILESYSTEM"
	.byte	0xd	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3bd) DW_TAG_enumerator)
	.4byte	.LASF63	@ DW_AT_name: "FR_MKFS_ABORTED"
	.byte	0xe	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3c3) DW_TAG_enumerator)
	.4byte	.LASF64	@ DW_AT_name: "FR_TIMEOUT"
	.byte	0xf	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3c9) DW_TAG_enumerator)
	.4byte	.LASF65	@ DW_AT_name: "FR_LOCKED"
	.byte	0x10	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3cf) DW_TAG_enumerator)
	.4byte	.LASF66	@ DW_AT_name: "FR_NOT_ENOUGH_CORE"
	.byte	0x11	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3d5) DW_TAG_enumerator)
	.4byte	.LASF67	@ DW_AT_name: "FR_TOO_MANY_OPEN_FILES"
	.byte	0x12	@ DW_AT_const_value
	.uleb128 0x10	@ (DIE (0x3db) DW_TAG_enumerator)
	.4byte	.LASF68	@ DW_AT_name: "FR_INVALID_PARAMETER"
	.byte	0x13	@ DW_AT_const_value
	.byte	0	@ end of children of DIE 0x361
	.uleb128 0x4	@ (DIE (0x3e2) DW_TAG_typedef)
	.4byte	.LASF69	@ DW_AT_name: "FRESULT"
	.byte	0x3	@ DW_AT_decl_file (../../include/ff.h)
	.byte	0xeb	@ DW_AT_decl_line
	.4byte	0x361	@ DW_AT_type
	.uleb128 0x11	@ (DIE (0x3ed) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x3f9	@ DW_AT_sibling
	.uleb128 0x12	@ (DIE (0x3f3) DW_TAG_formal_parameter)
	.4byte	0x30	@ DW_AT_type
	.byte	0	@ end of children of DIE 0x3ed
	.uleb128 0x13	@ (DIE (0x3f9) DW_TAG_variable)
	.4byte	.LASF70	@ DW_AT_name: "xfunc_out"
	.byte	0x4	@ DW_AT_decl_file (../../include/xprintf.h)
	.byte	0x15	@ DW_AT_decl_line
	.4byte	0x406	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0xc	@ (DIE (0x406) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x3ed	@ DW_AT_type
	.uleb128 0x14	@ (DIE (0x40c) DW_TAG_subroutine_type)
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x30	@ DW_AT_type
	.uleb128 0x13	@ (DIE (0x412) DW_TAG_variable)
	.4byte	.LASF71	@ DW_AT_name: "xfunc_in"
	.byte	0x4	@ DW_AT_decl_file (../../include/xprintf.h)
	.byte	0x25	@ DW_AT_decl_line
	.4byte	0x41f	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x1	@ DW_AT_declaration
	.uleb128 0xc	@ (DIE (0x41f) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0x40c	@ DW_AT_type
	.uleb128 0x15	@ (DIE (0x425) DW_TAG_variable)
	.ascii "fs\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x8	@ DW_AT_decl_line
	.4byte	0x1ef	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	fs
	.uleb128 0x9	@ (DIE (0x436) DW_TAG_array_type)
	.4byte	0xb9	@ DW_AT_type
	.4byte	0x446	@ DW_AT_sibling
	.uleb128 0xd	@ (DIE (0x43f) DW_TAG_subrange_type)
	.4byte	0x76	@ DW_AT_type
	.byte	0xff	@ DW_AT_upper_bound
	.byte	0	@ end of children of DIE 0x436
	.uleb128 0x16	@ (DIE (0x446) DW_TAG_variable)
	.4byte	.LASF72	@ DW_AT_name: "buff"
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x9	@ DW_AT_decl_line
	.4byte	0x436	@ DW_AT_type
	.byte	0x1	@ DW_AT_external
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	buff
	.uleb128 0x17	@ (DIE (0x458) DW_TAG_subprogram)
	.byte	0x1	@ DW_AT_external
	.4byte	.LASF73	@ DW_AT_name: "main"
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x2c	@ DW_AT_decl_line
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x61	@ DW_AT_type
	.4byte	.LFB2	@ DW_AT_low_pc
	.4byte	.LFE2	@ DW_AT_high_pc
	.4byte	.LLST4	@ DW_AT_frame_base
	.4byte	0x485	@ DW_AT_sibling
	.uleb128 0x18	@ (DIE (0x475) DW_TAG_variable)
	.ascii "res\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x2e	@ DW_AT_decl_line
	.4byte	0x3e2	@ DW_AT_type
	.4byte	.LLST5	@ DW_AT_location
	.byte	0	@ end of children of DIE 0x458
	.uleb128 0x17	@ (DIE (0x485) DW_TAG_subprogram)
	.byte	0x1	@ DW_AT_external
	.4byte	.LASF74	@ DW_AT_name: "scan_files"
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0xb	@ DW_AT_decl_line
	.byte	0x1	@ DW_AT_prototyped
	.4byte	0x3e2	@ DW_AT_type
	.4byte	.LFB1	@ DW_AT_low_pc
	.4byte	.LFE1	@ DW_AT_high_pc
	.4byte	.LLST0	@ DW_AT_frame_base
	.4byte	0x4ee	@ DW_AT_sibling
	.uleb128 0x19	@ (DIE (0x4a2) DW_TAG_formal_parameter)
	.4byte	.LASF78	@ DW_AT_name: "path"
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0xc	@ DW_AT_decl_line
	.4byte	0x4ee	@ DW_AT_type
	.4byte	.LLST1	@ DW_AT_location
	.uleb128 0x18	@ (DIE (0x4b1) DW_TAG_variable)
	.ascii "res\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0xf	@ DW_AT_decl_line
	.4byte	0x3e2	@ DW_AT_type
	.4byte	.LLST2	@ DW_AT_location
	.uleb128 0x1a	@ (DIE (0x4c0) DW_TAG_variable)
	.ascii "dir\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x10	@ DW_AT_decl_line
	.4byte	0x2ec	@ DW_AT_type
	.byte	0x3	@ DW_AT_location
	.byte	0x91	@ DW_OP_fbreg
	.sleb128 -88
	.uleb128 0x18	@ (DIE (0x4cf) DW_TAG_variable)
	.ascii "i\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x11	@ DW_AT_decl_line
	.4byte	0x7d	@ DW_AT_type
	.4byte	.LLST3	@ DW_AT_location
	.uleb128 0x1a	@ (DIE (0x4dc) DW_TAG_variable)
	.ascii "fno\0"	@ DW_AT_name
	.byte	0x1	@ DW_AT_decl_file (main.c)
	.byte	0x12	@ DW_AT_decl_line
	.4byte	0x356	@ DW_AT_type
	.byte	0x5	@ DW_AT_location
	.byte	0x3	@ DW_OP_addr
	.4byte	fno.4502
	.byte	0	@ end of children of DIE 0x485
	.uleb128 0xc	@ (DIE (0x4ee) DW_TAG_pointer_type)
	.byte	0x4	@ DW_AT_byte_size
	.4byte	0xb9	@ DW_AT_type
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
	.uleb128 0x4	@ (abbrev code)
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
	.uleb128 0x5	@ (abbrev code)
	.uleb128 0x26	@ (TAG: DW_TAG_const_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x6	@ (abbrev code)
	.uleb128 0x13	@ (TAG: DW_TAG_structure_type)
	.byte	0x1	@ DW_children_yes
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
	.uleb128 0x7	@ (abbrev code)
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
	.uleb128 0x8	@ (abbrev code)
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
	.uleb128 0x9	@ (abbrev code)
	.uleb128 0x1	@ (TAG: DW_TAG_array_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xa	@ (abbrev code)
	.uleb128 0x21	@ (TAG: DW_TAG_subrange_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2f	@ (DW_AT_upper_bound)
	.uleb128 0x5	@ (DW_FORM_data2)
	.byte	0
	.byte	0
	.uleb128 0xb	@ (abbrev code)
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
	.uleb128 0xc	@ (abbrev code)
	.uleb128 0xf	@ (TAG: DW_TAG_pointer_type)
	.byte	0	@ DW_children_no
	.uleb128 0xb	@ (DW_AT_byte_size)
	.uleb128 0xb	@ (DW_FORM_data1)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0xd	@ (abbrev code)
	.uleb128 0x21	@ (TAG: DW_TAG_subrange_type)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.uleb128 0x2f	@ (DW_AT_upper_bound)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0xe	@ (abbrev code)
	.uleb128 0x16	@ (TAG: DW_TAG_typedef)
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
	.uleb128 0xf	@ (abbrev code)
	.uleb128 0x4	@ (TAG: DW_TAG_enumeration_type)
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
	.uleb128 0x10	@ (abbrev code)
	.uleb128 0x28	@ (TAG: DW_TAG_enumerator)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
	.uleb128 0x1c	@ (DW_AT_const_value)
	.uleb128 0xb	@ (DW_FORM_data1)
	.byte	0
	.byte	0
	.uleb128 0x11	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0x1	@ DW_children_yes
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x1	@ (DW_AT_sibling)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x12	@ (abbrev code)
	.uleb128 0x5	@ (TAG: DW_TAG_formal_parameter)
	.byte	0	@ DW_children_no
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x13	@ (abbrev code)
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
	.uleb128 0x14	@ (abbrev code)
	.uleb128 0x15	@ (TAG: DW_TAG_subroutine_type)
	.byte	0	@ DW_children_no
	.uleb128 0x27	@ (DW_AT_prototyped)
	.uleb128 0xc	@ (DW_FORM_flag)
	.uleb128 0x49	@ (DW_AT_type)
	.uleb128 0x13	@ (DW_FORM_ref4)
	.byte	0
	.byte	0
	.uleb128 0x15	@ (abbrev code)
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
	.uleb128 0x16	@ (abbrev code)
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
	.uleb128 0x2	@ (DW_AT_location)
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.uleb128 0x17	@ (abbrev code)
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
	.uleb128 0x18	@ (abbrev code)
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
	.uleb128 0x19	@ (abbrev code)
	.uleb128 0x5	@ (TAG: DW_TAG_formal_parameter)
	.byte	0	@ DW_children_no
	.uleb128 0x3	@ (DW_AT_name)
	.uleb128 0xe	@ (DW_FORM_strp)
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
	.uleb128 0x1a	@ (abbrev code)
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
	.uleb128 0xa	@ (DW_FORM_block1)
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LFB2-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LCFI4-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	.LCFI4-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LCFI5-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 8
	.4byte	.LCFI5-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LCFI6-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 0
	.4byte	.LCFI6-.Ltext0	@ Location list begin address (*.LLST4)
	.4byte	.LFE2-.Ltext0	@ Location list end address (*.LLST4)
	.2byte	0x2	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 8
	.4byte	0	@ Location list terminator begin (*.LLST4)
	.4byte	0	@ Location list terminator end (*.LLST4)
.LLST5:
	.4byte	.LVL19-.Ltext0	@ Location list begin address (*.LLST5)
	.4byte	.LVL20-.Ltext0	@ Location list end address (*.LLST5)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL21-.Ltext0	@ Location list begin address (*.LLST5)
	.4byte	.LVL22-.Ltext0	@ Location list end address (*.LLST5)
	.2byte	0x1	@ Location expression size
	.byte	0x54	@ DW_OP_reg4
	.4byte	.LVL23-.Ltext0	@ Location list begin address (*.LLST5)
	.4byte	.LVL24-.Ltext0	@ Location list end address (*.LLST5)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL27-.Ltext0	@ Location list begin address (*.LLST5)
	.4byte	.LFE2-.Ltext0	@ Location list end address (*.LLST5)
	.2byte	0x1	@ Location expression size
	.byte	0x54	@ DW_OP_reg4
	.4byte	0	@ Location list terminator begin (*.LLST5)
	.4byte	0	@ Location list terminator end (*.LLST5)
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
	.2byte	0x3	@ Location expression size
	.byte	0x7d	@ DW_OP_breg13
	.sleb128 88
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
	.4byte	.LVL0-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL1-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL1-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL2-1-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x51	@ DW_OP_reg1
	.4byte	.LVL2-1-.Ltext0	@ Location list begin address (*.LLST1)
	.4byte	.LVL17-.Ltext0	@ Location list end address (*.LLST1)
	.2byte	0x1	@ Location expression size
	.byte	0x55	@ DW_OP_reg5
	.4byte	0	@ Location list terminator begin (*.LLST1)
	.4byte	0	@ Location list terminator end (*.LLST1)
.LLST2:
	.4byte	.LVL2-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LVL3-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL6-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LVL7-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL12-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LVL13-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL15-.Ltext0	@ Location list begin address (*.LLST2)
	.4byte	.LVL17-.Ltext0	@ Location list end address (*.LLST2)
	.2byte	0x1	@ Location expression size
	.byte	0x56	@ DW_OP_reg6
	.4byte	0	@ Location list terminator begin (*.LLST2)
	.4byte	0	@ Location list terminator end (*.LLST2)
.LLST3:
	.4byte	.LVL9-.Ltext0	@ Location list begin address (*.LLST3)
	.4byte	.LVL10-.Ltext0	@ Location list end address (*.LLST3)
	.2byte	0x1	@ Location expression size
	.byte	0x50	@ DW_OP_reg0
	.4byte	.LVL10-.Ltext0	@ Location list begin address (*.LLST3)
	.4byte	.LVL13-.Ltext0	@ Location list end address (*.LLST3)
	.2byte	0x1	@ Location expression size
	.byte	0x57	@ DW_OP_reg7
	.4byte	0	@ Location list terminator begin (*.LLST3)
	.4byte	0	@ Location list terminator end (*.LLST3)
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
	.uleb128 0x1	@ file main.c
	.file 5 "../../include/lpc2300.h"
	.byte	0x3	@ Start new file
	.uleb128 0x2	@ Included from line number 2
	.uleb128 0x5	@ file ../../include/lpc2300.h
	.byte	0x1	@ Define macro
	.uleb128 0x8	@ At line number 8
	.ascii "__LPC2300 \0"	@ The macro
	.file 6 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\lib\\gcc\\arm-none-eabi\\6.3.1\\include\\stdint.h"
	.byte	0x3	@ Start new file
	.uleb128 0x9	@ Included from line number 9
	.uleb128 0x6	@ file c:\users\user\desktop\arm-dev\arm-tools\lib\gcc\arm-none-eabi\6.3.1\include\stdint.h
	.file 7 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\stdint.h"
	.byte	0x3	@ Start new file
	.uleb128 0x9	@ Included from line number 9
	.uleb128 0x7	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\stdint.h
	.byte	0x1	@ Define macro
	.uleb128 0xa	@ At line number 10
	.ascii "_STDINT_H \0"	@ The macro
	.file 8 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\machine\\_default_types.h"
	.byte	0x3	@ Start new file
	.uleb128 0xc	@ Included from line number 12
	.uleb128 0x8	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\machine\_default_types.h
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"	@ The macro
	.file 9 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\features.h"
	.byte	0x3	@ Start new file
	.uleb128 0x8	@ Included from line number 8
	.uleb128 0x9	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\features.h
	.byte	0x1	@ Define macro
	.uleb128 0x16	@ At line number 22
	.ascii "_SYS_FEATURES_H \0"	@ The macro
	.file 10 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\_newlib_version.h"
	.byte	0x3	@ Start new file
	.uleb128 0x1c	@ Included from line number 28
	.uleb128 0xa	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\_newlib_version.h
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
	.file 11 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\_intsup.h"
	.byte	0x3	@ Start new file
	.uleb128 0xd	@ Included from line number 13
	.uleb128 0xb	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_intsup.h
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
	.file 12 "c:\\users\\user\\desktop\\arm-dev\\arm-tools\\arm-none-eabi\\include\\sys\\_stdint.h"
	.byte	0x3	@ Start new file
	.uleb128 0xe	@ Included from line number 14
	.uleb128 0xc	@ file c:\users\user\desktop\arm-dev\arm-tools\arm-none-eabi\include\sys\_stdint.h
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
	.uleb128 0xf	@ At line number 15
	.ascii "VICIRQStatus (*(volatile uint32_t*)(0xFFFFF000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10	@ At line number 16
	.ascii "VICFIQStatus (*(volatile uint32_t*)(0xFFFFF004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11	@ At line number 17
	.ascii "VICRawIntr (*(volatile uint32_t*)(0xFFFFF008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12	@ At line number 18
	.ascii "VICIntSelect (*(volatile uint32_t*)(0xFFFFF00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13	@ At line number 19
	.ascii "VICIntEnable (*(volatile uint32_t*)(0xFFFFF010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14	@ At line number 20
	.ascii "VICIntEnClr (*(volatile uint32_t*)(0xFFFFF014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15	@ At line number 21
	.ascii "VICSoftInt (*(volatile uint32_t*)(0xFFFFF018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16	@ At line number 22
	.ascii "VICSoftIntClr (*(volatile uint32_t*)(0xFFFFF01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17	@ At line number 23
	.ascii "VICProtection (*(volatile uint32_t*)(0xFFFFF020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18	@ At line number 24
	.ascii "VICSWPrioMask (*(volatile uint32_t*)(0xFFFFF024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19	@ At line number 25
	.ascii "VICVectAddr0 (*(volatile uint32_t*)(0xFFFFF100))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a	@ At line number 26
	.ascii "VICVectAddr1 (*(volatile uint32_t*)(0xFFFFF104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b	@ At line number 27
	.ascii "VICVectAddr2 (*(volatile uint32_t*)(0xFFFFF108))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c	@ At line number 28
	.ascii "VICVectAddr3 (*(volatile uint32_t*)(0xFFFFF10C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d	@ At line number 29
	.ascii "VICVectAddr4 (*(volatile uint32_t*)(0xFFFFF110))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e	@ At line number 30
	.ascii "VICVectAddr5 (*(volatile uint32_t*)(0xFFFFF114))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f	@ At line number 31
	.ascii "VICVectAddr6 (*(volatile uint32_t*)(0xFFFFF118))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20	@ At line number 32
	.ascii "VICVectAddr7 (*(volatile uint32_t*)(0xFFFFF11C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21	@ At line number 33
	.ascii "VICVectAddr8 (*(volatile uint32_t*)(0xFFFFF120))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22	@ At line number 34
	.ascii "VICVectAddr9 (*(volatile uint32_t*)(0xFFFFF124))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23	@ At line number 35
	.ascii "VICVectAddr10 (*(volatile uint32_t*)(0xFFFFF128))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24	@ At line number 36
	.ascii "VICVectAddr11 (*(volatile uint32_t*)(0xFFFFF12C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25	@ At line number 37
	.ascii "VICVectAddr12 (*(volatile uint32_t*)(0xFFFFF130))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26	@ At line number 38
	.ascii "VICVectAddr13 (*(volatile uint32_t*)(0xFFFFF134))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27	@ At line number 39
	.ascii "VICVectAddr14 (*(volatile uint32_t*)(0xFFFFF138))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28	@ At line number 40
	.ascii "VICVectAddr15 (*(volatile uint32_t*)(0xFFFFF13C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29	@ At line number 41
	.ascii "VICVectAddr16 (*(volatile uint32_t*)(0xFFFFF140))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a	@ At line number 42
	.ascii "VICVectAddr17 (*(volatile uint32_t*)(0xFFFFF144))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b	@ At line number 43
	.ascii "VICVectAddr18 (*(volatile uint32_t*)(0xFFFFF148))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c	@ At line number 44
	.ascii "VICVectAddr19 (*(volatile uint32_t*)(0xFFFFF14C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d	@ At line number 45
	.ascii "VICVectAddr20 (*(volatile uint32_t*)(0xFFFFF150))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e	@ At line number 46
	.ascii "VICVectAddr21 (*(volatile uint32_t*)(0xFFFFF154))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f	@ At line number 47
	.ascii "VICVectAddr22 (*(volatile uint32_t*)(0xFFFFF158))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30	@ At line number 48
	.ascii "VICVectAddr23 (*(volatile uint32_t*)(0xFFFFF15C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31	@ At line number 49
	.ascii "VICVectAddr24 (*(volatile uint32_t*)(0xFFFFF160))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32	@ At line number 50
	.ascii "VICVectAddr25 (*(volatile uint32_t*)(0xFFFFF164))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33	@ At line number 51
	.ascii "VICVectAddr26 (*(volatile uint32_t*)(0xFFFFF168))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34	@ At line number 52
	.ascii "VICVectAddr27 (*(volatile uint32_t*)(0xFFFFF16C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35	@ At line number 53
	.ascii "VICVectAddr28 (*(volatile uint32_t*)(0xFFFFF170))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36	@ At line number 54
	.ascii "VICVectAddr29 (*(volatile uint32_t*)(0xFFFFF174))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37	@ At line number 55
	.ascii "VICVectAddr30 (*(volatile uint32_t*)(0xFFFFF178))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38	@ At line number 56
	.ascii "VICVectAddr31 (*(volatile uint32_t*)(0xFFFFF17C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39	@ At line number 57
	.ascii "VICVectCntl0 (*(volatile uint32_t*)(0xFFFFF200))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a	@ At line number 58
	.ascii "VICVectCntl1 (*(volatile uint32_t*)(0xFFFFF204))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b	@ At line number 59
	.ascii "VICVectCntl2 (*(volatile uint32_t*)(0xFFFFF208))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c	@ At line number 60
	.ascii "VICVectCntl3 (*(volatile uint32_t*)(0xFFFFF20C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d	@ At line number 61
	.ascii "VICVectCntl4 (*(volatile uint32_t*)(0xFFFFF210))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e	@ At line number 62
	.ascii "VICVectCntl5 (*(volatile uint32_t*)(0xFFFFF214))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "VICVectCntl6 (*(volatile uint32_t*)(0xFFFFF218))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40	@ At line number 64
	.ascii "VICVectCntl7 (*(volatile uint32_t*)(0xFFFFF21C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41	@ At line number 65
	.ascii "VICVectCntl8 (*(volatile uint32_t*)(0xFFFFF220))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42	@ At line number 66
	.ascii "VICVectCntl9 (*(volatile uint32_t*)(0xFFFFF224))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x43	@ At line number 67
	.ascii "VICVectCntl10 (*(volatile uint32_t*)(0xFFFFF228))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x44	@ At line number 68
	.ascii "VICVectCntl11 (*(volatile uint32_t*)(0xFFFFF22C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x45	@ At line number 69
	.ascii "VICVectCntl12 (*(volatile uint32_t*)(0xFFFFF230))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x46	@ At line number 70
	.ascii "VICVectCntl13 (*(volatile uint32_t*)(0xFFFFF234))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x47	@ At line number 71
	.ascii "VICVectCntl14 (*(volatile uint32_t*)(0xFFFFF238))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48	@ At line number 72
	.ascii "VICVectCntl15 (*(volatile uint32_t*)(0xFFFFF23C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49	@ At line number 73
	.ascii "VICVectCntl16 (*(volatile uint32_t*)(0xFFFFF240))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a	@ At line number 74
	.ascii "VICVectCntl17 (*(volatile uint32_t*)(0xFFFFF244))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b	@ At line number 75
	.ascii "VICVectCntl18 (*(volatile uint32_t*)(0xFFFFF248))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4c	@ At line number 76
	.ascii "VICVectCntl19 (*(volatile uint32_t*)(0xFFFFF24C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4d	@ At line number 77
	.ascii "VICVectCntl20 (*(volatile uint32_t*)(0xFFFFF250))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4e	@ At line number 78
	.ascii "VICVectCntl21 (*(volatile uint32_t*)(0xFFFFF254))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4f	@ At line number 79
	.ascii "VICVectCntl22 (*(volatile uint32_t*)(0xFFFFF258))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x50	@ At line number 80
	.ascii "VICVectCntl23 (*(volatile uint32_t*)(0xFFFFF25C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x51	@ At line number 81
	.ascii "VICVectCntl24 (*(volatile uint32_t*)(0xFFFFF260))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x52	@ At line number 82
	.ascii "VICVectCntl25 (*(volatile uint32_t*)(0xFFFFF264))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x53	@ At line number 83
	.ascii "VICVectCntl26 (*(volatile uint32_t*)(0xFFFFF268))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x54	@ At line number 84
	.ascii "VICVectCntl27 (*(volatile uint32_t*)(0xFFFFF26C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x55	@ At line number 85
	.ascii "VICVectCntl28 (*(volatile uint32_t*)(0xFFFFF270))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x56	@ At line number 86
	.ascii "VICVectCntl29 (*(volatile uint32_t*)(0xFFFFF274))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x57	@ At line number 87
	.ascii "VICVectCntl30 (*(volatile uint32_t*)(0xFFFFF278))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x58	@ At line number 88
	.ascii "VICVectCntl31 (*(volatile uint32_t*)(0xFFFFF27C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x59	@ At line number 89
	.ascii "VICVectAddr (*(volatile uint32_t*)(0xFFFFFF00))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5b	@ At line number 91
	.ascii "PINSEL ( (volatile uint32_t*)(0xE002C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5c	@ At line number 92
	.ascii "PINSEL0 (*(volatile uint32_t*)(0xE002C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5d	@ At line number 93
	.ascii "PINSEL1 (*(volatile uint32_t*)(0xE002C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5e	@ At line number 94
	.ascii "PINSEL2 (*(volatile uint32_t*)(0xE002C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x5f	@ At line number 95
	.ascii "PINSEL3 (*(volatile uint32_t*)(0xE002C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x60	@ At line number 96
	.ascii "PINSEL4 (*(volatile uint32_t*)(0xE002C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x61	@ At line number 97
	.ascii "PINSEL5 (*(volatile uint32_t*)(0xE002C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x62	@ At line number 98
	.ascii "PINSEL6 (*(volatile uint32_t*)(0xE002C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x63	@ At line number 99
	.ascii "PINSEL7 (*(volatile uint32_t*)(0xE002C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x64	@ At line number 100
	.ascii "PINSEL8 (*(volatile uint32_t*)(0xE002C020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x65	@ At line number 101
	.ascii "PINSEL9 (*(volatile uint32_t*)(0xE002C024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x66	@ At line number 102
	.ascii "PINSEL10 (*(volatile uint32_t*)(0xE002C028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x68	@ At line number 104
	.ascii "PINMODE ( (volatile uint32_t*)(0xE002C040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x69	@ At line number 105
	.ascii "PINMODE0 (*(volatile uint32_t*)(0xE002C040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6a	@ At line number 106
	.ascii "PINMODE1 (*(volatile uint32_t*)(0xE002C044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6b	@ At line number 107
	.ascii "PINMODE2 (*(volatile uint32_t*)(0xE002C048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6c	@ At line number 108
	.ascii "PINMODE3 (*(volatile uint32_t*)(0xE002C04C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6d	@ At line number 109
	.ascii "PINMODE4 (*(volatile uint32_t*)(0xE002C050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6e	@ At line number 110
	.ascii "PINMODE5 (*(volatile uint32_t*)(0xE002C054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x6f	@ At line number 111
	.ascii "PINMODE6 (*(volatile uint32_t*)(0xE002C058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x70	@ At line number 112
	.ascii "PINMODE7 (*(volatile uint32_t*)(0xE002C05C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x71	@ At line number 113
	.ascii "PINMODE8 (*(volatile uint32_t*)(0xE002C060))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x72	@ At line number 114
	.ascii "PINMODE9 (*(volatile uint32_t*)(0xE002C064))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x74	@ At line number 116
	.ascii "IOPIN0 (*(volatile uint32_t*)(0xE0028000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x75	@ At line number 117
	.ascii "IOSET0 (*(volatile uint32_t*)(0xE0028004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x76	@ At line number 118
	.ascii "IODIR0 (*(volatile uint32_t*)(0xE0028008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x77	@ At line number 119
	.ascii "IOCLR0 (*(volatile uint32_t*)(0xE002800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x78	@ At line number 120
	.ascii "IOPIN1 (*(volatile uint32_t*)(0xE0028010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x79	@ At line number 121
	.ascii "IOSET1 (*(volatile uint32_t*)(0xE0028014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7a	@ At line number 122
	.ascii "IODIR1 (*(volatile uint32_t*)(0xE0028018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7b	@ At line number 123
	.ascii "IOCLR1 (*(volatile uint32_t*)(0xE002801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7d	@ At line number 125
	.ascii "IO0_INT_EN_R (*(volatile uint32_t*)(0xE0028090))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7e	@ At line number 126
	.ascii "IO0_INT_EN_F (*(volatile uint32_t*)(0xE0028094))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7f	@ At line number 127
	.ascii "IO0_INT_STAT_R (*(volatile uint32_t*)(0xE0028084))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x80	@ At line number 128
	.ascii "IO0_INT_STAT_F (*(volatile uint32_t*)(0xE0028088))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x81	@ At line number 129
	.ascii "IO0_INT_CLR (*(volatile uint32_t*)(0xE002808C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x82	@ At line number 130
	.ascii "IO2_INT_EN_R (*(volatile uint32_t*)(0xE00280B0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x83	@ At line number 131
	.ascii "IO2_INT_EN_F (*(volatile uint32_t*)(0xE00280B4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x84	@ At line number 132
	.ascii "IO2_INT_STAT_R (*(volatile uint32_t*)(0xE00280A4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x85	@ At line number 133
	.ascii "IO2_INT_STAT_F (*(volatile uint32_t*)(0xE00280A8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x86	@ At line number 134
	.ascii "IO2_INT_CLR (*(volatile uint32_t*)(0xE00280AC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x87	@ At line number 135
	.ascii "IO_INT_STAT (*(volatile uint32_t*)(0xE0028080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x89	@ At line number 137
	.ascii "PARTCFG (*(volatile uint32_t*)(0x3FFF8000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8b	@ At line number 139
	.ascii "FIO0DIR (*(volatile uint32_t*)(0x3FFFC000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8c	@ At line number 140
	.ascii "FIO0DIRL (*(volatile uint16_t*)(0x3FFFC000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8d	@ At line number 141
	.ascii "FIO0DIRU (*(volatile uint16_t*)(0x3FFFC002))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8e	@ At line number 142
	.ascii "FIO0DIR0 (*(volatile uint8_t*)(0x3FFFC000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8f	@ At line number 143
	.ascii "FIO0DIR1 (*(volatile uint8_t*)(0x3FFFC001))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x90	@ At line number 144
	.ascii "FIO0DIR2 (*(volatile uint8_t*)(0x3FFFC002))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x91	@ At line number 145
	.ascii "FIO0DIR3 (*(volatile uint8_t*)(0x3FFFC003))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x93	@ At line number 147
	.ascii "FIO0MASK (*(volatile uint32_t*)(0x3FFFC010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x94	@ At line number 148
	.ascii "FIO0MASKL (*(volatile uint16_t*)(0x3FFFC010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x95	@ At line number 149
	.ascii "FIO0MASKU (*(volatile uint16_t*)(0x3FFFC012))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x96	@ At line number 150
	.ascii "FIO0MASK0 (*(volatile uint8_t*)(0x3FFFC010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x97	@ At line number 151
	.ascii "FIO0MASK1 (*(volatile uint8_t*)(0x3FFFC011))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x98	@ At line number 152
	.ascii "FIO0MASK2 (*(volatile uint8_t*)(0x3FFFC012))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x99	@ At line number 153
	.ascii "FIO0MASK3 (*(volatile uint8_t*)(0x3FFFC013))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9b	@ At line number 155
	.ascii "FIO0PIN (*(volatile uint32_t*)(0x3FFFC014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9c	@ At line number 156
	.ascii "FIO0PINL (*(volatile uint16_t*)(0x3FFFC014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9d	@ At line number 157
	.ascii "FIO0PINU (*(volatile uint16_t*)(0x3FFFC016))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9e	@ At line number 158
	.ascii "FIO0PIN0 (*(volatile uint8_t*)(0x3FFFC014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9f	@ At line number 159
	.ascii "FIO0PIN1 (*(volatile uint8_t*)(0x3FFFC015))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa0	@ At line number 160
	.ascii "FIO0PIN2 (*(volatile uint8_t*)(0x3FFFC016))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa1	@ At line number 161
	.ascii "FIO0PIN3 (*(volatile uint8_t*)(0x3FFFC017))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa3	@ At line number 163
	.ascii "FIO0SET (*(volatile uint32_t*)(0x3FFFC018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa4	@ At line number 164
	.ascii "FIO0SETL (*(volatile uint16_t*)(0x3FFFC018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa5	@ At line number 165
	.ascii "FIO0SETU (*(volatile uint16_t*)(0x3FFFC01A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa6	@ At line number 166
	.ascii "FIO0SET0 (*(volatile uint8_t*)(0x3FFFC018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa7	@ At line number 167
	.ascii "FIO0SET1 (*(volatile uint8_t*)(0x3FFFC019))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa8	@ At line number 168
	.ascii "FIO0SET2 (*(volatile uint8_t*)(0x3FFFC01A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa9	@ At line number 169
	.ascii "FIO0SET3 (*(volatile uint8_t*)(0x3FFFC01B))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xab	@ At line number 171
	.ascii "FIO0CLR (*(volatile uint32_t*)(0x3FFFC01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xac	@ At line number 172
	.ascii "FIO0CLRL (*(volatile uint16_t*)(0x3FFFC01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xad	@ At line number 173
	.ascii "FIO0CLRU (*(volatile uint16_t*)(0x3FFFC01E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xae	@ At line number 174
	.ascii "FIO0CLR0 (*(volatile uint8_t*)(0x3FFFC01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xaf	@ At line number 175
	.ascii "FIO0CLR1 (*(volatile uint8_t*)(0x3FFFC01D))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb0	@ At line number 176
	.ascii "FIO0CLR2 (*(volatile uint8_t*)(0x3FFFC01E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb1	@ At line number 177
	.ascii "FIO0CLR3 (*(volatile uint8_t*)(0x3FFFC01F))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb3	@ At line number 179
	.ascii "FIO1DIR (*(volatile uint32_t*)(0x3FFFC020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb4	@ At line number 180
	.ascii "FIO1DIRL (*(volatile uint16_t*)(0x3FFFC020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb5	@ At line number 181
	.ascii "FIO1DIRU (*(volatile uint16_t*)(0x3FFFC022))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb6	@ At line number 182
	.ascii "FIO1DIR0 (*(volatile uint8_t*)(0x3FFFC020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb7	@ At line number 183
	.ascii "FIO1DIR1 (*(volatile uint8_t*)(0x3FFFC021))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb8	@ At line number 184
	.ascii "FIO1DIR2 (*(volatile uint8_t*)(0x3FFFC022))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb9	@ At line number 185
	.ascii "FIO1DIR3 (*(volatile uint8_t*)(0x3FFFC023))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbb	@ At line number 187
	.ascii "FIO1MASK (*(volatile uint32_t*)(0x3FFFC030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbc	@ At line number 188
	.ascii "FIO1MASKL (*(volatile uint16_t*)(0x3FFFC030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbd	@ At line number 189
	.ascii "FIO1MASKU (*(volatile uint16_t*)(0x3FFFC032))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbe	@ At line number 190
	.ascii "FIO1MASK0 (*(volatile uint8_t*)(0x3FFFC030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbf	@ At line number 191
	.ascii "FIO1MASK1 (*(volatile uint8_t*)(0x3FFFC021))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc0	@ At line number 192
	.ascii "FIO1MASK2 (*(volatile uint8_t*)(0x3FFFC032))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc1	@ At line number 193
	.ascii "FIO1MASK3 (*(volatile uint8_t*)(0x3FFFC033))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc3	@ At line number 195
	.ascii "FIO1PIN (*(volatile uint32_t*)(0x3FFFC034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc4	@ At line number 196
	.ascii "FIO1PINL (*(volatile uint16_t*)(0x3FFFC034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc5	@ At line number 197
	.ascii "FIO1PINU (*(volatile uint16_t*)(0x3FFFC036))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc6	@ At line number 198
	.ascii "FIO1PIN0 (*(volatile uint8_t*)(0x3FFFC034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc7	@ At line number 199
	.ascii "FIO1PIN1 (*(volatile uint8_t*)(0x3FFFC025))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc8	@ At line number 200
	.ascii "FIO1PIN2 (*(volatile uint8_t*)(0x3FFFC036))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xc9	@ At line number 201
	.ascii "FIO1PIN3 (*(volatile uint8_t*)(0x3FFFC037))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xcb	@ At line number 203
	.ascii "FIO1SET (*(volatile uint32_t*)(0x3FFFC038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xcc	@ At line number 204
	.ascii "FIO1SETL (*(volatile uint16_t*)(0x3FFFC038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xcd	@ At line number 205
	.ascii "FIO1SETU (*(volatile uint16_t*)(0x3FFFC03A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xce	@ At line number 206
	.ascii "FIO1SET0 (*(volatile uint8_t*)(0x3FFFC038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xcf	@ At line number 207
	.ascii "FIO1SET1 (*(volatile uint8_t*)(0x3FFFC029))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd0	@ At line number 208
	.ascii "FIO1SET2 (*(volatile uint8_t*)(0x3FFFC03A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd1	@ At line number 209
	.ascii "FIO1SET3 (*(volatile uint8_t*)(0x3FFFC03B))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd3	@ At line number 211
	.ascii "FIO1CLR (*(volatile uint32_t*)(0x3FFFC03C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd4	@ At line number 212
	.ascii "FIO1CLRL (*(volatile uint16_t*)(0x3FFFC03C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd5	@ At line number 213
	.ascii "FIO1CLRU (*(volatile uint16_t*)(0x3FFFC03E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd6	@ At line number 214
	.ascii "FIO1CLR0 (*(volatile uint8_t*)(0x3FFFC03C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd7	@ At line number 215
	.ascii "FIO1CLR1 (*(volatile uint8_t*)(0x3FFFC02D))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd8	@ At line number 216
	.ascii "FIO1CLR2 (*(volatile uint8_t*)(0x3FFFC03E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd9	@ At line number 217
	.ascii "FIO1CLR3 (*(volatile uint8_t*)(0x3FFFC03F))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdb	@ At line number 219
	.ascii "FIO2DIR (*(volatile uint32_t*)(0x3FFFC040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdc	@ At line number 220
	.ascii "FIO2DIRL (*(volatile uint16_t*)(0x3FFFC040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdd	@ At line number 221
	.ascii "FIO2DIRU (*(volatile uint16_t*)(0x3FFFC042))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xde	@ At line number 222
	.ascii "FIO2DIR0 (*(volatile uint8_t*)(0x3FFFC040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdf	@ At line number 223
	.ascii "FIO2DIR1 (*(volatile uint8_t*)(0x3FFFC041))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe0	@ At line number 224
	.ascii "FIO2DIR2 (*(volatile uint8_t*)(0x3FFFC042))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe1	@ At line number 225
	.ascii "FIO2DIR3 (*(volatile uint8_t*)(0x3FFFC043))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe3	@ At line number 227
	.ascii "FIO2MASK (*(volatile uint32_t*)(0x3FFFC050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe4	@ At line number 228
	.ascii "FIO2MASKL (*(volatile uint16_t*)(0x3FFFC050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe5	@ At line number 229
	.ascii "FIO2MASKU (*(volatile uint16_t*)(0x3FFFC052))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe6	@ At line number 230
	.ascii "FIO2MASK0 (*(volatile uint8_t*)(0x3FFFC050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe7	@ At line number 231
	.ascii "FIO2MASK1 (*(volatile uint8_t*)(0x3FFFC051))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe8	@ At line number 232
	.ascii "FIO2MASK2 (*(volatile uint8_t*)(0x3FFFC052))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe9	@ At line number 233
	.ascii "FIO2MASK3 (*(volatile uint8_t*)(0x3FFFC053))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xeb	@ At line number 235
	.ascii "FIO2PIN (*(volatile uint32_t*)(0x3FFFC054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xec	@ At line number 236
	.ascii "FIO2PINL (*(volatile uint16_t*)(0x3FFFC054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xed	@ At line number 237
	.ascii "FIO2PINU (*(volatile uint16_t*)(0x3FFFC056))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xee	@ At line number 238
	.ascii "FIO2PIN0 (*(volatile uint8_t*)(0x3FFFC054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xef	@ At line number 239
	.ascii "FIO2PIN1 (*(volatile uint8_t*)(0x3FFFC055))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf0	@ At line number 240
	.ascii "FIO2PIN2 (*(volatile uint8_t*)(0x3FFFC056))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf1	@ At line number 241
	.ascii "FIO2PIN3 (*(volatile uint8_t*)(0x3FFFC057))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf3	@ At line number 243
	.ascii "FIO2SET (*(volatile uint32_t*)(0x3FFFC058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf4	@ At line number 244
	.ascii "FIO2SETL (*(volatile uint16_t*)(0x3FFFC058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf5	@ At line number 245
	.ascii "FIO2SETU (*(volatile uint16_t*)(0x3FFFC05A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf6	@ At line number 246
	.ascii "FIO2SET0 (*(volatile uint8_t*)(0x3FFFC058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf7	@ At line number 247
	.ascii "FIO2SET1 (*(volatile uint8_t*)(0x3FFFC059))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf8	@ At line number 248
	.ascii "FIO2SET2 (*(volatile uint8_t*)(0x3FFFC05A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf9	@ At line number 249
	.ascii "FIO2SET3 (*(volatile uint8_t*)(0x3FFFC05B))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfb	@ At line number 251
	.ascii "FIO2CLR (*(volatile uint32_t*)(0x3FFFC05C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfc	@ At line number 252
	.ascii "FIO2CLRL (*(volatile uint16_t*)(0x3FFFC05C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfd	@ At line number 253
	.ascii "FIO2CLRU (*(volatile uint16_t*)(0x3FFFC05E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xfe	@ At line number 254
	.ascii "FIO2CLR0 (*(volatile uint8_t*)(0x3FFFC05C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xff	@ At line number 255
	.ascii "FIO2CLR1 (*(volatile uint8_t*)(0x3FFFC05D))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x100	@ At line number 256
	.ascii "FIO2CLR2 (*(volatile uint8_t*)(0x3FFFC05E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x101	@ At line number 257
	.ascii "FIO2CLR3 (*(volatile uint8_t*)(0x3FFFC05F))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x103	@ At line number 259
	.ascii "FIO3DIR (*(volatile uint32_t*)(0x3FFFC060))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x104	@ At line number 260
	.ascii "FIO3DIRL (*(volatile uint16_t*)(0x3FFFC060))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x105	@ At line number 261
	.ascii "FIO3DIRU (*(volatile uint16_t*)(0x3FFFC062))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x106	@ At line number 262
	.ascii "FIO3DIR0 (*(volatile uint8_t*)(0x3FFFC060))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x107	@ At line number 263
	.ascii "FIO3DIR1 (*(volatile uint8_t*)(0x3FFFC061))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x108	@ At line number 264
	.ascii "FIO3DIR2 (*(volatile uint8_t*)(0x3FFFC062))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x109	@ At line number 265
	.ascii "FIO3DIR3 (*(volatile uint8_t*)(0x3FFFC063))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10b	@ At line number 267
	.ascii "FIO3MASK (*(volatile uint32_t*)(0x3FFFC070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10c	@ At line number 268
	.ascii "FIO3MASKL (*(volatile uint16_t*)(0x3FFFC070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10d	@ At line number 269
	.ascii "FIO3MASKU (*(volatile uint16_t*)(0x3FFFC072))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10e	@ At line number 270
	.ascii "FIO3MASK0 (*(volatile uint8_t*)(0x3FFFC070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x10f	@ At line number 271
	.ascii "FIO3MASK1 (*(volatile uint8_t*)(0x3FFFC071))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x110	@ At line number 272
	.ascii "FIO3MASK2 (*(volatile uint8_t*)(0x3FFFC072))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x111	@ At line number 273
	.ascii "FIO3MASK3 (*(volatile uint8_t*)(0x3FFFC073))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x113	@ At line number 275
	.ascii "FIO3PIN (*(volatile uint32_t*)(0x3FFFC074))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x114	@ At line number 276
	.ascii "FIO3PINL (*(volatile uint16_t*)(0x3FFFC074))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x115	@ At line number 277
	.ascii "FIO3PINU (*(volatile uint16_t*)(0x3FFFC076))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x116	@ At line number 278
	.ascii "FIO3PIN0 (*(volatile uint8_t*)(0x3FFFC074))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x117	@ At line number 279
	.ascii "FIO3PIN1 (*(volatile uint8_t*)(0x3FFFC075))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x118	@ At line number 280
	.ascii "FIO3PIN2 (*(volatile uint8_t*)(0x3FFFC076))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x119	@ At line number 281
	.ascii "FIO3PIN3 (*(volatile uint8_t*)(0x3FFFC077))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11b	@ At line number 283
	.ascii "FIO3SET (*(volatile uint32_t*)(0x3FFFC078))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11c	@ At line number 284
	.ascii "FIO3SETL (*(volatile uint16_t*)(0x3FFFC078))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11d	@ At line number 285
	.ascii "FIO3SETU (*(volatile uint16_t*)(0x3FFFC07A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11e	@ At line number 286
	.ascii "FIO3SET0 (*(volatile uint8_t*)(0x3FFFC078))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11f	@ At line number 287
	.ascii "FIO3SET1 (*(volatile uint8_t*)(0x3FFFC079))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x120	@ At line number 288
	.ascii "FIO3SET2 (*(volatile uint8_t*)(0x3FFFC07A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x121	@ At line number 289
	.ascii "FIO3SET3 (*(volatile uint8_t*)(0x3FFFC07B))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x123	@ At line number 291
	.ascii "FIO3CLR (*(volatile uint32_t*)(0x3FFFC07C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x124	@ At line number 292
	.ascii "FIO3CLRL (*(volatile uint16_t*)(0x3FFFC07C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x125	@ At line number 293
	.ascii "FIO3CLRU (*(volatile uint16_t*)(0x3FFFC07E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x126	@ At line number 294
	.ascii "FIO3CLR0 (*(volatile uint8_t*)(0x3FFFC07C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x127	@ At line number 295
	.ascii "FIO3CLR1 (*(volatile uint8_t*)(0x3FFFC07D))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x128	@ At line number 296
	.ascii "FIO3CLR2 (*(volatile uint8_t*)(0x3FFFC07E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x129	@ At line number 297
	.ascii "FIO3CLR3 (*(volatile uint8_t*)(0x3FFFC07F))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12b	@ At line number 299
	.ascii "FIO4DIR (*(volatile uint32_t*)(0x3FFFC080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12c	@ At line number 300
	.ascii "FIO4DIRL (*(volatile uint16_t*)(0x3FFFC080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12d	@ At line number 301
	.ascii "FIO4DIRU (*(volatile uint16_t*)(0x3FFFC082))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12e	@ At line number 302
	.ascii "FIO4DIR0 (*(volatile uint8_t*)(0x3FFFC080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12f	@ At line number 303
	.ascii "FIO4DIR1 (*(volatile uint8_t*)(0x3FFFC081))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x130	@ At line number 304
	.ascii "FIO4DIR2 (*(volatile uint8_t*)(0x3FFFC082))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x131	@ At line number 305
	.ascii "FIO4DIR3 (*(volatile uint8_t*)(0x3FFFC083))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x133	@ At line number 307
	.ascii "FIO4MASK (*(volatile uint32_t*)(0x3FFFC090))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x134	@ At line number 308
	.ascii "FIO4MASKL (*(volatile uint16_t*)(0x3FFFC090))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x135	@ At line number 309
	.ascii "FIO4MASKU (*(volatile uint16_t*)(0x3FFFC092))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x136	@ At line number 310
	.ascii "FIO4MASK0 (*(volatile uint8_t*)(0x3FFFC090))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x137	@ At line number 311
	.ascii "FIO4MASK1 (*(volatile uint8_t*)(0x3FFFC091))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x138	@ At line number 312
	.ascii "FIO4MASK2 (*(volatile uint8_t*)(0x3FFFC092))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x139	@ At line number 313
	.ascii "FIO4MASK3 (*(volatile uint8_t*)(0x3FFFC093))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13b	@ At line number 315
	.ascii "FIO4PIN (*(volatile uint32_t*)(0x3FFFC094))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13c	@ At line number 316
	.ascii "FIO4PINL (*(volatile uint16_t*)(0x3FFFC094))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13d	@ At line number 317
	.ascii "FIO4PINU (*(volatile uint16_t*)(0x3FFFC096))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13e	@ At line number 318
	.ascii "FIO4PIN0 (*(volatile uint8_t*)(0x3FFFC094))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x13f	@ At line number 319
	.ascii "FIO4PIN1 (*(volatile uint8_t*)(0x3FFFC095))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x140	@ At line number 320
	.ascii "FIO4PIN2 (*(volatile uint8_t*)(0x3FFFC096))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x141	@ At line number 321
	.ascii "FIO4PIN3 (*(volatile uint8_t*)(0x3FFFC097))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x143	@ At line number 323
	.ascii "FIO4SET (*(volatile uint32_t*)(0x3FFFC098))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x144	@ At line number 324
	.ascii "FIO4SETL (*(volatile uint16_t*)(0x3FFFC098))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x145	@ At line number 325
	.ascii "FIO4SETU (*(volatile uint16_t*)(0x3FFFC09A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x146	@ At line number 326
	.ascii "FIO4SET0 (*(volatile uint8_t*)(0x3FFFC098))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x147	@ At line number 327
	.ascii "FIO4SET1 (*(volatile uint8_t*)(0x3FFFC099))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x148	@ At line number 328
	.ascii "FIO4SET2 (*(volatile uint8_t*)(0x3FFFC09A))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x149	@ At line number 329
	.ascii "FIO4SET3 (*(volatile uint8_t*)(0x3FFFC09B))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14b	@ At line number 331
	.ascii "FIO4CLR (*(volatile uint32_t*)(0x3FFFC09C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14c	@ At line number 332
	.ascii "FIO4CLRL (*(volatile uint16_t*)(0x3FFFC09C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14d	@ At line number 333
	.ascii "FIO4CLRU (*(volatile uint16_t*)(0x3FFFC09E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14e	@ At line number 334
	.ascii "FIO4CLR0 (*(volatile uint8_t*)(0x3FFFC09C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14f	@ At line number 335
	.ascii "FIO4CLR1 (*(volatile uint8_t*)(0x3FFFC09D))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x150	@ At line number 336
	.ascii "FIO4CLR2 (*(volatile uint8_t*)(0x3FFFC09E))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x151	@ At line number 337
	.ascii "FIO4CLR3 (*(volatile uint8_t*)(0x3FFFC09F))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x153	@ At line number 339
	.ascii "MAMCR (*(volatile uint32_t*)(0xE01FC000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x154	@ At line number 340
	.ascii "MAMTIM (*(volatile uint32_t*)(0xE01FC004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x155	@ At line number 341
	.ascii "MEMMAP (*(volatile uint32_t*)(0xE01FC040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x157	@ At line number 343
	.ascii "PLLCON (*(volatile uint32_t*)(0xE01FC080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x158	@ At line number 344
	.ascii "PLLCFG (*(volatile uint32_t*)(0xE01FC084))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x159	@ At line number 345
	.ascii "PLLSTAT (*(volatile uint32_t*)(0xE01FC088))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15a	@ At line number 346
	.ascii "PLLFEED (*(volatile uint32_t*)(0xE01FC08C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15c	@ At line number 348
	.ascii "PCON (*(volatile uint32_t*)(0xE01FC0C0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15d	@ At line number 349
	.ascii "PCONP (*(volatile uint32_t*)(0xE01FC0C4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15f	@ At line number 351
	.ascii "CCLKCFG (*(volatile uint32_t*)(0xE01FC104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x160	@ At line number 352
	.ascii "USBCLKCFG (*(volatile uint32_t*)(0xE01FC108))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x161	@ At line number 353
	.ascii "CLKSRCSEL (*(volatile uint32_t*)(0xE01FC10C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x162	@ At line number 354
	.ascii "PCLKSEL ( (volatile uint32_t*)(0xE01FC1A8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x163	@ At line number 355
	.ascii "PCLKSEL0 (*(volatile uint32_t*)(0xE01FC1A8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x164	@ At line number 356
	.ascii "PCLKSEL1 (*(volatile uint32_t*)(0xE01FC1AC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x166	@ At line number 358
	.ascii "EXTINT (*(volatile uint32_t*)(0xE01FC140))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x167	@ At line number 359
	.ascii "INTWAKE (*(volatile uint32_t*)(0xE01FC144))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x168	@ At line number 360
	.ascii "EXTMODE (*(volatile uint32_t*)(0xE01FC148))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x169	@ At line number 361
	.ascii "EXTPOLAR (*(volatile uint32_t*)(0xE01FC14C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16b	@ At line number 363
	.ascii "RSIR (*(volatile uint32_t*)(0xE01FC180))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16d	@ At line number 365
	.ascii "CSPR (*(volatile uint32_t*)(0xE01FC184))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x16f	@ At line number 367
	.ascii "AHBCFG1 (*(volatile uint32_t*)(0xE01FC188))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x170	@ At line number 368
	.ascii "AHBCFG2 (*(volatile uint32_t*)(0xE01FC18C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x172	@ At line number 370
	.ascii "SCS (*(volatile uint32_t*)(0xE01FC1A0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x174	@ At line number 372
	.ascii "EMC_CTRL (*(volatile uint32_t*)(0xFFE08000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x175	@ At line number 373
	.ascii "EMC_STAT (*(volatile uint32_t*)(0xFFE08004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x176	@ At line number 374
	.ascii "EMC_CONFIG (*(volatile uint32_t*)(0xFFE08008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x178	@ At line number 376
	.ascii "EMC_DYN_CTRL (*(volatile uint32_t*)(0xFFE08020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x179	@ At line number 377
	.ascii "EMC_DYN_RFSH (*(volatile uint32_t*)(0xFFE08024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17a	@ At line number 378
	.ascii "EMC_DYN_RD_CFG (*(volatile uint32_t*)(0xFFE08028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17b	@ At line number 379
	.ascii "EMC_DYN_RP (*(volatile uint32_t*)(0xFFE08030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17c	@ At line number 380
	.ascii "EMC_DYN_RAS (*(volatile uint32_t*)(0xFFE08034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17d	@ At line number 381
	.ascii "EMC_DYN_SREX (*(volatile uint32_t*)(0xFFE08038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17e	@ At line number 382
	.ascii "EMC_DYN_APR (*(volatile uint32_t*)(0xFFE0803C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x17f	@ At line number 383
	.ascii "EMC_DYN_DAL (*(volatile uint32_t*)(0xFFE08040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x180	@ At line number 384
	.ascii "EMC_DYN_WR (*(volatile uint32_t*)(0xFFE08044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x181	@ At line number 385
	.ascii "EMC_DYN_RC (*(volatile uint32_t*)(0xFFE08048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x182	@ At line number 386
	.ascii "EMC_DYN_RFC (*(volatile uint32_t*)(0xFFE0804C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x183	@ At line number 387
	.ascii "EMC_DYN_XSR (*(volatile uint32_t*)(0xFFE08050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x184	@ At line number 388
	.ascii "EMC_DYN_RRD (*(volatile uint32_t*)(0xFFE08054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x185	@ At line number 389
	.ascii "EMC_DYN_MRD (*(volatile uint32_t*)(0xFFE08058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x187	@ At line number 391
	.ascii "EMC_DYN_CFG0 (*(volatile uint32_t*)(0xFFE08100))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x188	@ At line number 392
	.ascii "EMC_DYN_RASCAS0 (*(volatile uint32_t*)(0xFFE08104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x189	@ At line number 393
	.ascii "EMC_DYN_CFG1 (*(volatile uint32_t*)(0xFFE08140))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18a	@ At line number 394
	.ascii "EMC_DYN_RASCAS1 (*(volatile uint32_t*)(0xFFE08144))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18b	@ At line number 395
	.ascii "EMC_DYN_CFG2 (*(volatile uint32_t*)(0xFFE08160))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18c	@ At line number 396
	.ascii "EMC_DYN_RASCAS2 (*(volatile uint32_t*)(0xFFE08164))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18d	@ At line number 397
	.ascii "EMC_DYN_CFG3 (*(volatile uint32_t*)(0xFFE08180))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x18e	@ At line number 398
	.ascii "EMC_DYN_RASCAS3 (*(volatile uint32_t*)(0xFFE08184))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x190	@ At line number 400
	.ascii "EMC_STA_CFG0 (*(volatile uint32_t*)(0xFFE08200))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x191	@ At line number 401
	.ascii "EMC_STA_WAITWEN0 (*(volatile uint32_t*)(0xFFE08204))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x192	@ At line number 402
	.ascii "EMC_STA_WAITOEN0 (*(volatile uint32_t*)(0xFFE08208))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x193	@ At line number 403
	.ascii "EMC_STA_WAITRD0 (*(volatile uint32_t*)(0xFFE0820C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x194	@ At line number 404
	.ascii "EMC_STA_WAITPAGE0 (*(volatile uint32_t*)(0xFFE08210))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x195	@ At line number 405
	.ascii "EMC_STA_WAITWR0 (*(volatile uint32_t*)(0xFFE08214))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x196	@ At line number 406
	.ascii "EMC_STA_WAITTURN0 (*(volatile uint32_t*)(0xFFE08218))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x198	@ At line number 408
	.ascii "EMC_STA_CFG1 (*(volatile uint32_t*)(0xFFE08220))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x199	@ At line number 409
	.ascii "EMC_STA_WAITWEN1 (*(volatile uint32_t*)(0xFFE08224))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19a	@ At line number 410
	.ascii "EMC_STA_WAITOEN1 (*(volatile uint32_t*)(0xFFE08228))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19b	@ At line number 411
	.ascii "EMC_STA_WAITRD1 (*(volatile uint32_t*)(0xFFE0822C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19c	@ At line number 412
	.ascii "EMC_STA_WAITPAGE1 (*(volatile uint32_t*)(0xFFE08230))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19d	@ At line number 413
	.ascii "EMC_STA_WAITWR1 (*(volatile uint32_t*)(0xFFE08234))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x19e	@ At line number 414
	.ascii "EMC_STA_WAITTURN1 (*(volatile uint32_t*)(0xFFE08238))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a0	@ At line number 416
	.ascii "EMC_STA_CFG2 (*(volatile uint32_t*)(0xFFE08240))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a1	@ At line number 417
	.ascii "EMC_STA_WAITWEN2 (*(volatile uint32_t*)(0xFFE08244))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a2	@ At line number 418
	.ascii "EMC_STA_WAITOEN2 (*(volatile uint32_t*)(0xFFE08248))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a3	@ At line number 419
	.ascii "EMC_STA_WAITRD2 (*(volatile uint32_t*)(0xFFE0824C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a4	@ At line number 420
	.ascii "EMC_STA_WAITPAGE2 (*(volatile uint32_t*)(0xFFE08250))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a5	@ At line number 421
	.ascii "EMC_STA_WAITWR2 (*(volatile uint32_t*)(0xFFE08254))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a6	@ At line number 422
	.ascii "EMC_STA_WAITTURN2 (*(volatile uint32_t*)(0xFFE08258))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a8	@ At line number 424
	.ascii "EMC_STA_CFG3 (*(volatile uint32_t*)(0xFFE08260))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1a9	@ At line number 425
	.ascii "EMC_STA_WAITWEN3 (*(volatile uint32_t*)(0xFFE08264))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1aa	@ At line number 426
	.ascii "EMC_STA_WAITOEN3 (*(volatile uint32_t*)(0xFFE08268))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ab	@ At line number 427
	.ascii "EMC_STA_WAITRD3 (*(volatile uint32_t*)(0xFFE0826C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ac	@ At line number 428
	.ascii "EMC_STA_WAITPAGE3 (*(volatile uint32_t*)(0xFFE08270))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ad	@ At line number 429
	.ascii "EMC_STA_WAITWR3 (*(volatile uint32_t*)(0xFFE08274))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ae	@ At line number 430
	.ascii "EMC_STA_WAITTURN3 (*(volatile uint32_t*)(0xFFE08278))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b0	@ At line number 432
	.ascii "EMC_STA_EXT_WAIT (*(volatile uint32_t*)(0xFFE08880))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b2	@ At line number 434
	.ascii "T0IR (*(volatile uint32_t*)(0xE0004000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b3	@ At line number 435
	.ascii "T0TCR (*(volatile uint32_t*)(0xE0004004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b4	@ At line number 436
	.ascii "T0TC (*(volatile uint32_t*)(0xE0004008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b5	@ At line number 437
	.ascii "T0PR (*(volatile uint32_t*)(0xE000400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b6	@ At line number 438
	.ascii "T0PC (*(volatile uint32_t*)(0xE0004010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b7	@ At line number 439
	.ascii "T0MCR (*(volatile uint32_t*)(0xE0004014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b8	@ At line number 440
	.ascii "T0MR0 (*(volatile uint32_t*)(0xE0004018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1b9	@ At line number 441
	.ascii "T0MR1 (*(volatile uint32_t*)(0xE000401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ba	@ At line number 442
	.ascii "T0MR2 (*(volatile uint32_t*)(0xE0004020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1bb	@ At line number 443
	.ascii "T0MR3 (*(volatile uint32_t*)(0xE0004024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1bc	@ At line number 444
	.ascii "T0CCR (*(volatile uint32_t*)(0xE0004028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1bd	@ At line number 445
	.ascii "T0CR0 (*(volatile uint32_t*)(0xE000402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1be	@ At line number 446
	.ascii "T0CR1 (*(volatile uint32_t*)(0xE0004030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1bf	@ At line number 447
	.ascii "T0CR2 (*(volatile uint32_t*)(0xE0004034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c0	@ At line number 448
	.ascii "T0CR3 (*(volatile uint32_t*)(0xE0004038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c1	@ At line number 449
	.ascii "T0EMR (*(volatile uint32_t*)(0xE000403C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c2	@ At line number 450
	.ascii "T0CTCR (*(volatile uint32_t*)(0xE0004070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c4	@ At line number 452
	.ascii "T1IR (*(volatile uint32_t*)(0xE0008000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c5	@ At line number 453
	.ascii "T1TCR (*(volatile uint32_t*)(0xE0008004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c6	@ At line number 454
	.ascii "T1TC (*(volatile uint32_t*)(0xE0008008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c7	@ At line number 455
	.ascii "T1PR (*(volatile uint32_t*)(0xE000800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c8	@ At line number 456
	.ascii "T1PC (*(volatile uint32_t*)(0xE0008010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c9	@ At line number 457
	.ascii "T1MCR (*(volatile uint32_t*)(0xE0008014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ca	@ At line number 458
	.ascii "T1MR0 (*(volatile uint32_t*)(0xE0008018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1cb	@ At line number 459
	.ascii "T1MR1 (*(volatile uint32_t*)(0xE000801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1cc	@ At line number 460
	.ascii "T1MR2 (*(volatile uint32_t*)(0xE0008020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1cd	@ At line number 461
	.ascii "T1MR3 (*(volatile uint32_t*)(0xE0008024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ce	@ At line number 462
	.ascii "T1CCR (*(volatile uint32_t*)(0xE0008028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1cf	@ At line number 463
	.ascii "T1CR0 (*(volatile uint32_t*)(0xE000802C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d0	@ At line number 464
	.ascii "T1CR1 (*(volatile uint32_t*)(0xE0008030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d1	@ At line number 465
	.ascii "T1CR2 (*(volatile uint32_t*)(0xE0008034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d2	@ At line number 466
	.ascii "T1CR3 (*(volatile uint32_t*)(0xE0008038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d3	@ At line number 467
	.ascii "T1EMR (*(volatile uint32_t*)(0xE000803C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d4	@ At line number 468
	.ascii "T1CTCR (*(volatile uint32_t*)(0xE0008070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d6	@ At line number 470
	.ascii "T2IR (*(volatile uint32_t*)(0xE0070000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d7	@ At line number 471
	.ascii "T2TCR (*(volatile uint32_t*)(0xE0070004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d8	@ At line number 472
	.ascii "T2TC (*(volatile uint32_t*)(0xE0070008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1d9	@ At line number 473
	.ascii "T2PR (*(volatile uint32_t*)(0xE007000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1da	@ At line number 474
	.ascii "T2PC (*(volatile uint32_t*)(0xE0070010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1db	@ At line number 475
	.ascii "T2MCR (*(volatile uint32_t*)(0xE0070014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1dc	@ At line number 476
	.ascii "T2MR0 (*(volatile uint32_t*)(0xE0070018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1dd	@ At line number 477
	.ascii "T2MR1 (*(volatile uint32_t*)(0xE007001C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1de	@ At line number 478
	.ascii "T2MR2 (*(volatile uint32_t*)(0xE0070020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1df	@ At line number 479
	.ascii "T2MR3 (*(volatile uint32_t*)(0xE0070024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e0	@ At line number 480
	.ascii "T2CCR (*(volatile uint32_t*)(0xE0070028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e1	@ At line number 481
	.ascii "T2CR0 (*(volatile uint32_t*)(0xE007002C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e2	@ At line number 482
	.ascii "T2CR1 (*(volatile uint32_t*)(0xE0070030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e3	@ At line number 483
	.ascii "T2CR2 (*(volatile uint32_t*)(0xE0070034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e4	@ At line number 484
	.ascii "T2CR3 (*(volatile uint32_t*)(0xE0070038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e5	@ At line number 485
	.ascii "T2EMR (*(volatile uint32_t*)(0xE007003C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e6	@ At line number 486
	.ascii "T2CTCR (*(volatile uint32_t*)(0xE0070070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e8	@ At line number 488
	.ascii "T3IR (*(volatile uint32_t*)(0xE0074000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1e9	@ At line number 489
	.ascii "T3TCR (*(volatile uint32_t*)(0xE0074004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ea	@ At line number 490
	.ascii "T3TC (*(volatile uint32_t*)(0xE0074008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1eb	@ At line number 491
	.ascii "T3PR (*(volatile uint32_t*)(0xE007400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ec	@ At line number 492
	.ascii "T3PC (*(volatile uint32_t*)(0xE0074010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ed	@ At line number 493
	.ascii "T3MCR (*(volatile uint32_t*)(0xE0074014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ee	@ At line number 494
	.ascii "T3MR0 (*(volatile uint32_t*)(0xE0074018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ef	@ At line number 495
	.ascii "T3MR1 (*(volatile uint32_t*)(0xE007401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f0	@ At line number 496
	.ascii "T3MR2 (*(volatile uint32_t*)(0xE0074020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f1	@ At line number 497
	.ascii "T3MR3 (*(volatile uint32_t*)(0xE0074024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f2	@ At line number 498
	.ascii "T3CCR (*(volatile uint32_t*)(0xE0074028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f3	@ At line number 499
	.ascii "T3CR0 (*(volatile uint32_t*)(0xE007402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f4	@ At line number 500
	.ascii "T3CR1 (*(volatile uint32_t*)(0xE0074030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f5	@ At line number 501
	.ascii "T3CR2 (*(volatile uint32_t*)(0xE0074034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f6	@ At line number 502
	.ascii "T3CR3 (*(volatile uint32_t*)(0xE0074038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f7	@ At line number 503
	.ascii "T3EMR (*(volatile uint32_t*)(0xE007403C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1f8	@ At line number 504
	.ascii "T3CTCR (*(volatile uint32_t*)(0xE0074070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fa	@ At line number 506
	.ascii "PWM0IR (*(volatile uint32_t*)(0xE0014000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fb	@ At line number 507
	.ascii "PWM0TCR (*(volatile uint32_t*)(0xE0014004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fc	@ At line number 508
	.ascii "PWM0TC (*(volatile uint32_t*)(0xE0014008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fd	@ At line number 509
	.ascii "PWM0PR (*(volatile uint32_t*)(0xE001400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1fe	@ At line number 510
	.ascii "PWM0PC (*(volatile uint32_t*)(0xE0014010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1ff	@ At line number 511
	.ascii "PWM0MCR (*(volatile uint32_t*)(0xE0014014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x200	@ At line number 512
	.ascii "PWM0MR0 (*(volatile uint32_t*)(0xE0014018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x201	@ At line number 513
	.ascii "PWM0MR1 (*(volatile uint32_t*)(0xE001401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x202	@ At line number 514
	.ascii "PWM0MR2 (*(volatile uint32_t*)(0xE0014020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x203	@ At line number 515
	.ascii "PWM0MR3 (*(volatile uint32_t*)(0xE0014024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x204	@ At line number 516
	.ascii "PWM0CCR (*(volatile uint32_t*)(0xE0014028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x205	@ At line number 517
	.ascii "PWM0CR0 (*(volatile uint32_t*)(0xE001402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x206	@ At line number 518
	.ascii "PWM0CR1 (*(volatile uint32_t*)(0xE0014030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x207	@ At line number 519
	.ascii "PWM0CR2 (*(volatile uint32_t*)(0xE0014034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x208	@ At line number 520
	.ascii "PWM0CR3 (*(volatile uint32_t*)(0xE0014038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x209	@ At line number 521
	.ascii "PWM0EMR (*(volatile uint32_t*)(0xE001403C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20a	@ At line number 522
	.ascii "PWM0MR4 (*(volatile uint32_t*)(0xE0014040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20b	@ At line number 523
	.ascii "PWM0MR5 (*(volatile uint32_t*)(0xE0014044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20c	@ At line number 524
	.ascii "PWM0MR6 (*(volatile uint32_t*)(0xE0014048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20d	@ At line number 525
	.ascii "PWM0PCR (*(volatile uint32_t*)(0xE001404C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20e	@ At line number 526
	.ascii "PWM0LER (*(volatile uint32_t*)(0xE0014050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x20f	@ At line number 527
	.ascii "PWM0CTCR (*(volatile uint32_t*)(0xE0014070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x211	@ At line number 529
	.ascii "PWM1IR (*(volatile uint32_t*)(0xE0018000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x212	@ At line number 530
	.ascii "PWM1TCR (*(volatile uint32_t*)(0xE0018004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x213	@ At line number 531
	.ascii "PWM1TC (*(volatile uint32_t*)(0xE0018008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x214	@ At line number 532
	.ascii "PWM1PR (*(volatile uint32_t*)(0xE001800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x215	@ At line number 533
	.ascii "PWM1PC (*(volatile uint32_t*)(0xE0018010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x216	@ At line number 534
	.ascii "PWM1MCR (*(volatile uint32_t*)(0xE0018014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x217	@ At line number 535
	.ascii "PWM1MR0 (*(volatile uint32_t*)(0xE0018018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x218	@ At line number 536
	.ascii "PWM1MR1 (*(volatile uint32_t*)(0xE001801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x219	@ At line number 537
	.ascii "PWM1MR2 (*(volatile uint32_t*)(0xE0018020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21a	@ At line number 538
	.ascii "PWM1MR3 (*(volatile uint32_t*)(0xE0018024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21b	@ At line number 539
	.ascii "PWM1CCR (*(volatile uint32_t*)(0xE0018028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21c	@ At line number 540
	.ascii "PWM1CR0 (*(volatile uint32_t*)(0xE001802C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21d	@ At line number 541
	.ascii "PWM1CR1 (*(volatile uint32_t*)(0xE0018030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21e	@ At line number 542
	.ascii "PWM1CR2 (*(volatile uint32_t*)(0xE0018034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x21f	@ At line number 543
	.ascii "PWM1CR3 (*(volatile uint32_t*)(0xE0018038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x220	@ At line number 544
	.ascii "PWM1EMR (*(volatile uint32_t*)(0xE001803C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x221	@ At line number 545
	.ascii "PWM1MR4 (*(volatile uint32_t*)(0xE0018040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x222	@ At line number 546
	.ascii "PWM1MR5 (*(volatile uint32_t*)(0xE0018044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x223	@ At line number 547
	.ascii "PWM1MR6 (*(volatile uint32_t*)(0xE0018048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x224	@ At line number 548
	.ascii "PWM1PCR (*(volatile uint32_t*)(0xE001804C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x225	@ At line number 549
	.ascii "PWM1LER (*(volatile uint32_t*)(0xE0018050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x226	@ At line number 550
	.ascii "PWM1CTCR (*(volatile uint32_t*)(0xE0018070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x228	@ At line number 552
	.ascii "U0RBR (*(volatile uint32_t*)(0xE000C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x229	@ At line number 553
	.ascii "U0THR (*(volatile uint32_t*)(0xE000C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22a	@ At line number 554
	.ascii "U0DLL (*(volatile uint32_t*)(0xE000C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22b	@ At line number 555
	.ascii "U0DLM (*(volatile uint32_t*)(0xE000C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22c	@ At line number 556
	.ascii "U0IER (*(volatile uint32_t*)(0xE000C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22d	@ At line number 557
	.ascii "U0IIR (*(volatile uint32_t*)(0xE000C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22e	@ At line number 558
	.ascii "U0FCR (*(volatile uint32_t*)(0xE000C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x22f	@ At line number 559
	.ascii "U0LCR (*(volatile uint32_t*)(0xE000C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x230	@ At line number 560
	.ascii "U0LSR (*(volatile uint32_t*)(0xE000C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x231	@ At line number 561
	.ascii "U0SCR (*(volatile uint32_t*)(0xE000C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x232	@ At line number 562
	.ascii "U0ACR (*(volatile uint32_t*)(0xE000C020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x233	@ At line number 563
	.ascii "U0ICR (*(volatile uint32_t*)(0xE000C024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x234	@ At line number 564
	.ascii "U0FDR (*(volatile uint32_t*)(0xE000C028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x235	@ At line number 565
	.ascii "U0TER (*(volatile uint32_t*)(0xE000C030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x237	@ At line number 567
	.ascii "U1RBR (*(volatile uint32_t*)(0xE0010000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x238	@ At line number 568
	.ascii "U1THR (*(volatile uint32_t*)(0xE0010000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x239	@ At line number 569
	.ascii "U1DLL (*(volatile uint32_t*)(0xE0010000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23a	@ At line number 570
	.ascii "U1DLM (*(volatile uint32_t*)(0xE0010004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23b	@ At line number 571
	.ascii "U1IER (*(volatile uint32_t*)(0xE0010004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23c	@ At line number 572
	.ascii "U1IIR (*(volatile uint32_t*)(0xE0010008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23d	@ At line number 573
	.ascii "U1FCR (*(volatile uint32_t*)(0xE0010008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23e	@ At line number 574
	.ascii "U1LCR (*(volatile uint32_t*)(0xE001000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x23f	@ At line number 575
	.ascii "U1MCR (*(volatile uint32_t*)(0xE0010010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x240	@ At line number 576
	.ascii "U1LSR (*(volatile uint32_t*)(0xE0010014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x241	@ At line number 577
	.ascii "U1MSR (*(volatile uint32_t*)(0xE0010018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x242	@ At line number 578
	.ascii "U1SCR (*(volatile uint32_t*)(0xE001001C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x243	@ At line number 579
	.ascii "U1ACR (*(volatile uint32_t*)(0xE0010020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x244	@ At line number 580
	.ascii "U1FDR (*(volatile uint32_t*)(0xE0010028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x245	@ At line number 581
	.ascii "U1TER (*(volatile uint32_t*)(0xE0010030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x247	@ At line number 583
	.ascii "U2RBR (*(volatile uint32_t*)(0xE0078000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x248	@ At line number 584
	.ascii "U2THR (*(volatile uint32_t*)(0xE0078000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x249	@ At line number 585
	.ascii "U2DLL (*(volatile uint32_t*)(0xE0078000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24a	@ At line number 586
	.ascii "U2DLM (*(volatile uint32_t*)(0xE0078004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24b	@ At line number 587
	.ascii "U2IER (*(volatile uint32_t*)(0xE0078004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24c	@ At line number 588
	.ascii "U2IIR (*(volatile uint32_t*)(0xE0078008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24d	@ At line number 589
	.ascii "U2FCR (*(volatile uint32_t*)(0xE0078008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24e	@ At line number 590
	.ascii "U2LCR (*(volatile uint32_t*)(0xE007800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24f	@ At line number 591
	.ascii "U2LSR (*(volatile uint32_t*)(0xE0078014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x250	@ At line number 592
	.ascii "U2SCR (*(volatile uint32_t*)(0xE007801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x251	@ At line number 593
	.ascii "U2ACR (*(volatile uint32_t*)(0xE0078020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x252	@ At line number 594
	.ascii "U2ICR (*(volatile uint32_t*)(0xE0078024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x253	@ At line number 595
	.ascii "U2FDR (*(volatile uint32_t*)(0xE0078028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x254	@ At line number 596
	.ascii "U2TER (*(volatile uint32_t*)(0xE0078030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x256	@ At line number 598
	.ascii "U3RBR (*(volatile uint32_t*)(0xE007C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x257	@ At line number 599
	.ascii "U3THR (*(volatile uint32_t*)(0xE007C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x258	@ At line number 600
	.ascii "U3DLL (*(volatile uint32_t*)(0xE007C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x259	@ At line number 601
	.ascii "U3DLM (*(volatile uint32_t*)(0xE007C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25a	@ At line number 602
	.ascii "U3IER (*(volatile uint32_t*)(0xE007C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25b	@ At line number 603
	.ascii "U3IIR (*(volatile uint32_t*)(0xE007C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25c	@ At line number 604
	.ascii "U3FCR (*(volatile uint32_t*)(0xE007C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25d	@ At line number 605
	.ascii "U3LCR (*(volatile uint32_t*)(0xE007C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25e	@ At line number 606
	.ascii "U3LSR (*(volatile uint32_t*)(0xE007C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x25f	@ At line number 607
	.ascii "U3SCR (*(volatile uint32_t*)(0xE007C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x260	@ At line number 608
	.ascii "U3ACR (*(volatile uint32_t*)(0xE007C020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x261	@ At line number 609
	.ascii "U3ICR (*(volatile uint32_t*)(0xE007C024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x262	@ At line number 610
	.ascii "U3FDR (*(volatile uint32_t*)(0xE007C028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x263	@ At line number 611
	.ascii "U3TER (*(volatile uint32_t*)(0xE007C030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x265	@ At line number 613
	.ascii "I20CONSET (*(volatile uint32_t*)(0xE001C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x266	@ At line number 614
	.ascii "I20STAT (*(volatile uint32_t*)(0xE001C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x267	@ At line number 615
	.ascii "I20DAT (*(volatile uint32_t*)(0xE001C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x268	@ At line number 616
	.ascii "I20ADR (*(volatile uint32_t*)(0xE001C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x269	@ At line number 617
	.ascii "I20SCLH (*(volatile uint32_t*)(0xE001C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26a	@ At line number 618
	.ascii "I20SCLL (*(volatile uint32_t*)(0xE001C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26b	@ At line number 619
	.ascii "I20CONCLR (*(volatile uint32_t*)(0xE001C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26d	@ At line number 621
	.ascii "I21CONSET (*(volatile uint32_t*)(0xE005C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26e	@ At line number 622
	.ascii "I21STAT (*(volatile uint32_t*)(0xE005C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x26f	@ At line number 623
	.ascii "I21DAT (*(volatile uint32_t*)(0xE005C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x270	@ At line number 624
	.ascii "I21ADR (*(volatile uint32_t*)(0xE005C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x271	@ At line number 625
	.ascii "I21SCLH (*(volatile uint32_t*)(0xE005C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x272	@ At line number 626
	.ascii "I21SCLL (*(volatile uint32_t*)(0xE005C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x273	@ At line number 627
	.ascii "I21CONCLR (*(volatile uint32_t*)(0xE005C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x275	@ At line number 629
	.ascii "I22CONSET (*(volatile uint32_t*)(0xE0080000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x276	@ At line number 630
	.ascii "I22STAT (*(volatile uint32_t*)(0xE0080004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x277	@ At line number 631
	.ascii "I22DAT (*(volatile uint32_t*)(0xE0080008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x278	@ At line number 632
	.ascii "I22ADR (*(volatile uint32_t*)(0xE008000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x279	@ At line number 633
	.ascii "I22SCLH (*(volatile uint32_t*)(0xE0080010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27a	@ At line number 634
	.ascii "I22SCLL (*(volatile uint32_t*)(0xE0080014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27b	@ At line number 635
	.ascii "I22CONCLR (*(volatile uint32_t*)(0xE0080018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27d	@ At line number 637
	.ascii "S0SPCR (*(volatile uint32_t*)(0xE0020000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27e	@ At line number 638
	.ascii "S0SPSR (*(volatile uint32_t*)(0xE0020004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x27f	@ At line number 639
	.ascii "S0SPDR (*(volatile uint32_t*)(0xE0020008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x280	@ At line number 640
	.ascii "S0SPCCR (*(volatile uint32_t*)(0xE002000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x281	@ At line number 641
	.ascii "S0SPINT (*(volatile uint32_t*)(0xE002001C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x283	@ At line number 643
	.ascii "SSP0CR0 (*(volatile uint32_t*)(0xE0068000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x284	@ At line number 644
	.ascii "SSP0CR1 (*(volatile uint32_t*)(0xE0068004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x285	@ At line number 645
	.ascii "SSP0DR (*(volatile uint32_t*)(0xE0068008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x286	@ At line number 646
	.ascii "SSP0SR (*(volatile uint32_t*)(0xE006800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x287	@ At line number 647
	.ascii "SSP0CPSR (*(volatile uint32_t*)(0xE0068010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x288	@ At line number 648
	.ascii "SSP0IMSC (*(volatile uint32_t*)(0xE0068014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x289	@ At line number 649
	.ascii "SSP0RIS (*(volatile uint32_t*)(0xE0068018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28a	@ At line number 650
	.ascii "SSP0MIS (*(volatile uint32_t*)(0xE006801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28b	@ At line number 651
	.ascii "SSP0ICR (*(volatile uint32_t*)(0xE0068020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28c	@ At line number 652
	.ascii "SSP0DMACR (*(volatile uint32_t*)(0xE0068024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28e	@ At line number 654
	.ascii "SSP1CR0 (*(volatile uint32_t*)(0xE0030000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x28f	@ At line number 655
	.ascii "SSP1CR1 (*(volatile uint32_t*)(0xE0030004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x290	@ At line number 656
	.ascii "SSP1DR (*(volatile uint32_t*)(0xE0030008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x291	@ At line number 657
	.ascii "SSP1SR (*(volatile uint32_t*)(0xE003000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x292	@ At line number 658
	.ascii "SSP1CPSR (*(volatile uint32_t*)(0xE0030010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x293	@ At line number 659
	.ascii "SSP1IMSC (*(volatile uint32_t*)(0xE0030014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x294	@ At line number 660
	.ascii "SSP1RIS (*(volatile uint32_t*)(0xE0030018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x295	@ At line number 661
	.ascii "SSP1MIS (*(volatile uint32_t*)(0xE003001C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x296	@ At line number 662
	.ascii "SSP1ICR (*(volatile uint32_t*)(0xE0030020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x297	@ At line number 663
	.ascii "SSP1DMACR (*(volatile uint32_t*)(0xE0030024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x299	@ At line number 665
	.ascii "RTC_ILR (*(volatile uint32_t*)(0xE0024000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29a	@ At line number 666
	.ascii "RTC_CTC (*(volatile uint32_t*)(0xE0024004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29b	@ At line number 667
	.ascii "RTC_CCR (*(volatile uint32_t*)(0xE0024008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29c	@ At line number 668
	.ascii "RTC_CIIR (*(volatile uint32_t*)(0xE002400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29d	@ At line number 669
	.ascii "RTC_AMR (*(volatile uint32_t*)(0xE0024010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29e	@ At line number 670
	.ascii "RTC_CTIME0 (*(volatile uint32_t*)(0xE0024014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29f	@ At line number 671
	.ascii "RTC_CTIME1 (*(volatile uint32_t*)(0xE0024018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a0	@ At line number 672
	.ascii "RTC_CTIME2 (*(volatile uint32_t*)(0xE002401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a1	@ At line number 673
	.ascii "RTC_SEC (*(volatile uint32_t*)(0xE0024020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a2	@ At line number 674
	.ascii "RTC_MIN (*(volatile uint32_t*)(0xE0024024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a3	@ At line number 675
	.ascii "RTC_HOUR (*(volatile uint32_t*)(0xE0024028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a4	@ At line number 676
	.ascii "RTC_DOM (*(volatile uint32_t*)(0xE002402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a5	@ At line number 677
	.ascii "RTC_DOW (*(volatile uint32_t*)(0xE0024030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a6	@ At line number 678
	.ascii "RTC_DOY (*(volatile uint32_t*)(0xE0024034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a7	@ At line number 679
	.ascii "RTC_MONTH (*(volatile uint32_t*)(0xE0024038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a8	@ At line number 680
	.ascii "RTC_YEAR (*(volatile uint32_t*)(0xE002403C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2a9	@ At line number 681
	.ascii "RTC_CISS (*(volatile uint32_t*)(0xE0024040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2aa	@ At line number 682
	.ascii "RTC_ALSEC (*(volatile uint32_t*)(0xE0024060))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ab	@ At line number 683
	.ascii "RTC_ALMIN (*(volatile uint32_t*)(0xE0024064))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ac	@ At line number 684
	.ascii "RTC_ALHOUR (*(volatile uint32_t*)(0xE0024068))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ad	@ At line number 685
	.ascii "RTC_ALDOM (*(volatile uint32_t*)(0xE002406C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ae	@ At line number 686
	.ascii "RTC_ALDOW (*(volatile uint32_t*)(0xE0024070))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2af	@ At line number 687
	.ascii "RTC_ALDOY (*(volatile uint32_t*)(0xE0024074))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b0	@ At line number 688
	.ascii "RTC_ALMON (*(volatile uint32_t*)(0xE0024078))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b1	@ At line number 689
	.ascii "RTC_ALYEAR (*(volatile uint32_t*)(0xE002407C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b2	@ At line number 690
	.ascii "RTC_PREINT (*(volatile uint32_t*)(0xE0024080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b3	@ At line number 691
	.ascii "RTC_PREFRAC (*(volatile uint32_t*)(0xE0024084))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b5	@ At line number 693
	.ascii "AD0CR (*(volatile uint32_t*)(0xE0034000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b6	@ At line number 694
	.ascii "AD0GDR (*(volatile uint32_t*)(0xE0034004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b7	@ At line number 695
	.ascii "AD0INTEN (*(volatile uint32_t*)(0xE003400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b8	@ At line number 696
	.ascii "AD0DR0 (*(volatile uint32_t*)(0xE0034010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2b9	@ At line number 697
	.ascii "AD0DR1 (*(volatile uint32_t*)(0xE0034014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ba	@ At line number 698
	.ascii "AD0DR2 (*(volatile uint32_t*)(0xE0034018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2bb	@ At line number 699
	.ascii "AD0DR3 (*(volatile uint32_t*)(0xE003401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2bc	@ At line number 700
	.ascii "AD0DR4 (*(volatile uint32_t*)(0xE0034020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2bd	@ At line number 701
	.ascii "AD0DR5 (*(volatile uint32_t*)(0xE0034024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2be	@ At line number 702
	.ascii "AD0DR6 (*(volatile uint32_t*)(0xE0034028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2bf	@ At line number 703
	.ascii "AD0DR7 (*(volatile uint32_t*)(0xE003402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c0	@ At line number 704
	.ascii "AD0STAT (*(volatile uint32_t*)(0xE0034030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c2	@ At line number 706
	.ascii "DACR (*(volatile uint32_t*)(0xE006C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c4	@ At line number 708
	.ascii "WDMOD (*(volatile uint32_t*)(0xE0000000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c5	@ At line number 709
	.ascii "WDTC (*(volatile uint32_t*)(0xE0000004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c6	@ At line number 710
	.ascii "WDFEED (*(volatile uint32_t*)(0xE0000008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c7	@ At line number 711
	.ascii "WDTV (*(volatile uint32_t*)(0xE000000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2c8	@ At line number 712
	.ascii "WDCLKSEL (*(volatile uint32_t*)(0xE0000010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ca	@ At line number 714
	.ascii "CAN_AFMR (*(volatile uint32_t*)(0xE003C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cb	@ At line number 715
	.ascii "CAN_SFF_SA (*(volatile uint32_t*)(0xE003C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cc	@ At line number 716
	.ascii "CAN_SFF_GRP_SA (*(volatile uint32_t*)(0xE003C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cd	@ At line number 717
	.ascii "CAN_EFF_SA (*(volatile uint32_t*)(0xE003C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ce	@ At line number 718
	.ascii "CAN_EFF_GRP_SA (*(volatile uint32_t*)(0xE003C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2cf	@ At line number 719
	.ascii "CAN_EOT (*(volatile uint32_t*)(0xE003C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d0	@ At line number 720
	.ascii "CAN_LUT_ERR_ADR (*(volatile uint32_t*)(0xE003C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d1	@ At line number 721
	.ascii "CAN_LUT_ERR (*(volatile uint32_t*)(0xE003C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d3	@ At line number 723
	.ascii "CAN_TX_SR (*(volatile uint32_t*)(0xE0040000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d4	@ At line number 724
	.ascii "CAN_RX_SR (*(volatile uint32_t*)(0xE0040004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d5	@ At line number 725
	.ascii "CAN_MSR (*(volatile uint32_t*)(0xE0040008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d7	@ At line number 727
	.ascii "CAN1MOD (*(volatile uint32_t*)(0xE0044000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d8	@ At line number 728
	.ascii "CAN1CMR (*(volatile uint32_t*)(0xE0044004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d9	@ At line number 729
	.ascii "CAN1GSR (*(volatile uint32_t*)(0xE0044008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2da	@ At line number 730
	.ascii "CAN1ICR (*(volatile uint32_t*)(0xE004400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2db	@ At line number 731
	.ascii "CAN1IER (*(volatile uint32_t*)(0xE0044010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2dc	@ At line number 732
	.ascii "CAN1BTR (*(volatile uint32_t*)(0xE0044014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2dd	@ At line number 733
	.ascii "CAN1EWL (*(volatile uint32_t*)(0xE0044018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2de	@ At line number 734
	.ascii "CAN1SR (*(volatile uint32_t*)(0xE004401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2df	@ At line number 735
	.ascii "CAN1RFS (*(volatile uint32_t*)(0xE0044020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e0	@ At line number 736
	.ascii "CAN1RID (*(volatile uint32_t*)(0xE0044024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e1	@ At line number 737
	.ascii "CAN1RDA (*(volatile uint32_t*)(0xE0044028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e2	@ At line number 738
	.ascii "CAN1RDB (*(volatile uint32_t*)(0xE004402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e4	@ At line number 740
	.ascii "CAN1TFI1 (*(volatile uint32_t*)(0xE0044030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e5	@ At line number 741
	.ascii "CAN1TID1 (*(volatile uint32_t*)(0xE0044034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e6	@ At line number 742
	.ascii "CAN1TDA1 (*(volatile uint32_t*)(0xE0044038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e7	@ At line number 743
	.ascii "CAN1TDB1 (*(volatile uint32_t*)(0xE004403C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e8	@ At line number 744
	.ascii "CAN1TFI2 (*(volatile uint32_t*)(0xE0044040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2e9	@ At line number 745
	.ascii "CAN1TID2 (*(volatile uint32_t*)(0xE0044044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ea	@ At line number 746
	.ascii "CAN1TDA2 (*(volatile uint32_t*)(0xE0044048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2eb	@ At line number 747
	.ascii "CAN1TDB2 (*(volatile uint32_t*)(0xE004404C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ec	@ At line number 748
	.ascii "CAN1TFI3 (*(volatile uint32_t*)(0xE0044050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ed	@ At line number 749
	.ascii "CAN1TID3 (*(volatile uint32_t*)(0xE0044054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ee	@ At line number 750
	.ascii "CAN1TDA3 (*(volatile uint32_t*)(0xE0044058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ef	@ At line number 751
	.ascii "CAN1TDB3 (*(volatile uint32_t*)(0xE004405C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f1	@ At line number 753
	.ascii "CAN2MOD (*(volatile uint32_t*)(0xE0048000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f2	@ At line number 754
	.ascii "CAN2CMR (*(volatile uint32_t*)(0xE0048004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f3	@ At line number 755
	.ascii "CAN2GSR (*(volatile uint32_t*)(0xE0048008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f4	@ At line number 756
	.ascii "CAN2ICR (*(volatile uint32_t*)(0xE004800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f5	@ At line number 757
	.ascii "CAN2IER (*(volatile uint32_t*)(0xE0048010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f6	@ At line number 758
	.ascii "CAN2BTR (*(volatile uint32_t*)(0xE0048014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f7	@ At line number 759
	.ascii "CAN2EWL (*(volatile uint32_t*)(0xE0048018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f8	@ At line number 760
	.ascii "CAN2SR (*(volatile uint32_t*)(0xE004801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2f9	@ At line number 761
	.ascii "CAN2RFS (*(volatile uint32_t*)(0xE0048020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2fa	@ At line number 762
	.ascii "CAN2RID (*(volatile uint32_t*)(0xE0048024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2fb	@ At line number 763
	.ascii "CAN2RDA (*(volatile uint32_t*)(0xE0048028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2fc	@ At line number 764
	.ascii "CAN2RDB (*(volatile uint32_t*)(0xE004802C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2fe	@ At line number 766
	.ascii "CAN2TFI1 (*(volatile uint32_t*)(0xE0048030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2ff	@ At line number 767
	.ascii "CAN2TID1 (*(volatile uint32_t*)(0xE0048034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x300	@ At line number 768
	.ascii "CAN2TDA1 (*(volatile uint32_t*)(0xE0048038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x301	@ At line number 769
	.ascii "CAN2TDB1 (*(volatile uint32_t*)(0xE004803C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x302	@ At line number 770
	.ascii "CAN2TFI2 (*(volatile uint32_t*)(0xE0048040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x303	@ At line number 771
	.ascii "CAN2TID2 (*(volatile uint32_t*)(0xE0048044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x304	@ At line number 772
	.ascii "CAN2TDA2 (*(volatile uint32_t*)(0xE0048048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x305	@ At line number 773
	.ascii "CAN2TDB2 (*(volatile uint32_t*)(0xE004804C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x306	@ At line number 774
	.ascii "CAN2TFI3 (*(volatile uint32_t*)(0xE0048050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x307	@ At line number 775
	.ascii "CAN2TID3 (*(volatile uint32_t*)(0xE0048054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x308	@ At line number 776
	.ascii "CAN2TDA3 (*(volatile uint32_t*)(0xE0048058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x309	@ At line number 777
	.ascii "CAN2TDB3 (*(volatile uint32_t*)(0xE004805C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30b	@ At line number 779
	.ascii "MCI_POWER (*(volatile uint32_t*)(0xE008C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30c	@ At line number 780
	.ascii "MCI_CLOCK (*(volatile uint32_t*)(0xE008C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30d	@ At line number 781
	.ascii "MCI_ARGUMENT (*(volatile uint32_t*)(0xE008C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30e	@ At line number 782
	.ascii "MCI_COMMAND (*(volatile uint32_t*)(0xE008C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x30f	@ At line number 783
	.ascii "MCI_RESP_CMD (*(volatile uint32_t*)(0xE008C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x310	@ At line number 784
	.ascii "MCI_RESP0 (*(volatile uint32_t*)(0xE008C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x311	@ At line number 785
	.ascii "MCI_RESP1 (*(volatile uint32_t*)(0xE008C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x312	@ At line number 786
	.ascii "MCI_RESP2 (*(volatile uint32_t*)(0xE008C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x313	@ At line number 787
	.ascii "MCI_RESP3 (*(volatile uint32_t*)(0xE008C020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x314	@ At line number 788
	.ascii "MCI_DATA_TMR (*(volatile uint32_t*)(0xE008C024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x315	@ At line number 789
	.ascii "MCI_DATA_LEN (*(volatile uint32_t*)(0xE008C028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x316	@ At line number 790
	.ascii "MCI_DATA_CTRL (*(volatile uint32_t*)(0xE008C02C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x317	@ At line number 791
	.ascii "MCI_DATA_CNT (*(volatile uint32_t*)(0xE008C030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x318	@ At line number 792
	.ascii "MCI_STATUS (*(volatile uint32_t*)(0xE008C034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x319	@ At line number 793
	.ascii "MCI_CLEAR (*(volatile uint32_t*)(0xE008C038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31a	@ At line number 794
	.ascii "MCI_MASK0 (*(volatile uint32_t*)(0xE008C03C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31b	@ At line number 795
	.ascii "MCI_MASK1 (*(volatile uint32_t*)(0xE008C040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31c	@ At line number 796
	.ascii "MCI_FIFO_CNT (*(volatile uint32_t*)(0xE008C048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31d	@ At line number 797
	.ascii "MCI_FIFO (*(volatile uint32_t*)(0xE008C080))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31f	@ At line number 799
	.ascii "I2S_DAO (*(volatile uint32_t*)(0xE0088000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x320	@ At line number 800
	.ascii "I2S_DAI (*(volatile uint32_t*)(0xE0088004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x321	@ At line number 801
	.ascii "I2S_TX_FIFO (*(volatile uint32_t*)(0xE0088008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x322	@ At line number 802
	.ascii "I2S_RX_FIFO (*(volatile uint32_t*)(0xE008800C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x323	@ At line number 803
	.ascii "I2S_STATE (*(volatile uint32_t*)(0xE0088010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x324	@ At line number 804
	.ascii "I2S_DMA1 (*(volatile uint32_t*)(0xE0088014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x325	@ At line number 805
	.ascii "I2S_DMA2 (*(volatile uint32_t*)(0xE0088018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x326	@ At line number 806
	.ascii "I2S_IRQ (*(volatile uint32_t*)(0xE008801C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x327	@ At line number 807
	.ascii "I2S_TXRATE (*(volatile uint32_t*)(0xE0088020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x328	@ At line number 808
	.ascii "I2S_RXRATE (*(volatile uint32_t*)(0xE0088024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32a	@ At line number 810
	.ascii "GPDMA_INT_STAT (*(volatile uint32_t*)(0xFFE04000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32b	@ At line number 811
	.ascii "GPDMA_INT_TCSTAT (*(volatile uint32_t*)(0xFFE04004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32c	@ At line number 812
	.ascii "GPDMA_INT_TCCLR (*(volatile uint32_t*)(0xFFE04008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32d	@ At line number 813
	.ascii "GPDMA_INT_ERR_STAT (*(volatile uint32_t*)(0xFFE0400C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32e	@ At line number 814
	.ascii "GPDMA_INT_ERR_CLR (*(volatile uint32_t*)(0xFFE04010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x32f	@ At line number 815
	.ascii "GPDMA_RAW_INT_TCSTAT (*(volatile uint32_t*)(0xFFE04014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x330	@ At line number 816
	.ascii "GPDMA_RAW_INT_ERR_STAT (*(volatile uint32_t*)(0xFFE04018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x331	@ At line number 817
	.ascii "GPDMA_ENABLED_CHNS (*(volatile uint32_t*)(0xFFE0401C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x332	@ At line number 818
	.ascii "GPDMA_SOFT_BREQ (*(volatile uint32_t*)(0xFFE04020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x333	@ At line number 819
	.ascii "GPDMA_SOFT_SREQ (*(volatile uint32_t*)(0xFFE04024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x334	@ At line number 820
	.ascii "GPDMA_SOFT_LBREQ (*(volatile uint32_t*)(0xFFE04028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x335	@ At line number 821
	.ascii "GPDMA_SOFT_LSREQ (*(volatile uint32_t*)(0xFFE0402C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x336	@ At line number 822
	.ascii "GPDMA_CONFIG (*(volatile uint32_t*)(0xFFE04030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x337	@ At line number 823
	.ascii "GPDMA_SYNC (*(volatile uint32_t*)(0xFFE04034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x339	@ At line number 825
	.ascii "GPDMA_CH0_SRC (*(volatile uint32_t*)(0xFFE04100))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33a	@ At line number 826
	.ascii "GPDMA_CH0_DEST (*(volatile uint32_t*)(0xFFE04104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33b	@ At line number 827
	.ascii "GPDMA_CH0_LLI (*(volatile uint32_t*)(0xFFE04108))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33c	@ At line number 828
	.ascii "GPDMA_CH0_CTRL (*(volatile uint32_t*)(0xFFE0410C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33d	@ At line number 829
	.ascii "GPDMA_CH0_CFG (*(volatile uint32_t*)(0xFFE04110))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x33f	@ At line number 831
	.ascii "GPDMA_CH1_SRC (*(volatile uint32_t*)(0xFFE04120))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x340	@ At line number 832
	.ascii "GPDMA_CH1_DEST (*(volatile uint32_t*)(0xFFE04124))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x341	@ At line number 833
	.ascii "GPDMA_CH1_LLI (*(volatile uint32_t*)(0xFFE04128))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x342	@ At line number 834
	.ascii "GPDMA_CH1_CTRL (*(volatile uint32_t*)(0xFFE0412C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x343	@ At line number 835
	.ascii "GPDMA_CH1_CFG (*(volatile uint32_t*)(0xFFE04130))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x345	@ At line number 837
	.ascii "USB_INT_STAT (*(volatile uint32_t*)(0xE01FC1C0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x347	@ At line number 839
	.ascii "DEV_INT_STAT (*(volatile uint32_t*)(0xFFE0C200))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x348	@ At line number 840
	.ascii "DEV_INT_EN (*(volatile uint32_t*)(0xFFE0C204))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x349	@ At line number 841
	.ascii "DEV_INT_CLR (*(volatile uint32_t*)(0xFFE0C208))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34a	@ At line number 842
	.ascii "DEV_INT_SET (*(volatile uint32_t*)(0xFFE0C20C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34b	@ At line number 843
	.ascii "DEV_INT_PRIO (*(volatile uint32_t*)(0xFFE0C22C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34d	@ At line number 845
	.ascii "EP_INT_STAT (*(volatile uint32_t*)(0xFFE0C230))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34e	@ At line number 846
	.ascii "EP_INT_EN (*(volatile uint32_t*)(0xFFE0C234))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x34f	@ At line number 847
	.ascii "EP_INT_CLR (*(volatile uint32_t*)(0xFFE0C238))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x350	@ At line number 848
	.ascii "EP_INT_SET (*(volatile uint32_t*)(0xFFE0C23C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x351	@ At line number 849
	.ascii "EP_INT_PRIO (*(volatile uint32_t*)(0xFFE0C240))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x353	@ At line number 851
	.ascii "REALIZE_EP (*(volatile uint32_t*)(0xFFE0C244))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x354	@ At line number 852
	.ascii "EP_INDEX (*(volatile uint32_t*)(0xFFE0C248))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x355	@ At line number 853
	.ascii "MAXPACKET_SIZE (*(volatile uint32_t*)(0xFFE0C24C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x357	@ At line number 855
	.ascii "CMD_CODE (*(volatile uint32_t*)(0xFFE0C210))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x358	@ At line number 856
	.ascii "CMD_DATA (*(volatile uint32_t*)(0xFFE0C214))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35a	@ At line number 858
	.ascii "RX_DATA (*(volatile uint32_t*)(0xFFE0C218))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35b	@ At line number 859
	.ascii "TX_DATA (*(volatile uint32_t*)(0xFFE0C21C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35c	@ At line number 860
	.ascii "RX_PLENGTH (*(volatile uint32_t*)(0xFFE0C220))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35d	@ At line number 861
	.ascii "TX_PLENGTH (*(volatile uint32_t*)(0xFFE0C224))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35e	@ At line number 862
	.ascii "USB_CTRL (*(volatile uint32_t*)(0xFFE0C228))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x360	@ At line number 864
	.ascii "DMA_REQ_STAT (*(volatile uint32_t*)(0xFFE0C250))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x361	@ At line number 865
	.ascii "DMA_REQ_CLR (*(volatile uint32_t*)(0xFFE0C254))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x362	@ At line number 866
	.ascii "DMA_REQ_SET (*(volatile uint32_t*)(0xFFE0C258))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x363	@ At line number 867
	.ascii "UDCA_HEAD (*(volatile uint32_t*)(0xFFE0C280))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x364	@ At line number 868
	.ascii "EP_DMA_STAT (*(volatile uint32_t*)(0xFFE0C284))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x365	@ At line number 869
	.ascii "EP_DMA_EN (*(volatile uint32_t*)(0xFFE0C288))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x366	@ At line number 870
	.ascii "EP_DMA_DIS (*(volatile uint32_t*)(0xFFE0C28C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x367	@ At line number 871
	.ascii "DMA_INT_STAT (*(volatile uint32_t*)(0xFFE0C290))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x368	@ At line number 872
	.ascii "DMA_INT_EN (*(volatile uint32_t*)(0xFFE0C294))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x369	@ At line number 873
	.ascii "EOT_INT_STAT (*(volatile uint32_t*)(0xFFE0C2A0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36a	@ At line number 874
	.ascii "EOT_INT_CLR (*(volatile uint32_t*)(0xFFE0C2A4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36b	@ At line number 875
	.ascii "EOT_INT_SET (*(volatile uint32_t*)(0xFFE0C2A8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36c	@ At line number 876
	.ascii "NDD_REQ_INT_STAT (*(volatile uint32_t*)(0xFFE0C2AC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36d	@ At line number 877
	.ascii "NDD_REQ_INT_CLR (*(volatile uint32_t*)(0xFFE0C2B0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36e	@ At line number 878
	.ascii "NDD_REQ_INT_SET (*(volatile uint32_t*)(0xFFE0C2B4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x36f	@ At line number 879
	.ascii "SYS_ERR_INT_STAT (*(volatile uint32_t*)(0xFFE0C2B8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x370	@ At line number 880
	.ascii "SYS_ERR_INT_CLR (*(volatile uint32_t*)(0xFFE0C2BC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x371	@ At line number 881
	.ascii "SYS_ERR_INT_SET (*(volatile uint32_t*)(0xFFE0C2C0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x373	@ At line number 883
	.ascii "HC_REVISION (*(volatile uint32_t*)(0xFFE0C000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x374	@ At line number 884
	.ascii "HC_CONTROL (*(volatile uint32_t*)(0xFFE0C004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x375	@ At line number 885
	.ascii "HC_CMD_STAT (*(volatile uint32_t*)(0xFFE0C008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x376	@ At line number 886
	.ascii "HC_INT_STAT (*(volatile uint32_t*)(0xFFE0C00C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x377	@ At line number 887
	.ascii "HC_INT_EN (*(volatile uint32_t*)(0xFFE0C010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x378	@ At line number 888
	.ascii "HC_INT_DIS (*(volatile uint32_t*)(0xFFE0C014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x379	@ At line number 889
	.ascii "HC_HCCA (*(volatile uint32_t*)(0xFFE0C018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37a	@ At line number 890
	.ascii "HC_PERIOD_CUR_ED (*(volatile uint32_t*)(0xFFE0C01C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37b	@ At line number 891
	.ascii "HC_CTRL_HEAD_ED (*(volatile uint32_t*)(0xFFE0C020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37c	@ At line number 892
	.ascii "HC_CTRL_CUR_ED (*(volatile uint32_t*)(0xFFE0C024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37d	@ At line number 893
	.ascii "HC_BULK_HEAD_ED (*(volatile uint32_t*)(0xFFE0C028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37e	@ At line number 894
	.ascii "HC_BULK_CUR_ED (*(volatile uint32_t*)(0xFFE0C02C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x37f	@ At line number 895
	.ascii "HC_DONE_HEAD (*(volatile uint32_t*)(0xFFE0C030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x380	@ At line number 896
	.ascii "HC_FM_INTERVAL (*(volatile uint32_t*)(0xFFE0C034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x381	@ At line number 897
	.ascii "HC_FM_REMAINING (*(volatile uint32_t*)(0xFFE0C038))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x382	@ At line number 898
	.ascii "HC_FM_NUMBER (*(volatile uint32_t*)(0xFFE0C03C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x383	@ At line number 899
	.ascii "HC_PERIOD_START (*(volatile uint32_t*)(0xFFE0C040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x384	@ At line number 900
	.ascii "HC_LS_THRHLD (*(volatile uint32_t*)(0xFFE0C044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x385	@ At line number 901
	.ascii "HC_RH_DESCA (*(volatile uint32_t*)(0xFFE0C048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x386	@ At line number 902
	.ascii "HC_RH_DESCB (*(volatile uint32_t*)(0xFFE0C04C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x387	@ At line number 903
	.ascii "HC_RH_STAT (*(volatile uint32_t*)(0xFFE0C050))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x388	@ At line number 904
	.ascii "HC_RH_PORT_STAT1 (*(volatile uint32_t*)(0xFFE0C054))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x389	@ At line number 905
	.ascii "HC_RH_PORT_STAT2 (*(volatile uint32_t*)(0xFFE0C058))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38b	@ At line number 907
	.ascii "OTG_INT_STAT (*(volatile uint32_t*)(0xFFE0C100))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38c	@ At line number 908
	.ascii "OTG_INT_EN (*(volatile uint32_t*)(0xFFE0C104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38d	@ At line number 909
	.ascii "OTG_INT_SET (*(volatile uint32_t*)(0xFFE0C108))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38e	@ At line number 910
	.ascii "OTG_INT_CLR (*(volatile uint32_t*)(0xFFE0C10C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x38f	@ At line number 911
	.ascii "OTG_STAT_CTRL (*(volatile uint32_t*)(0xFFE0C110))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x390	@ At line number 912
	.ascii "OTG_TIMER (*(volatile uint32_t*)(0xFFE0C114))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x392	@ At line number 914
	.ascii "OTG_I2C_RX (*(volatile uint32_t*)(0xFFE0C300))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x393	@ At line number 915
	.ascii "OTG_I2C_TX (*(volatile uint32_t*)(0xFFE0C300))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x394	@ At line number 916
	.ascii "OTG_I2C_STS (*(volatile uint32_t*)(0xFFE0C304))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x395	@ At line number 917
	.ascii "OTG_I2C_CTL (*(volatile uint32_t*)(0xFFE0C308))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x396	@ At line number 918
	.ascii "OTG_I2C_CLKHI (*(volatile uint32_t*)(0xFFE0C30C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x397	@ At line number 919
	.ascii "OTG_I2C_CLKLO (*(volatile uint32_t*)(0xFFE0C310))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x399	@ At line number 921
	.ascii "OTG_CLK_CTRL (*(volatile uint32_t*)(0xFFE0CFF4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39a	@ At line number 922
	.ascii "OTG_CLK_STAT (*(volatile uint32_t*)(0xFFE0CFF8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39c	@ At line number 924
	.ascii "USBPortSel (*(volatile uint32_t*)(0xFFE0C110))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39d	@ At line number 925
	.ascii "USBClkCtrl (*(volatile uint32_t*)(0xFFE0CFF4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x39e	@ At line number 926
	.ascii "USBClkSt (*(volatile uint32_t*)(0xFFE0CFF8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a0	@ At line number 928
	.ascii "MAC_MAC1 (*(volatile uint32_t*)(0xFFE00000))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a1	@ At line number 929
	.ascii "MAC_MAC2 (*(volatile uint32_t*)(0xFFE00004))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a2	@ At line number 930
	.ascii "MAC_IPGT (*(volatile uint32_t*)(0xFFE00008))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a3	@ At line number 931
	.ascii "MAC_IPGR (*(volatile uint32_t*)(0xFFE0000C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a4	@ At line number 932
	.ascii "MAC_CLRT (*(volatile uint32_t*)(0xFFE00010))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a5	@ At line number 933
	.ascii "MAC_MAXF (*(volatile uint32_t*)(0xFFE00014))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a6	@ At line number 934
	.ascii "MAC_SUPP (*(volatile uint32_t*)(0xFFE00018))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a7	@ At line number 935
	.ascii "MAC_TEST (*(volatile uint32_t*)(0xFFE0001C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a8	@ At line number 936
	.ascii "MAC_MCFG (*(volatile uint32_t*)(0xFFE00020))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a9	@ At line number 937
	.ascii "MAC_MCMD (*(volatile uint32_t*)(0xFFE00024))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3aa	@ At line number 938
	.ascii "MAC_MADR (*(volatile uint32_t*)(0xFFE00028))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ab	@ At line number 939
	.ascii "MAC_MWTD (*(volatile uint32_t*)(0xFFE0002C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ac	@ At line number 940
	.ascii "MAC_MRDD (*(volatile uint32_t*)(0xFFE00030))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ad	@ At line number 941
	.ascii "MAC_MIND (*(volatile uint32_t*)(0xFFE00034))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3af	@ At line number 943
	.ascii "MAC_SA0 (*(volatile uint32_t*)(0xFFE00040))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b0	@ At line number 944
	.ascii "MAC_SA1 (*(volatile uint32_t*)(0xFFE00044))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b1	@ At line number 945
	.ascii "MAC_SA2 (*(volatile uint32_t*)(0xFFE00048))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b3	@ At line number 947
	.ascii "MAC_COMMAND (*(volatile uint32_t*)(0xFFE00100))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b4	@ At line number 948
	.ascii "MAC_STATUS (*(volatile uint32_t*)(0xFFE00104))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b5	@ At line number 949
	.ascii "MAC_RXDESCRIPTOR (*(volatile uint32_t*)(0xFFE00108))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b6	@ At line number 950
	.ascii "MAC_RXSTATUS (*(volatile uint32_t*)(0xFFE0010C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b7	@ At line number 951
	.ascii "MAC_RXDESCRIPTORNUM (*(volatile uint32_t*)(0xFFE00110))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b8	@ At line number 952
	.ascii "MAC_RXPRODUCEINDEX (*(volatile uint32_t*)(0xFFE00114))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3b9	@ At line number 953
	.ascii "MAC_RXCONSUMEINDEX (*(volatile uint32_t*)(0xFFE00118))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ba	@ At line number 954
	.ascii "MAC_TXDESCRIPTOR (*(volatile uint32_t*)(0xFFE0011C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3bb	@ At line number 955
	.ascii "MAC_TXSTATUS (*(volatile uint32_t*)(0xFFE00120))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3bc	@ At line number 956
	.ascii "MAC_TXDESCRIPTORNUM (*(volatile uint32_t*)(0xFFE00124))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3bd	@ At line number 957
	.ascii "MAC_TXPRODUCEINDEX (*(volatile uint32_t*)(0xFFE00128))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3be	@ At line number 958
	.ascii "MAC_TXCONSUMEINDEX (*(volatile uint32_t*)(0xFFE0012C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c0	@ At line number 960
	.ascii "MAC_TSV0 (*(volatile uint32_t*)(0xFFE00158))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c1	@ At line number 961
	.ascii "MAC_TSV1 (*(volatile uint32_t*)(0xFFE0015C))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c2	@ At line number 962
	.ascii "MAC_RSV (*(volatile uint32_t*)(0xFFE00160))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c4	@ At line number 964
	.ascii "MAC_FLOWCONTROLCNT (*(volatile uint32_t*)(0xFFE00170))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c5	@ At line number 965
	.ascii "MAC_FLOWCONTROLSTS (*(volatile uint32_t*)(0xFFE00174))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c7	@ At line number 967
	.ascii "MAC_RXFILTERCTRL (*(volatile uint32_t*)(0xFFE00200))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c8	@ At line number 968
	.ascii "MAC_RXFILTERWOLSTS (*(volatile uint32_t*)(0xFFE00204))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3c9	@ At line number 969
	.ascii "MAC_RXFILTERWOLCLR (*(volatile uint32_t*)(0xFFE00208))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3cb	@ At line number 971
	.ascii "MAC_HASHFILTERL (*(volatile uint32_t*)(0xFFE00210))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3cc	@ At line number 972
	.ascii "MAC_HASHFILTERH (*(volatile uint32_t*)(0xFFE00214))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ce	@ At line number 974
	.ascii "MAC_INTSTATUS (*(volatile uint32_t*)(0xFFE00FE0))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3cf	@ At line number 975
	.ascii "MAC_INTENABLE (*(volatile uint32_t*)(0xFFE00FE4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d0	@ At line number 976
	.ascii "MAC_INTCLEAR (*(volatile uint32_t*)(0xFFE00FE8))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d1	@ At line number 977
	.ascii "MAC_INTSET (*(volatile uint32_t*)(0xFFE00FEC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d3	@ At line number 979
	.ascii "MAC_POWERDOWN (*(volatile uint32_t*)(0xFFE00FF4))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3d4	@ At line number 980
	.ascii "MAC_MODULEID (*(volatile uint32_t*)(0xFFE00FFC))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3dd	@ At line number 989
	.ascii "__set_PCLKSEL(p,v) PCLKSEL[(p) / 16] = (PCLKSEL[(p) / 16] & ~(3 << ((p) * 2 % 32))) | (v << ((p) * 2 % 32))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3de	@ At line number 990
	.ascii "PCLKDIV_4 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3df	@ At line number 991
	.ascii "PCLKDIV_1 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e0	@ At line number 992
	.ascii "PCLKDIV_2 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e1	@ At line number 993
	.ascii "PCLKDIV_8 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e2	@ At line number 994
	.ascii "PCLK_WDT 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e3	@ At line number 995
	.ascii "PCLK_TIMER0 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e4	@ At line number 996
	.ascii "PCLK_TIMER1 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e5	@ At line number 997
	.ascii "PCLK_UART0 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e6	@ At line number 998
	.ascii "PCLK_UART1 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e7	@ At line number 999
	.ascii "PCLK_PWM1 6\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e8	@ At line number 1000
	.ascii "PCLK_I2C0 7\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3e9	@ At line number 1001
	.ascii "PCLK_SPI 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ea	@ At line number 1002
	.ascii "PCLK_RTC 9\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3eb	@ At line number 1003
	.ascii "PCLK_SSP1 10\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ec	@ At line number 1004
	.ascii "PCLK_DAC 11\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ed	@ At line number 1005
	.ascii "PCLK_ADC 12\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ee	@ At line number 1006
	.ascii "PCLK_CAN1 13\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3ef	@ At line number 1007
	.ascii "PCLK_CAN2 14\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f0	@ At line number 1008
	.ascii "PCLK_ACF 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f1	@ At line number 1009
	.ascii "PCLK_BAT_RAM 16\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f2	@ At line number 1010
	.ascii "PCLK_GPIO 17\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f3	@ At line number 1011
	.ascii "PCLK_PCB 18\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f4	@ At line number 1012
	.ascii "PCLK_I2C1 19\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f5	@ At line number 1013
	.ascii "PCLK_SSP0 21\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f6	@ At line number 1014
	.ascii "PCLK_TIMER2 22\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f7	@ At line number 1015
	.ascii "PCLK_TIMER3 23\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f8	@ At line number 1016
	.ascii "PCLK_UART2 24\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f9	@ At line number 1017
	.ascii "PCLK_UART3 25\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3fa	@ At line number 1018
	.ascii "PCLK_I2C2 26\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3fb	@ At line number 1019
	.ascii "PCLK_I2S 27\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3fc	@ At line number 1020
	.ascii "PCLK_MCI 28\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3fd	@ At line number 1021
	.ascii "PCLK_SYSCON 30\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x401	@ At line number 1025
	.ascii "__set_PINSEL(p,b,v) PINSEL[(p) * 2 + (b) / 16] = (PINSEL[(p) * 2 + (b) / 16] & ~(3 << ((b) * 2 % 32))) | (v << ((b) * 2 % 32))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x402	@ At line number 1026
	.ascii "__set_PINMODE(p,b,v) PINMODE[(p) * 2 + (b) / 16] = (PINMODE[(p) * 2 + (b) / 16] & ~(3 << ((b) * 2 % 32))) | (v << ((b) * 2 % 32))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x403	@ At line number 1027
	.ascii "PINMODE_PU 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x404	@ At line number 1028
	.ascii "PINMODE_HIZ 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x405	@ At line number 1029
	.ascii "PINMODE_PD 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x409	@ At line number 1033
	.ascii "__set_PCONP(b) PCONP |= (b)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40a	@ At line number 1034
	.ascii "__clr_PCONP(b) PCONP &= ~(b)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40b	@ At line number 1035
	.ascii "PCTIM0 0x00000002\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40c	@ At line number 1036
	.ascii "PCTIM1 0x00000004\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40d	@ At line number 1037
	.ascii "PCUART0 0x00000008\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40e	@ At line number 1038
	.ascii "PCUART1 0x00000010\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40f	@ At line number 1039
	.ascii "PCPWM1 0x00000040\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x410	@ At line number 1040
	.ascii "PCI2C0 0x00000080\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x411	@ At line number 1041
	.ascii "PCSPI 0x00000100\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x412	@ At line number 1042
	.ascii "PCRTC 0x00000200\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x413	@ At line number 1043
	.ascii "PCSSP1 0x00000400\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x414	@ At line number 1044
	.ascii "PCEMC 0x00000800\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x415	@ At line number 1045
	.ascii "PCAD 0x00001000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x416	@ At line number 1046
	.ascii "PCAN1 0x00002000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x417	@ At line number 1047
	.ascii "PCAN2 0x00004000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x418	@ At line number 1048
	.ascii "PCI2C1 0x00080000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x419	@ At line number 1049
	.ascii "PCSSP0 0x00200000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41a	@ At line number 1050
	.ascii "PCTIM2 0x00400000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41b	@ At line number 1051
	.ascii "PCTIM3 0x00800000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41c	@ At line number 1052
	.ascii "PCUART2 0x01000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41d	@ At line number 1053
	.ascii "PCUART3 0x02000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41e	@ At line number 1054
	.ascii "PCI2C2 0x04000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x41f	@ At line number 1055
	.ascii "PCI2S 0x08000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x420	@ At line number 1056
	.ascii "PCSDC 0x10000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x421	@ At line number 1057
	.ascii "PCGPDMA 0x20000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x422	@ At line number 1058
	.ascii "PCENET 0x40000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x423	@ At line number 1059
	.ascii "PCUSB 0x80000000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42c	@ At line number 1068
	.ascii "_BV(bit) (1<<bit)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x42e	@ At line number 1070
	.ascii "IMPORT_BIN(file,sym) __asm ( \".section \\\".rodata\\\"\\n\" \".balign 4\\n\" \".global \" #sym \"\\n\" #sym \":\\n\" \".incbin \\\"\" file \"\\\"\\n\" \".set _endof_\" #sym \", \" #sym \"\\n\" \".global _endof_\" #sym \"\\n\" \".balign 4\\n\" \".section \\\".text\\\"\\n\")\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x439	@ At line number 1081
	.ascii "IMPORT_BIN_PART(file,ofs,siz,sym) __asm ( \".section \\\".rodata\\\"\\n\" \".balign 4\\n\" \".global \" #sym \"\\n\" #sym \":\\n\" \".incbin \\\"\" file \"\\\",\" #ofs \",\" #siz \"\\n\" \".set _endof_\" #sym \", \" #sym \"\\n\" \".global _endof_\" #sym \"\\n\" \".balign 4\\n\" \".section \\\".text\\\"\\n\")\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48b	@ At line number 1163
	.ascii "FIO0DIR_ADR 0x3FFFC000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48c	@ At line number 1164
	.ascii "FIO1DIR_ADR 0x3FFFC020\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48d	@ At line number 1165
	.ascii "FIO2DIR_ADR 0x3FFFC040\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48e	@ At line number 1166
	.ascii "FIO3DIR_ADR 0x3FFFC060\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x48f	@ At line number 1167
	.ascii "FIO4DIR_ADR 0x3FFFC080\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x491	@ At line number 1169
	.ascii "FIO0PIN_ADR 0x3FFFC014\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x492	@ At line number 1170
	.ascii "FIO1PIN_ADR 0x3FFFC034\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x493	@ At line number 1171
	.ascii "FIO2PIN_ADR 0x3FFFC054\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x494	@ At line number 1172
	.ascii "FIO3PIN_ADR 0x3FFFC074\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x495	@ At line number 1173
	.ascii "FIO4PIN_ADR 0x3FFFC094\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x497	@ At line number 1175
	.ascii "FIO0SET_ADR 0x3FFFC018\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x498	@ At line number 1176
	.ascii "FIO1SET_ADR 0x3FFFC038\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x499	@ At line number 1177
	.ascii "FIO2SET_ADR 0x3FFFC058\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49a	@ At line number 1178
	.ascii "FIO3SET_ADR 0x3FFFC078\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49b	@ At line number 1179
	.ascii "FIO4SET_ADR 0x3FFFC098\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49d	@ At line number 1181
	.ascii "FIO0CLR_ADR 0x3FFFC01C\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49e	@ At line number 1182
	.ascii "FIO1CLR_ADR 0x3FFFC03C\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x49f	@ At line number 1183
	.ascii "FIO2CLR_ADR 0x3FFFC05C\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a0	@ At line number 1184
	.ascii "FIO3CLR_ADR 0x3FFFC07C\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a1	@ At line number 1185
	.ascii "FIO4CLR_ADR 0x3FFFC09C\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a3	@ At line number 1187
	.ascii "FIO0DIR_B (*(volatile struct DB32 *)FIO0DIR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a4	@ At line number 1188
	.ascii "FIO1DIR_B (*(volatile struct DB32 *)FIO1DIR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a5	@ At line number 1189
	.ascii "FIO2DIR_B (*(volatile struct DB32 *)FIO2DIR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a6	@ At line number 1190
	.ascii "FIO3DIR_B (*(volatile struct DB32 *)FIO3DIR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a7	@ At line number 1191
	.ascii "FIO4DIR_B (*(volatile struct DB32 *)FIO4DIR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4a9	@ At line number 1193
	.ascii "FIO0PIN_B (*(volatile struct DB32 *)FIO0PIN_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4aa	@ At line number 1194
	.ascii "FIO1PIN_B (*(volatile struct DB32 *)FIO1PIN_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4ab	@ At line number 1195
	.ascii "FIO2PIN_B (*(volatile struct DB32 *)FIO2PIN_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4ac	@ At line number 1196
	.ascii "FIO3PIN_B (*(volatile struct DB32 *)FIO3PIN_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4ad	@ At line number 1197
	.ascii "FIO4PIN_B (*(volatile struct DB32 *)FIO4PIN_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4af	@ At line number 1199
	.ascii "FIO0SET_B (*(volatile struct DB32 *)FIO0SET_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b0	@ At line number 1200
	.ascii "FIO1SET_B (*(volatile struct DB32 *)FIO1SET_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b1	@ At line number 1201
	.ascii "FIO2SET_B (*(volatile struct DB32 *)FIO2SET_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b2	@ At line number 1202
	.ascii "FIO3SET_B (*(volatile struct DB32 *)FIO3SET_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b3	@ At line number 1203
	.ascii "FIO4SET_B (*(volatile struct DB32 *)FIO4SET_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b5	@ At line number 1205
	.ascii "FIO0CLR_B (*(volatile struct DB32 *)FIO0CLR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b6	@ At line number 1206
	.ascii "FIO1CLR_B (*(volatile struct DB32 *)FIO1CLR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b7	@ At line number 1207
	.ascii "FIO2CLR_B (*(volatile struct DB32 *)FIO2CLR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b8	@ At line number 1208
	.ascii "FIO3CLR_B (*(volatile struct DB32 *)FIO3CLR_ADR)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x4b9	@ At line number 1209
	.ascii "FIO4CLR_B (*(volatile struct DB32 *)FIO4CLR_ADR)\0"	@ The macro
	.byte	0x4	@ End file
	.file 13 "../../include/bios2388.h"
	.byte	0x3	@ Start new file
	.uleb128 0x3	@ Included from line number 3
	.uleb128 0xd	@ file ../../include/bios2388.h
	.byte	0x1	@ Define macro
	.uleb128 0x2	@ At line number 2
	.ascii "_BIOS2388_H_ \0"	@ The macro
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
	.uleb128 0x4	@ Included from line number 4
	.uleb128 0x3	@ file ../../include/ff.h
	.byte	0x1	@ Define macro
	.uleb128 0x17	@ At line number 23
	.ascii "FF_DEFINED 87030\0"	@ The macro
	.byte	0x3	@ Start new file
	.uleb128 0x1d	@ Included from line number 29
	.uleb128 0x2	@ file ../../include/integer.h
	.byte	0x1	@ Define macro
	.uleb128 0x6	@ At line number 6
	.ascii "_FF_INTEGER \0"	@ The macro
	.byte	0x4	@ End file
	.file 14 "../../include/ffconf.h"
	.byte	0x3	@ Start new file
	.uleb128 0x1e	@ Included from line number 30
	.uleb128 0xe	@ file ../../include/ffconf.h
	.byte	0x1	@ Define macro
	.uleb128 0x5	@ At line number 5
	.ascii "FFCONF_DEF 87030\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb	@ At line number 11
	.ascii "FF_FS_READONLY 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x12	@ At line number 18
	.ascii "FF_FS_MINIMIZE 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x1c	@ At line number 28
	.ascii "FF_USE_STRFUNC 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x24	@ At line number 36
	.ascii "FF_USE_FIND 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x29	@ At line number 41
	.ascii "FF_USE_MKFS 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x2d	@ At line number 45
	.ascii "FF_USE_FASTSEEK 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x31	@ At line number 49
	.ascii "FF_USE_EXPAND 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x35	@ At line number 53
	.ascii "FF_USE_CHMOD 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3a	@ At line number 58
	.ascii "FF_USE_LABEL 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "FF_USE_FORWARD 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x47	@ At line number 71
	.ascii "FF_CODE_PAGE 932\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x64	@ At line number 100
	.ascii "FF_USE_LFN 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x65	@ At line number 101
	.ascii "FF_MAX_LFN 255\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x76	@ At line number 118
	.ascii "FF_LFN_UNICODE 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x7d	@ At line number 125
	.ascii "FF_STRF_ENCODE 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x8a	@ At line number 138
	.ascii "FF_FS_RPATH 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x97	@ At line number 151
	.ascii "FF_VOLUMES 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9b	@ At line number 155
	.ascii "FF_STR_VOLUME_ID 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x9c	@ At line number 156
	.ascii "FF_VOLUME_STRS \"RAM\",\"NAND\",\"CF\",\"SD\",\"SD2\",\"USB\",\"USB2\",\"USB3\"\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xa4	@ At line number 164
	.ascii "FF_MULTI_PARTITION 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xad	@ At line number 173
	.ascii "FF_MIN_SS 512\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xae	@ At line number 174
	.ascii "FF_MAX_SS 512\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xb7	@ At line number 183
	.ascii "FF_USE_TRIM 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xbd	@ At line number 189
	.ascii "FF_FS_NOFSINFO 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xce	@ At line number 206
	.ascii "FF_FS_TINY 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xd5	@ At line number 213
	.ascii "FF_FS_EXFAT 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdb	@ At line number 219
	.ascii "FF_FS_NORTC 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdc	@ At line number 220
	.ascii "FF_NORTC_MON 8\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xdd	@ At line number 221
	.ascii "FF_NORTC_MDAY 15\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xde	@ At line number 222
	.ascii "FF_NORTC_YEAR 2017\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xe9	@ At line number 233
	.ascii "FF_FS_LOCK 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf5	@ At line number 245
	.ascii "FF_FS_REENTRANT 0\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf6	@ At line number 246
	.ascii "FF_FS_TIMEOUT 1000\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0xf7	@ At line number 247
	.ascii "FF_SYNC_t HANDLE\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x1	@ Define macro
	.uleb128 0x3e	@ At line number 62
	.ascii "_T(x) x\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x3f	@ At line number 63
	.ascii "_TEXT(x) x\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x40	@ At line number 64
	.ascii "_INC_TCHAR \0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x115	@ At line number 277
	.ascii "f_eof(fp) ((int)((fp)->fptr == (fp)->obj.objsize))\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x116	@ At line number 278
	.ascii "f_error(fp) ((fp)->err)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x117	@ At line number 279
	.ascii "f_tell(fp) ((fp)->fptr)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x118	@ At line number 280
	.ascii "f_size(fp) ((fp)->obj.objsize)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x119	@ At line number 281
	.ascii "f_rewind(fp) f_lseek((fp), 0)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11a	@ At line number 282
	.ascii "f_rewinddir(dp) f_readdir((dp), 0)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11b	@ At line number 283
	.ascii "f_rmdir(path) f_unlink(path)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11c	@ At line number 284
	.ascii "f_unmount(path) f_mount(0, path, 0)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x11f	@ At line number 287
	.ascii "EOF (-1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x148	@ At line number 328
	.ascii "FA_READ 0x01\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x149	@ At line number 329
	.ascii "FA_WRITE 0x02\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14a	@ At line number 330
	.ascii "FA_OPEN_EXISTING 0x00\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14b	@ At line number 331
	.ascii "FA_CREATE_NEW 0x04\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14c	@ At line number 332
	.ascii "FA_CREATE_ALWAYS 0x08\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14d	@ At line number 333
	.ascii "FA_OPEN_ALWAYS 0x10\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x14e	@ At line number 334
	.ascii "FA_OPEN_APPEND 0x30\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x151	@ At line number 337
	.ascii "CREATE_LINKMAP ((FSIZE_t)0 - 1)\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x154	@ At line number 340
	.ascii "FM_FAT 0x01\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x155	@ At line number 341
	.ascii "FM_FAT32 0x02\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x156	@ At line number 342
	.ascii "FM_EXFAT 0x04\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x157	@ At line number 343
	.ascii "FM_ANY 0x07\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x158	@ At line number 344
	.ascii "FM_SFD 0x08\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15b	@ At line number 347
	.ascii "FS_FAT12 1\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15c	@ At line number 348
	.ascii "FS_FAT16 2\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15d	@ At line number 349
	.ascii "FS_FAT32 3\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x15e	@ At line number 350
	.ascii "FS_EXFAT 4\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x161	@ At line number 353
	.ascii "AM_RDO 0x01\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x162	@ At line number 354
	.ascii "AM_HID 0x02\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x163	@ At line number 355
	.ascii "AM_SYS 0x04\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x164	@ At line number 356
	.ascii "AM_DIR 0x10\0"	@ The macro
	.byte	0x1	@ Define macro
	.uleb128 0x165	@ At line number 357
	.ascii "AM_ARC 0x20\0"	@ The macro
	.byte	0x4	@ End file
	.byte	0x3	@ Start new file
	.uleb128 0x5	@ Included from line number 5
	.uleb128 0x4	@ file ../../include/xprintf.h
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
	.byte	0x4	@ End file
	.byte	0	@ End compilation unit
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF52:
	.ascii	"FR_NOT_READY\000"
.LASF18:
	.ascii	"fs_type\000"
.LASF23:
	.ascii	"n_rootdir\000"
.LASF78:
	.ascii	"path\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF43:
	.ascii	"sect\000"
.LASF67:
	.ascii	"FR_TOO_MANY_OPEN_FILES\000"
.LASF32:
	.ascii	"dirbase\000"
.LASF6:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF72:
	.ascii	"buff\000"
.LASF68:
	.ascii	"FR_INVALID_PARAMETER\000"
.LASF29:
	.ascii	"fsize\000"
.LASF28:
	.ascii	"n_fatent\000"
.LASF58:
	.ascii	"FR_INVALID_OBJECT\000"
.LASF4:
	.ascii	"long int\000"
.LASF20:
	.ascii	"n_fats\000"
.LASF62:
	.ascii	"FR_NO_FILESYSTEM\000"
.LASF70:
	.ascii	"xfunc_out\000"
.LASF9:
	.ascii	"double\000"
.LASF66:
	.ascii	"FR_NOT_ENOUGH_CORE\000"
.LASF57:
	.ascii	"FR_EXIST\000"
.LASF31:
	.ascii	"fatbase\000"
.LASF14:
	.ascii	"DWORD\000"
.LASF17:
	.ascii	"FSIZE_t\000"
.LASF24:
	.ascii	"csize\000"
.LASF19:
	.ascii	"pdrv\000"
.LASF26:
	.ascii	"free_clst\000"
.LASF12:
	.ascii	"BYTE\000"
.LASF36:
	.ascii	"attr\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF77:
	.ascii	"C:\\Users\\USER\\Desktop\\ARM-DEV\\Projects\\lpc23x"
	.ascii	"x\\lpc2388-bios\\sdk\\application\\dir\000"
.LASF11:
	.ascii	"UINT\000"
.LASF45:
	.ascii	"ftime\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF33:
	.ascii	"database\000"
.LASF51:
	.ascii	"FR_INT_ERR\000"
.LASF76:
	.ascii	"main.c\000"
.LASF50:
	.ascii	"FR_DISK_ERR\000"
.LASF34:
	.ascii	"winsect\000"
.LASF49:
	.ascii	"FR_OK\000"
.LASF47:
	.ascii	"fname\000"
.LASF59:
	.ascii	"FR_WRITE_PROTECTED\000"
.LASF35:
	.ascii	"FATFS\000"
.LASF44:
	.ascii	"fdate\000"
.LASF10:
	.ascii	"sizetype\000"
.LASF64:
	.ascii	"FR_TIMEOUT\000"
.LASF13:
	.ascii	"WORD\000"
.LASF27:
	.ascii	"cdir\000"
.LASF38:
	.ascii	"sclust\000"
.LASF53:
	.ascii	"FR_NO_FILE\000"
.LASF15:
	.ascii	"TCHAR\000"
.LASF61:
	.ascii	"FR_NOT_ENABLED\000"
.LASF25:
	.ascii	"last_clst\000"
.LASF39:
	.ascii	"objsize\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"short int\000"
.LASF60:
	.ascii	"FR_INVALID_DRIVE\000"
.LASF56:
	.ascii	"FR_DENIED\000"
.LASF41:
	.ascii	"dptr\000"
.LASF63:
	.ascii	"FR_MKFS_ABORTED\000"
.LASF65:
	.ascii	"FR_LOCKED\000"
.LASF21:
	.ascii	"wflag\000"
.LASF16:
	.ascii	"char\000"
.LASF75:
	.ascii	"GNU C11 6.3.1 20170620 (release) [ARM/embedded-6-br"
	.ascii	"anch revision 249437] -mcpu=arm7tdmi-s -g3 -gdwarf-"
	.ascii	"2 -gstrict-dwarf -O\000"
.LASF30:
	.ascii	"volbase\000"
.LASF55:
	.ascii	"FR_INVALID_NAME\000"
.LASF22:
	.ascii	"fsi_flag\000"
.LASF71:
	.ascii	"xfunc_in\000"
.LASF46:
	.ascii	"fattrib\000"
.LASF48:
	.ascii	"FILINFO\000"
.LASF74:
	.ascii	"scan_files\000"
.LASF37:
	.ascii	"stat\000"
.LASF69:
	.ascii	"FRESULT\000"
.LASF54:
	.ascii	"FR_NO_PATH\000"
.LASF73:
	.ascii	"main\000"
.LASF40:
	.ascii	"FFOBJID\000"
.LASF42:
	.ascii	"clust\000"
	.ident	"GCC: (GNU Tools for ARM Embedded Processors 6-2017-q2-update) 6.3.1 20170620 (release) [ARM/embedded-6-branch revision 249437]"
