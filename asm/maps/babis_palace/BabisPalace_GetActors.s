	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BabisPalace_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.Lm952_88
	ldr	r0, =.Lm952_4b3c
	b	.Lm952_a8
.Lm952_88:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_98
	ldr	r0, =.Lm952_4e6c
	b	.Lm952_a8
.Lm952_98:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_a6
	ldr	r0, =.Lm952_4d64
	b	.Lm952_a8
.Lm952_a6:
	ldr	r0, =.Lm952_4b84
.Lm952_a8:
	pop	{r1}
	bx	r1
.func_end BabisPalace_GetActors

