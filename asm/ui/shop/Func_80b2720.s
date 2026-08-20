	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2720  @ 0x080b2720
	push	{r5, lr}
	lsl	r3, r0, #5
	add	r3, r0
	mov	r5, r1
	ldr	r1, =.Lb41ac
	lsl	r2, r3, #1
	ldrsh	r3, [r1, r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb274e
	mov	r0, r5
	add	r2, r1
.Lb2738:
	ldrh	r3, [r2]
	add	r4, #1
	strh	r3, [r0]
	add	r2, #2
	add	r0, #2
	cmp	r4, #0x17
	bgt	.Lb274e
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lb2738
.Lb274e:
	ldr	r3, .Lb275c	@ 0
	lsl	r2, r4, #1
	strh	r3, [r2, r5]
	mov	r0, r4
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb275c:
	.word	0
.func_end Func_80b2720

