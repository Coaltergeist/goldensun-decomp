	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c0a24  @ 0x080c0a24
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r3, [sp, #4]
	ldr	r3, =iwram_3001f00
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r2, r3
	sub	r2, #0x88
	ldr	r2, [r2]
	mov	r10, r0
	mov	r0, #0x80
	ldr	r1, [r3]
	lsl	r0, #4
	mov	r9, r2
	sub	r3, #0x80
	mov	r2, #0
	ldr	r3, [r3]
	mov	r11, r0
	str	r2, [sp]
	ldr	r0, [sp, #0x30]
	mov	r2, #0x80
	lsl	r2, #9
	cmp	r0, r2
	blt	.Lc0a78
	mov	r0, #0x80
	lsl	r0, #6
	str	r0, [sp]
	mov	r0, #0x36
	ldrsh	r2, [r3, r0]
	neg	r2, r2
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0xd0
	lsl	r2, #7
	add	r2, r3
	mov	r11, r2
.Lc0a78:
	mov	r3, r9
	cmp	r3, #0
	bne	.Lc0a80
	b	.Lc0bd2
.Lc0a80:
	ldr	r0, [r1, #8]
	cmp	r0, #1
	beq	.Lc0a8c
	ldr	r3, [r1, #0xc]
	cmp	r3, #1
	bne	.Lc0a9a
.Lc0a8c:
	ldr	r3, [r1, #0x10]
	cmp	r3, #0
	bne	.Lc0a9a
	ldr	r2, =iwram_3001ad0
	mov	r1, r11
	asr	r3, r1, #8
	strh	r3, [r2, #4]
.Lc0a9a:
	cmp	r0, #2
	beq	.Lc0aa0
	b	.Lc0bd2
.Lc0aa0:
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #1
	eor	r2, r3
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #6
	mov	r1, #0x80
	add	r3, r9
	ldr	r0, [sp, #0x30]
	lsl	r1, #9
	ldr	r2, =Func_80008ac
	mov	r7, r3
	bl	_call_via_r2
	mov	r6, r9
	add	r6, #0x10
	asr	r5, r0, #8
	mov	r3, #0
	strh	r5, [r6]
	strh	r3, [r6, #2]
	strh	r3, [r6, #4]
	strh	r5, [r6, #6]
	mov	r14, r0
	ldr	r3, [sp, #0x30]
	ldr	r0, =0xffff0000
	add	r3, r0
	mov	r8, r3
	add	r7, #0x20
	ldr	r4, =Func_8000888
	mov	r0, r10
	mov	r1, r8
	.call_via r4
	mov	r1, r0
	mov	r0, r14
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	ldr	r0, [sp, #0xc]
	.call_via r4
	mov	r1, r0
	mov	r0, r14
	.call_via r4
	ldr	r2, =0x7fff
	ldr	r1, [sp, #8]
	add	r3, r2
	asr	r3, #8
	add	r3, r1
	add	r3, r11
	str	r3, [r6, #8]
	add	r0, r2
	ldr	r2, [sp, #4]
	ldr	r3, =0xfffff000
	asr	r0, #8
	add	r0, r2
	lsl	r5, #16
	mov	r1, #0x80
	add	r0, r3
	asr	r5, #16
	lsl	r1, #7
	str	r0, [r6, #0xc]
	sub	r1, r0
	ldr	r2, =Func_80008ac
	mov	r0, r5
	bl	_call_via_r2
	asr	r0, #16
	add	r6, r0, #1
	ldr	r0, =0x16b
	mov	r5, #0
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lc0b4a
	ldr	r3, .Lc0b6c	@ 0x3f8e
.Lc0b40:
	add	r5, #1
	strh	r3, [r7]
	add	r7, #2
	cmp	r5, #0xf
	bls	.Lc0b40
.Lc0b4a:
	cmp	r6, #0x88
	bls	.Lc0b50
	mov	r6, #0x88
.Lc0b50:
	cmp	r5, r6
	bcs	.Lc0b94
	ldr	r3, [sp]
	lsl	r2, r3, #16
	ldr	r3, .Lc0b70	@ 0x478a
	lsr	r2, #16
	orr	r2, r3
.Lc0b5e:
	add	r5, #1
	strh	r2, [r7]
	add	r7, #2
	cmp	r5, r6
	bcc	.Lc0b5e
	b	.Lc0b94

	.align	2, 0
.Lc0b6c:
	.word	0x3f8e
.Lc0b70:
	.word	0x478a
	.pool

.Lc0b94:
	cmp	r5, #0x87
	bhi	.Lc0bac
	ldr	r0, [sp]
	ldr	r3, =0x478e
	lsl	r2, r0, #16
	lsr	r2, #16
	orr	r2, r3
.Lc0ba2:
	add	r5, #1
	strh	r2, [r7]
	add	r7, #2
	cmp	r5, #0x87
	bls	.Lc0ba2
.Lc0bac:
	cmp	r5, #0x9f
	bhi	.Lc0bc8
	ldr	r3, =0x3f8e
.Lc0bb2:
	add	r5, #1
	strh	r3, [r7]
	add	r7, #2
	cmp	r5, #0x9f
	bls	.Lc0bb2
	b	.Lc0bc8

	.pool_aligned

.Lc0bc8:
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	str	r3, [r1]
.Lc0bd2:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c0a24
