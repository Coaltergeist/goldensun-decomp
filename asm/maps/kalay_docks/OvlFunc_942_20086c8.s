	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_942_20086c8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x8a8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_6fc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1f1c
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	b	.Lm942_7c2
.Lm942_6fc:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1f18
	bl	__MessageID
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a6
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm942_7a8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0xb
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm942_772
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x8a8
	bl	__SetFlag
	b	.Lm942_7be
.Lm942_772:
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	b	.Lm942_7be
.Lm942_7a8:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
.Lm942_7be:
	bl	__CutsceneEnd
.Lm942_7c2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_942_20086c8

