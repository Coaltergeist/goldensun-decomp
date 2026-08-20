	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start TunnelRuins_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xac
	cmp	r2, r3
	bne	.Lm964_2388
	ldr	r0, =.Lm964_3c0c
	b	.Lm964_238a
.Lm964_2388:
	ldr	r0, =.Lm964_3ef4
.Lm964_238a:
	pop	{r1}
	bx	r1
.func_end TunnelRuins_GetEvents

