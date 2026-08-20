	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20091c4
	push	{r5, r6, r7, lr}
	ldr	r3, =.Lm970_1c1a
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldr	r2, =.Lm970_1c18
	ldrh	r3, [r3, #2]
	mov	r14, r2
	lsr	r3, #5
	mov	r1, r14
	mov	r12, r3
	mov	r4, #0
	ldrsh	r3, [r1, r4]
	ldr	r0, =.Lm970_1af8
	ldrh	r2, [r2]
	cmp	r3, #0
	beq	.Lm970_11f0
	sub	r3, r2, #1
	mov	r2, r14
	strh	r3, [r2]
.Lm970_11f0:
	mov	r5, #0
.Lm970_11f2:
	mov	r4, r14
	ldrh	r3, [r4]
	lsl	r4, r3, #16
	asr	r1, r4, #16
	neg	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	mov	r2, #0
	mov	r7, #0xff
	stmia	r0!, {r2}
	and	r3, r7
	lsl	r2, r5, #21
	ldr	r6, =0x80004000
	orr	r3, r2
	orr	r3, r6
	stmia	r0!, {r3}
	mov	r2, r12
	add	r5, #1
	stmia	r0!, {r2}
	cmp	r5, #7
	bls	.Lm970_11f2
	lsr	r3, r4, #31
	add	r3, r1, r3
	asr	r3, #1
	mov	r2, r3
	add	r2, #0x88
	and	r2, r7
	mov	r5, #0
	mov	r7, #0
	mov	r4, r6
	mov	r1, r0
.Lm970_1232:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r7, [r1]
	str	r3, [r1, #8]
	add	r0, #0xc
	add	r1, #0xc
	cmp	r5, #7
	bls	.Lm970_1232
	ldr	r3, =.Lm970_1c18
	ldrh	r3, [r3]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	add	r2, #0x98
	mov	r3, #0xff
	ldr	r4, =0x80004000
	mov	r5, #0
	and	r2, r3
	mov	r6, #0
	mov	r1, r0
.Lm970_1266:
	lsl	r3, r5, #21
	orr	r3, r2
	orr	r3, r4
	str	r3, [r1, #4]
	add	r5, #1
	mov	r3, r12
	str	r6, [r1]
	str	r3, [r1, #8]
	add	r1, #0xc
	cmp	r5, #7
	bls	.Lm970_1266
	ldr	r6, =.Lm970_1af8
	mov	r5, #0
.Lm970_1280:
	mov	r0, r6
	mov	r1, #0xff
	add	r5, #1
	bl	__Func_8003dec
	add	r6, #0xc
	cmp	r5, #0x17
	bls	.Lm970_1280
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_20091c4

