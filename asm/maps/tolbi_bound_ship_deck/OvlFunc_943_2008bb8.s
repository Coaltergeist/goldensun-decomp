	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008bb8
	push	{lr}
	ldr	r0, =0x271
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_be6
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x5e
	mov	r2, #0xd
	mov	r3, #0x5e
	bl	__CopyMapTiles
	ldr	r0, =0x271
	bl	__SetFlag
.Lm943_be6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008bb8

