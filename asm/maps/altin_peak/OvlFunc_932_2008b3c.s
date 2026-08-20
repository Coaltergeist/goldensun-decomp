	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008b3c
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	ldr	r0, =0x1528
	mov	r1, #1
	bl	__Func_801776c
	mov	r0, #0x7d
	bl	__PlaySound
	ldr	r0, =0x326
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_b8c
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
	ldr	r0, =0x326
	bl	__ClearFlag
	b	.Lm932_bba
.Lm932_b8c:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
	ldr	r0, =0x326
	bl	__SetFlag
.Lm932_bba:
	mov	r0, #0x14
	bl	__WaitFrames
	bl	__MapActor_PlayPendingSound
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008b3c

