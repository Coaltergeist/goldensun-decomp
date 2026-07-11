	.include "macros.inc"

.thumb_func_start OvlFunc_927_2008ee0
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x44
	cmp	r2, r3
	bne	.Lef8
	ldr	r0, =.L30f4
	b	.Lf0e
.Lef8:
	ldr	r3, =0x45
	cmp	r2, r3
	bne	.Lf02
	ldr	r0, =.L31e4
	b	.Lf0e
.Lf02:
	ldr	r3, =0x46
	cmp	r2, r3
	bne	.Lf0c
	ldr	r0, =.L3334
	b	.Lf0e
.Lf0c:
	ldr	r0, =.L34b4
.Lf0e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_927_2008ee0

