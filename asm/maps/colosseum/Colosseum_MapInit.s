	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Colosseum_MapInit
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.Lm953_1a2e
	bl	OvlFunc_953_2009a4c
	b	.Lm953_1a38
.Lm953_1a2e:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.Lm953_1a38
	bl	OvlFunc_953_2009c6c
.Lm953_1a38:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end Colosseum_MapInit

