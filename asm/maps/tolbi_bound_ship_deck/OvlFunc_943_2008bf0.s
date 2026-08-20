	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008bf0
	push	{lr}
	ldr	r0, =0x272
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_c1e
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r3, #0x6c
	bl	__CopyMapTiles
	ldr	r0, =0x272
	bl	__SetFlag
.Lm943_c1e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008bf0

