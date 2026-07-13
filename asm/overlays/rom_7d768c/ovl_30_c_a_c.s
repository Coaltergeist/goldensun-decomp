	.include "macros.inc"

.thumb_func_start OvlFunc_952_200be40
	push	{r5, lr}
	ldr	r0, =0x96c
	bl	__SetFlag
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x88
	mov	r0, #0
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x2233
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3eb8
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L3f70
.L3eb8:
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #9
	mov	r2, #0x3c
	bl	__Func_8092848
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #9
	bl	__Func_8092848
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L3f70:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200be40

.thumb_func_start OvlFunc_952_200bf84
	push	{lr}
	ldr	r0, =0x96d
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3fa6
	ldr	r0, =0x96d
	bl	__SetFlag
	ldr	r0, =0x2239
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	b	.L3fb4
.L3fa6:
	ldr	r0, =0x223a
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.L3fb4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200bf84

.thumb_func_start OvlFunc_952_200bfc4
	push	{r5, r6, lr}
	ldr	r6, =0x22a3
	mov	r5, r0
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L3ff4
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L4002
.L3ff4:
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L4002:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200bfc4

