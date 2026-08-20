	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200aa48
	push	{r5, r6, lr}
	ldr	r3, =.Lm932_523c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.Lm932_2a62
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.Lm932_2a82
	mov	r6, r5
	add	r6, #0x64
	b	.Lm932_2aa2
.Lm932_2a62:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	b	.Lm932_2aa0
.Lm932_2a82:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	sub	r3, r2
.Lm932_2aa0:
	str	r3, [r5, #8]
.Lm932_2aa2:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.Lm932_2ade
	ldr	r3, =.Lm932_523c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm932_2abc
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.Lm932_2ac6
	b	.Lm932_2ace
.Lm932_2abc:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	b	.Lm932_2acc
.Lm932_2ac6:
	ldr	r3, [r5, #8]
	ldr	r1, =0xffff8000
	add	r3, r1
.Lm932_2acc:
	str	r3, [r5, #8]
.Lm932_2ace:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff334
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.Lm932_2af2
.Lm932_2ade:
	ldr	r3, [r5, #0x10]
	ldr	r2, =0x13333
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.Lm932_2af2:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm932_2b10
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.Lm932_2b10:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lm932_2b1a
	sub	r3, r2, #2
	b	.Lm932_2b28
.Lm932_2b1a:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.Lm932_2b28:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.Lm932_2b3a
	mov	r0, r5
	bl	__DeleteActor
.Lm932_2b3a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200aa48

