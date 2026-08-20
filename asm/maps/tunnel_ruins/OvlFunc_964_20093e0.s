	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_20093e0
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x31
	str	r3, [sp, #4]
	mov	r5, #0x19
	mov	r0, #0x59
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #0x59
	mov	r1, #0x33
	mov	r2, #8
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	bl	OvlFunc_964_20080c4
	bl	OvlFunc_964_200a480
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20093e0

