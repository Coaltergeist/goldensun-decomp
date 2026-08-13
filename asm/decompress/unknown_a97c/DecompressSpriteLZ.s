	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecompressSpriteLZ  @ 0x0800a97c
	push	{r5, r6, r7, lr}
	ldrb	r3, [r0, #1]
	ldrb	r4, [r0]
	lsl	r3, #8
	orr	r4, r3
	mov	r5, r1
	add	r6, r0, #2
	cmp	r4, #0
	bne	.La992
	mov	r0, r6
	b	.Laa00
.La992:
	add	r0, r4
	ldrb	r1, [r0]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r7, r6
	mov	r12, r5
	b	.La9d4
.La9a0:
	asr	r2, r4, #12
	cmp	r2, #0
	bne	.La9ae
	ldrb	r3, [r0]
	mov	r2, r3
	add	r2, #0x10
	add	r0, #1
.La9ae:
	ldr	r3, =0xfff
	add	r2, #2
	and	r4, r3
	sub	r4, r7, r4
	cmp	r2, #0
	beq	.La9c8
.La9ba:
	ldrb	r3, [r4]
	sub	r2, #1
	strb	r3, [r5]
	add	r4, #1
	add	r5, #1
	cmp	r2, #0
	bne	.La9ba
.La9c8:
	lsr	r1, #1
	cmp	r1, #0
	bne	.La9d8
	ldrb	r1, [r0]
	mov	r3, #0x80
	lsl	r3, #1
.La9d4:
	add	r0, #1
	orr	r1, r3
.La9d8:
	mov	r3, #1
	and	r3, r1
	cmp	r3, #0
	beq	.La9ee
	cmp	r1, #1
	beq	.La9c8
	ldrb	r3, [r6]
	add	r6, #1
	strb	r3, [r5]
	add	r5, #1
	b	.La9c8
.La9ee:
	ldrb	r3, [r0]
	add	r0, #1
	lsl	r4, r3, #8
	ldrb	r3, [r0]
	orr	r4, r3
	add	r0, #1
	cmp	r4, #0
	bne	.La9a0
	mov	r0, r12
.Laa00:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end DecompressSpriteLZ
