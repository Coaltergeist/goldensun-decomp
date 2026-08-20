	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaGate1_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.Lm963_a4
	ldr	r0, =.Lm963_ba8
	b	.Lm963_be
.Lm963_a4:
	ldr	r3, =0xa9
	cmp	r2, r3
	bne	.Lm963_bc
	ldr	r0, =0x96f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm963_b8
	ldr	r0, =.Lm963_c98
	b	.Lm963_be
.Lm963_b8:
	ldr	r0, =gOvl_02008c50
	b	.Lm963_be
.Lm963_bc:
	ldr	r0, =.Lm963_b90
.Lm963_be:
	pop	{r1}
	bx	r1
.func_end SuhallaGate1_GetActors

