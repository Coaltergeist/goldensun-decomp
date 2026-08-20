	.include "macros.inc"

.thumb_func_start TunnelRuins_GetActors
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.Lm964_12f8
	ldr	r5, =gScript_925__0200b8f4
	b	.Lm964_12fa
.Lm964_12f8:
	ldr	r5, =.Lm964_3a74
.Lm964_12fa:
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end TunnelRuins_GetActors

