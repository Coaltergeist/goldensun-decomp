	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SuhallaGate1_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.Lm963_fc
	ldr	r0, =.Lm963_ddc
	b	.Lm963_108
.Lm963_fc:
	ldr	r3, =0xab
	cmp	r2, r3
	bne	.Lm963_106
	ldr	r0, =.Lm963_e54
	b	.Lm963_108
.Lm963_106:
	ldr	r0, =.Lm963_d10
.Lm963_108:
	pop	{r1}
	bx	r1
.func_end SuhallaGate1_GetEvents

