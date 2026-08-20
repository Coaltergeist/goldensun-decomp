	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KalayDocks_MapInit
	push	{r5, lr}
	ldr	r5, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r5, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x5a
	bne	.Lm942_886
	mov	r0, #0x95
	lsl	r0, #4
	bl	__SetFlag
.Lm942_886:
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x6b
	cmp	r2, r3
	bne	.Lm942_89c
	bl	OvlFunc_942_20088cc
	b	.Lm942_8b2
.Lm942_89c:
	ldr	r3, =0x70
	cmp	r2, r3
	bne	.Lm942_8a8
	bl	OvlFunc_942_2008958
	b	.Lm942_8b2
.Lm942_8a8:
	ldr	r3, =0x6c
	cmp	r2, r3
	bne	.Lm942_8b2
	bl	OvlFunc_942_2008ad4
.Lm942_8b2:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end KalayDocks_MapInit

