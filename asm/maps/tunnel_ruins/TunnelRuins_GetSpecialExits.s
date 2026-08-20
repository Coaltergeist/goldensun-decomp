	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TunnelRuins_GetSpecialExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xad
	mov	r0, #0
	cmp	r2, r3
	bne	.Lm964_12c8
	ldr	r0, =gScript_888__0200b81c
.Lm964_12c8:
	pop	{r1}
	bx	r1
.func_end TunnelRuins_GetSpecialExits

