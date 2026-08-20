	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008ed8
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r2, #0x8e
	ldr	r3, [r0, #8]
	lsl	r2, #16
	cmp	r3, r2
	bge	.Lm907_f28
	mov	r1, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r1, #12
	cmp	r3, r1
	bge	.Lm907_f22
	ldr	r5, =.Lm907_1d88
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0
	bne	.Lm907_f0e
	bl	OvlFunc_907_2008f3c
	ldrh	r2, [r5]
.Lm907_f0e:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r5]
	lsl	r2, #13
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lm907_f28
	ldr	r3, .Lm907_f30	@ 0
	strh	r3, [r5]
	b	.Lm907_f28
.Lm907_f22:
	ldr	r2, =.Lm907_1d88
	ldr	r3, .Lm907_f30	@ 0
	strh	r3, [r2]
.Lm907_f28:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm907_f30:
	.word	0
.func_end OvlFunc_907_2008ed8

