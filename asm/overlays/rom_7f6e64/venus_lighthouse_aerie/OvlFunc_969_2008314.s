	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_2008314
	push	{r5, lr}
	mov	r5, r0
	add	r5, #0x64
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #2
	beq	.Lm969_352
	cmp	r3, #2
	bgt	.Lm969_32c
	cmp	r3, #0
	beq	.Lm969_366
	b	.Lm969_386
.Lm969_32c:
	cmp	r3, #4
	beq	.Lm969_344
	cmp	r3, #6
	bne	.Lm969_386
	ldr	r3, [r0, #0x18]
	ldr	r2, =0xffffe000
	add	r3, r2
	str	r3, [r0, #0x18]
	mov	r2, #0x80
	ldr	r3, [r0, #0x1c]
	lsl	r2, #5
	b	.Lm969_360
.Lm969_344:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffff800
	b	.Lm969_35e
.Lm969_352:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
.Lm969_35e:
	ldr	r3, [r0, #0x1c]
.Lm969_360:
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.Lm969_386
.Lm969_366:
	ldr	r3, [r0, #0x18]
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r2, =0xfffffc00
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	bl	__Random
	mov	r1, #0x50
	bl	_umodsi3_RAM
	add	r0, #0x50
	strh	r0, [r5]
.Lm969_386:
	ldrh	r3, [r5]
	sub	r3, #1
	strh	r3, [r5]
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_969_2008314

