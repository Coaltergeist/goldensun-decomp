	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_20092f0
	push	{lr}
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	sub	sp, #8
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xce
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bf0
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x6c
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r0, #0x1e
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x32e
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	ldr	r0, =0x1d8d
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_Emote
	ldr	r0, =0x923
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20092f0

