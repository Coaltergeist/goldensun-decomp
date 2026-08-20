	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200811c
	push	{lr}
	mov	r2, r0
	add	r2, #0x64
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	ldrh	r1, [r2]
	cmp	r3, #0
	bgt	.Lm881_132
	add	r3, r1, #1
	strh	r3, [r2]
	b	.Lm881_136
.Lm881_132:
	bl	__DeleteActor
.Lm881_136:
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200811c

