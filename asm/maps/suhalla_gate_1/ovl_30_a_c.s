	.include "macros.inc"

.thumb_func_start SuhallaGate1_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xaa
	cmp	r2, r3
	bne	.Lm963_58
	ldr	r0, =.Lm963_a40
	b	.Lm963_64
.Lm963_58:
	ldr	r3, =0xab
	cmp	r2, r3
	bne	.Lm963_62
	ldr	r0, =.Lm963_ad0
	b	.Lm963_64
.Lm963_62:
	ldr	r0, =gOvl_02008998
.Lm963_64:
	pop	{r1}
	bx	r1
.func_end SuhallaGate1_GetEntrances

