	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200b518
	push	{lr}
	mov	r0, #0x96
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm957_3586
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm957_3586
	ldr	r0, =0x961
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x217d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm957_3586:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200b518

