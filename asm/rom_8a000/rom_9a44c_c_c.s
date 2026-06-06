	.include "macros.inc"

.thumb_func_start Func_809a8c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x10]
	mov	r10, r3
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r3, #0
	sub	sp, #0x24
	mov	r8, r3
	ldr	r3, [r2, #8]
	add	r5, sp, #0xc
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r2, r10
	ldr	r3, [r2, #4]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r2, #8]
	ldr	r2, =0xfffc0000
	add	r3, r2
	str	r3, [r6, #4]
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	mov	r0, #0xda
	str	r3, [r6, #8]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	Func_8096c80
	mov	r7, r0
	cmp	r7, #0
	bne	.L9a91c
	b	.L9aa64
.L9a91c:
	bl	Func_8097384
	mov	r0, r7
	mov	r1, #2
	bl	_Func_800c300
	mov	r9, r5
.L9a92a:
	mov	r2, r9
	ldr	r5, [r2]
	ldr	r3, [r6]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #8]
	mov	r2, r9
	ldr	r5, [r2, #4]
	ldr	r3, [r6, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r9
	ldr	r5, [r2, #8]
	ldr	r3, [r6, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	ldr	r3, =0x10ccc
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	Func_af0_from_thumb
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	blt	.L9a92a
	ldr	r3, =0x1b333
	str	r3, [r7, #0x18]
	ldr	r3, =0x14ccc
	mov	r0, #0xa3
	str	r3, [r7, #0x1c]
	bl	_Func_80f9080
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r3, r10
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9aa40
	mov	r2, r11
	cmp	r2, #0
	beq	.L9a9be
	ldr	r3, =Func_809a890
	str	r3, [r2, #0x6c]
.L9a9be:
	mov	r3, #0
	mov	r8, r3
	add	r6, sp, #0x18
.L9a9c4:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, =0xcccc
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
	bl	Func_8004458
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Func_8004458
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	Func_800447c
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xf9
	bl	Func_8096c80
	mov	r5, r0
	cmp	r5, #0
	beq	.L9aa24
	ldr	r3, =Func_809a7f4
	str	r3, [r5, #0x6c]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	str	r7, [r5, #0x68]
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	bl	Func_8004458
	strh	r0, [r5, #6]
.L9aa24:
	mov	r0, #6
	bl	Func_80030f8
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xf
	ble	.L9a9c4
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r0, #0x78
	bl	Func_80030f8
.L9aa40:
	mov	r1, #1
	mov	r0, r7
	bl	_Func_800c300
	mov	r0, #0x1e
	bl	Func_80030f8
	mov	r0, #0x88
	bl	_Func_80f9080
	mov	r0, #0x14
	bl	Func_80030f8
	mov	r0, r7
	bl	_Func_800c0f4
	bl	Func_809748c
.L9aa64:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809a8c4

.thumb_func_start Func_809aa98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r2, #0x40
	add	r2, r7
	sub	sp, #0xc
	mov	r8, r3
	mov	r10, r2
.L9aab0:
	mov	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L9ab06
	ldr	r3, [r7, #0x14]
	str	r3, [sp]
	ldr	r3, [r7, #0x18]
	mov	r8, sp
	str	r3, [sp, #8]
	bl	Func_8004458
	mov	r5, r0
	bl	Func_8004458
	lsl	r5, #16
	mov	r3, r0
	lsl	r0, r3, #4
	asr	r5, #16
	sub	r0, r3
	mov	r2, #0xa0
	lsl	r5, #16
	lsl	r2, #14
	lsl	r0, #1
	lsr	r5, #16
	add	r0, r2
	mov	r1, r5
	mov	r2, r8
	bl	Func_800447c
	mov	r2, r8
	ldr	r3, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, [r2, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	b	.L9ab66
.L9ab06:
	cmp	r6, #1
	bne	.L9ab1e
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9aab0
.L9ab1e:
	cmp	r6, #2
	bne	.L9ab70
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #4]
	mov	r2, r8
	ldr	r3, [r2, #0xc]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_80974d8
	bl	Func_8004458
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	Func_800447c
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r7
	strh	r3, [r7, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L9ab66:
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9ab84
.L9ab70:
	cmp	r6, #3
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809bb34
.L9ab84:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809aa98

.thumb_func_start Func_809ab98
	push	{lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r2, #1
	add	r3, #0x5b
	strb	r2, [r3]
	bl	Func_809abb4
	pop	{r0}
	bx	r0
.func_end Func_809ab98

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
	bl	Func_8004458
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
