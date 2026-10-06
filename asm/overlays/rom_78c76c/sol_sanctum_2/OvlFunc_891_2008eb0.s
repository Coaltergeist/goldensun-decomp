	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2008eb0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r2, [r3]
	ldr	r6, =.Lm891_2a50
	cmp	r2, #0
	bge	.Lm891_ed0
	ldr	r1, =0xffff
	add	r2, r1
.Lm891_ed0:
	ldr	r3, [r3, #4]
	asr	r2, #16
	mov	r10, r2
	cmp	r3, #0
	bge	.Lm891_ede
	ldr	r2, =0xffff
	add	r3, r2
.Lm891_ede:
	asr	r3, #16
	mov	r2, #0x50
	sub	r2, r3
	mov	r8, r2
	mov	r3, r8
	add	r3, #0x10
	cmp	r3, #0xaf
	bhi	.Lm891_fb2
	ldr	r3, =.Lm891_2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #10
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lm891_f08:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lm891_f08
	ldr	r3, =.Lm891_2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #9
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r2, =0x1ff
	ldr	r3, =0xfffffe00
	mov	r7, #0
	mov	r11, r2
	mov	r9, r3
.Lm891_f48:
	ldrh	r3, [r6, #6]
	mov	r2, r5
	mov	r1, r11
	and	r2, r1
	mov	r1, r9
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lm891_f48
	ldr	r3, =.Lm891_2974
	ldr	r3, [r3]
	mov	r1, r10
	asr	r3, #8
	sub	r5, r3, r1
	mov	r3, #0x20
	neg	r3, r3
	orr	r5, r3
	ldr	r1, =0xfffffe00
	ldr	r3, =0x1ff
	mov	r2, #8
	mov	r7, #0
	add	r8, r2
	mov	r9, r3
	mov	r10, r1
.Lm891_f8c:
	mov	r2, r5
	mov	r3, r9
	and	r2, r3
	ldrh	r3, [r6, #6]
	mov	r1, r10
	and	r3, r1
	orr	r3, r2
	mov	r2, r8
	strh	r3, [r6, #6]
	strb	r2, [r6, #4]
	mov	r0, r6
	mov	r1, #0
	add	r7, #1
	bl	__Func_8003dec
	add	r5, #0x20
	add	r6, #0xc
	cmp	r7, #8
	bls	.Lm891_f8c
.Lm891_fb2:
	ldr	r2, =.Lm891_2974
	ldr	r3, [r2]
	add	r3, #0x80
	str	r3, [r2]
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008eb0

