	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start CrossboneIsleDungeon4_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x75
	cmp	r2, r3
	bne	.Lm948_ef8
	ldr	r0, =.Lm948_2bb4
	b	.Lm948_f0e
.Lm948_ef8:
	ldr	r3, =0x76
	cmp	r2, r3
	bne	.Lm948_f02
	ldr	r0, =.Lm948_2cb0
	b	.Lm948_f0e
.Lm948_f02:
	ldr	r3, =0x78
	cmp	r2, r3
	bne	.Lm948_f0c
	ldr	r0, =gScript_953__0200adac
	b	.Lm948_f0e
.Lm948_f0c:
	ldr	r0, =.Lm948_2ba8
.Lm948_f0e:
	pop	{r1}
	bx	r1
.func_end CrossboneIsleDungeon4_GetEvents

