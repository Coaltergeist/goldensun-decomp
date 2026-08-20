	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_952_20085a4
	push	{r5, lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r5, =0x2352
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #0x1e
	bl	__MapActor_Face
	mov	r1, #0
	mov	r0, #0xe
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm952_602
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_664
.Lm952_602:
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #3
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0xcd
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xcd
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0xf31
	bl	__SetFlag
.Lm952_664:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20085a4

