	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Sol_GetActors
	push	{r5, lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x10
	cmp	r2, r3
	bne	.Lm895_ba
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xb
	blt	.Lm895_ae
	cmp	r3, #0xd
	ble	.Lm895_aa
	cmp	r3, #0x10
	bgt	.Lm895_ae
	ldr	r0, =.Lm895_21b8
	b	.Lm895_c6
.Lm895_aa:
	ldr	r0, =.Lm895_2050
	b	.Lm895_c6
.Lm895_ae:
	ldr	r5, =.Lm895_1fd8
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lm895_c6
.Lm895_ba:
	ldr	r3, =0x13
	cmp	r2, r3
	bne	.Lm895_c4
	ldr	r0, =.Lm895_22a8
	b	.Lm895_c6
.Lm895_c4:
	ldr	r0, =.Lm895_1fc0
.Lm895_c6:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Sol_GetActors

