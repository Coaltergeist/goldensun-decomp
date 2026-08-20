	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_909_2008568
	push	{lr}
	ldr	r0, =0x84e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm909_5e0
	ldr	r0, =0x322
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm909_5e0
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r0, #0x13
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0xa
	mov	r0, #0x13
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x13
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1748
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	mov	r0, #0
	lsl	r1, #2
	ldr	r2, =0x2fa
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #0x13
	lsl	r1, #8
	mov	r2, #0xa
	bl	__Func_8092adc
	bl	__CutsceneEnd
.Lm909_5e0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_909_2008568

