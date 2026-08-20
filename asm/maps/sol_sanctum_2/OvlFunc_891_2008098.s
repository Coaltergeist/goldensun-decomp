	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2008098
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0x11
	mov	r3, #8
	bl	__CopyMapTiles
	mov	r0, #0xc8
	bl	__PlaySound
	mov	r5, #0
	mov	r7, #2
	mov	r6, #1
.Lm891_bc:
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	mov	r0, #0xa
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x3d
	mov	r2, #0x11
	mov	r3, #0x28
	str	r7, [sp]
	str	r6, [sp, #4]
	add	r5, #1
	bl	__CopyMapTiles
	mov	r0, #4
	bl	__CutsceneWait
	cmp	r5, #0x16
	bne	.Lm891_bc
	mov	r5, #4
	mov	r6, #3
	mov	r0, #0
	mov	r1, #0x3b
	mov	r2, #0xf
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #4
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x3c
	mov	r2, #0x11
	mov	r3, #0x27
	bl	__CopyMapTiles
	mov	r3, #0x11
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0
	bl	__Func_8010704
	ldr	r0, =0x207
	bl	__SetFlag
	bl	OvlFunc_891_20096dc
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008098

