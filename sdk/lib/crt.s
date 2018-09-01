	.cpu arm7tdmi-s
	.text

	.extern		main
	.extern		_sp_base
	.extern		uart0_putc
	.extern		xfunc_out
	.extern		uart0_getc
	.extern		xfunc_in
	.global		sys_exit

	# save stack
	mov	r1,r13
	ldr	r13,=_sp_base
	push	{r1, r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}

	# call main()
	BL	main

sys_exit:

	# restore console
	ldr	r2, =uart0_putc
	ldr	r3, =xfunc_out
	str	r2, [r3]
	ldr	r2, =uart0_getc
	ldr	r3, =xfunc_in
	str	r2, [r3]

	# restore stack
	ldr	r13,=_sp_base
	sub r13, r13, #44
	pop	{r1, r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
	mov	r13,r1
	bx	lr

