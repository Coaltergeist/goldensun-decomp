	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_2009600
	push	{lr}
	ldr	r0, =0x836
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_166a
	ldr	r0, =0x837
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_166a
	bl	__CutsceneStart
	ldr	r0, =0xe6c
	bl	__MessageID
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xbf
	mov	r0, #0
	lsl	r1, #1
	ldr	r2, =0x26b
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0x16
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x836
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm882_166a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_2009600

