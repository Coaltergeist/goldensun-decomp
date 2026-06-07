	.include "macros.inc"

.thumb_func_start Func_809abb4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x10]
	mov	r9, r3
	ldr	r3, [r5, #0xc]
	mov	r0, r9
	str	r3, [r0, #8]
	mov	r1, #0
	mov	r0, #0xfa
	mov	r2, #0
	mov	r3, #0
	sub	sp, #0x24
	bl	Func_8096c80
	mov	r1, #0
	mov	r6, r0
	mov	r7, #0
	bl	_Func_800c300
	cmp	r6, #0
	bne	.L9abea
	b	.L9ad52
.L9abea:
	bl	Func_8097384
	ldr	r3, [r5, #8]
	add	r1, sp, #0xc
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r5, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r1, #8]
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r2, sp
	str	r3, [r2]
	ldr	r3, [r0, #8]
	mov	r0, #0x80
	lsl	r0, #12
	add	r3, r0
	str	r3, [r2, #4]
	mov	r0, r9
	ldr	r3, [r0, #0xc]
	str	r3, [r2, #8]
	mov	r10, r1
	mov	r8, r2
.L9ac1e:
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2]
	ldr	r5, [r0]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2, #4]
	ldr	r5, [r0, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r8
	mov	r0, r10
	ldr	r3, [r2, #8]
	ldr	r5, [r0, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	Func_af0_from_thumb
	mov	r2, #0x80
	lsl	r2, #7
	add	r0, r2
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	Func_80030f8
	cmp	r7, #0xb
	blt	.L9ac1e
	mov	r0, #5
	bl	Func_80030f8
	mov	r1, #1
	mov	r0, r6
	bl	_Func_800c300
	mov	r0, #0x6c
	bl	_Func_80f9080
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, #0x6c
	bl	_Func_80f9080
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, #0x6c
	bl	_Func_80f9080
	mov	r0, #0xa
	bl	Func_80030f8
	mov	r0, #0x6d
	bl	_Func_80f9080
	add	r3, sp, #0x18
	mov	r5, r9
	mov	r8, r3
	mov	r0, #0xf
	add	r5, #0x58
	mov	r7, r8
	mov	r10, r0
.L9acd0:
	ldr	r3, [r6, #8]
	str	r3, [r7]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #12
	add	r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	bl	Func_80974d8
	bl	Random
	mov	r1, r0
	mov	r0, #0x80
	lsl	r0, #11
	mov	r2, r7
	bl	Func_800447c
	ldr	r3, [r7, #8]
	ldr	r2, [r7]
	mov	r0, r5
	ldr	r1, =0x11d
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_809aa98
	bl	Func_809ba7c
	ldr	r0, [r5]
	mov	r1, #7
	bl	_Func_800b684
	mov	r3, #1
	neg	r3, r3
	add	r10, r3
	mov	r0, r10
	add	r5, #0x48
	cmp	r0, #0
	bge	.L9acd0
	ldr	r3, [r6, #8]
	mov	r2, r8
	str	r3, [r2]
	mov	r0, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, #8
	str	r3, [r2, #8]
	bl	Func_80030f8
	mov	r0, r6
	bl	_Func_800c0f4
	mov	r0, #4
	bl	Func_80030f8
	mov	r0, #0x1e
	bl	Func_80030f8
	bl	Func_809748c
.L9ad52:
	add	sp, #0x24
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809abb4

	.section .rodata
	.global .La012c

.La012c:
	.incrom 0xa012c, 0xa0138
