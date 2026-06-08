	.include "macros.inc"

.thumb_func_start OvlFunc_946_2008cc4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x71
	cmp	r2, r3
	bne	.Lcdc
	ldr	r0, =.L3310
	b	.Ld06
.Lcdc:
	ldr	r3, =0x72
	cmp	r2, r3
	bne	.Lce6
	ldr	r0, =.L3358
	b	.Ld06
.Lce6:
	ldr	r3, =0x7b
	cmp	r2, r3
	bne	.Lcf0
	ldr	r0, =.L33a0
	b	.Ld06
.Lcf0:
	ldr	r3, =0x7c
	cmp	r2, r3
	bne	.Lcfa
	ldr	r0, =.L3400
	b	.Ld06
.Lcfa:
	ldr	r3, =0x7d
	cmp	r2, r3
	bne	.Ld04
	ldr	r0, =.L3448
	b	.Ld06
.Ld04:
	ldr	r0, =.L3478
.Ld06:
	pop	{r1}
	bx	r1
.func_end OvlFunc_946_2008cc4

