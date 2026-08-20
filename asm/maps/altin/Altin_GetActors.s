	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Altin_GetActors
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lm931_ac
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_a8
	ldr	r3, =.Lm931_140c
	mov	r1, r3
	mov	r2, #0
	add	r1, #0x8e
	add	r3, #0xa6
	strb	r2, [r1]
	strb	r2, [r3]
.Lm931_a8:
	ldr	r0, =.Lm931_140c
	b	.Lm931_ee
.Lm931_ac:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lm931_ec
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_c4
	ldr	r3, =.Lm931_15bc
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.Lm931_c4:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_d8
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm931_e0
.Lm931_d8:
	ldr	r3, =.Lm931_15bc
	mov	r2, #1
	add	r3, #0x5e
	strb	r2, [r3]
.Lm931_e0:
	ldr	r5, =.Lm931_15bc
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lm931_ee
.Lm931_ec:
	ldr	r0, =.Lm931_13f4
.Lm931_ee:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Altin_GetActors

