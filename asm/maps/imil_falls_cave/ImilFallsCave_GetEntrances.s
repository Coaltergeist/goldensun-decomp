	.include "macros.inc"

.thumb_func_start ImilFallsCave_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x34
	cmp	r2, r3
	bne	.Lm922_68
	ldr	r0, =.Lm922_24bc
	b	.Lm922_a6
.Lm922_68:
	ldr	r3, =0x3e
	cmp	r2, r3
	bne	.Lm922_72
	ldr	r0, =.Lm922_2504
	b	.Lm922_a6
.Lm922_72:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_7c
	ldr	r0, =.Lm922_25f4
	b	.Lm922_a6
.Lm922_7c:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_86
	ldr	r0, =.Lm922_263c
	b	.Lm922_a6
.Lm922_86:
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_90
	ldr	r0, =.Lm922_26cc
	b	.Lm922_a6
.Lm922_90:
	ldr	r3, =0x42
	cmp	r2, r3
	bne	.Lm922_9a
	ldr	r0, =.Lm922_2744
	b	.Lm922_a6
.Lm922_9a:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_a4
	ldr	r0, =.Lm922_27bc
	b	.Lm922_a6
.Lm922_a4:
	ldr	r0, =.Lm922_248c
.Lm922_a6:
	pop	{r1}
	bx	r1
.func_end ImilFallsCave_GetEntrances

