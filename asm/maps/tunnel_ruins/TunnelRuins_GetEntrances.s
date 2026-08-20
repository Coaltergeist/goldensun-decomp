	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TunnelRuins_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.Lm964_1288
	ldr	r0, =.Lm964_3474
	b	.Lm964_1294
.Lm964_1288:
	ldr	r3, =0xad
	cmp	r2, r3
	bne	.Lm964_1292
	ldr	r0, =.Lm964_3654
	b	.Lm964_1294
.Lm964_1292:
	ldr	r0, =.Lm964_342c
.Lm964_1294:
	pop	{r1}
	bx	r1
.func_end TunnelRuins_GetEntrances

