	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltmillerCave_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x93
	cmp	r2, r3
	bne	.Lm957_35b0
	ldr	r0, =.Lm957_4688
	b	.Lm957_35da
.Lm957_35b0:
	ldr	r3, =0x94
	cmp	r2, r3
	bne	.Lm957_35ba
	ldr	r0, =.Lm957_4724
	b	.Lm957_35da
.Lm957_35ba:
	ldr	r3, =0x95
	cmp	r2, r3
	bne	.Lm957_35c4
	ldr	r0, =.Lm957_476c
	b	.Lm957_35da
.Lm957_35c4:
	ldr	r3, =0x96
	cmp	r2, r3
	bne	.Lm957_35ce
	ldr	r0, =.Lm957_4808
	b	.Lm957_35da
.Lm957_35ce:
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lm957_35d8
	ldr	r0, =.Lm957_4850
	b	.Lm957_35da
.Lm957_35d8:
	ldr	r0, =.Lm957_45e0
.Lm957_35da:
	pop	{r1}
	bx	r1
.func_end AltmillerCave_GetEvents

