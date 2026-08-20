	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_2008f80
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ed8
	ldr	r0, =iwram_3001ad0
	ldr	r6, [r3]
	mov	r2, #0xe
	ldrsh	r1, [r0, r2]
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	mov	r2, #0xf1
	lsl	r3, #7
	lsl	r2, #4
	add	r5, r6, r3
	add	r3, r6, r2
	ldr	r3, [r3]
	sub	r2, #0xe
	lsl	r1, #16
	sub	sp, #4
	mov	r10, r3
	add	r3, r6, r2
	ldrh	r2, [r3]
	str	r1, [sp]
	lsr	r3, r1, #16
	ldr	r1, =0xf08
	add	r2, r3
	add	r3, r6, r1
	ldr	r3, [r3]
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf18
	add	r3, r6, r2
	ldr	r3, [r3]
	ldrh	r0, [r0, #0xc]
	mov	r14, r3
	ldr	r3, =Func_8000888
	mov	r9, r0
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r11, r0
.Lm970_fe6:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.Lm970_14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via	r8
	cmp	r0, #0
	bge	.Lm970_ffe
	add	r0, #0xff
.Lm970_ffe:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.Lm970_fe6
	mov	r2, #0xf0
	lsl	r2, #4
	add	r3, r6, r2
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r2, r3
	lsl	r3, r2, #4
	sub	r3, r2
	ldr	r0, =0xf14
	lsl	r3, #7
	add	r3, r6, r3
	add	r5, r3, #2
	add	r3, r6, r0
	ldr	r3, [r3]
	ldr	r1, =0xf02
	mov	r10, r3
	add	r3, r6, r1
	ldrh	r2, [r3]
	ldr	r3, [sp]
	sub	r0, #8
	lsr	r1, r3, #16
	add	r3, r6, r0
	ldr	r3, [r3]
	add	r2, r1
	mov	r4, r3
	mul	r4, r2
	ldr	r2, =0xf1c
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r14, r3
	ldr	r3, =Func_8000888
	mov	r0, #0xff
	mov	r7, #0
	mov	r8, r3
	mov	r9, r1
	mov	r11, r0
.Lm970_1058:
	mov	r1, r11
	asr	r3, r4, #16
	and	r3, r1
	ldr	r2, =.Lm970_14c8
	lsl	r3, #1
	ldrsh	r0, [r2, r3]
	mov	r1, r14
	.call_via r8
	cmp	r0, #0
	bge	.Lm970_1072
	add	r0, #0xff
.Lm970_1072:
	lsl	r3, r0, #8
	lsr	r3, #16
	add	r3, r9
	add	r7, #1
	strh	r3, [r5]
	add	r4, r10
	add	r5, #4
	cmp	r7, #0xa0
	bne	.Lm970_1058
	ldr	r3, =0xf02
	add	r2, r6, r3
	ldrh	r3, [r2]
	mov	r0, #0xf0
	add	r3, #1
	strh	r3, [r2]
	lsl	r0, #4
	add	r1, r6, r0
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008f80

