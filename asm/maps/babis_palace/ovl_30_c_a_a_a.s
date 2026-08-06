	.include "macros.inc"

.thumb_func_start BabisPalace_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x8b
	cmp	r2, r3
	bne	.Lm952_88
	ldr	r0, =.Lm952_4b3c
	b	.Lm952_a8
.Lm952_88:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_98
	ldr	r0, =.Lm952_4e6c
	b	.Lm952_a8
.Lm952_98:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm952_a6
	ldr	r0, =.Lm952_4d64
	b	.Lm952_a8
.Lm952_a6:
	ldr	r0, =.Lm952_4b84
.Lm952_a8:
	pop	{r1}
	bx	r1
.func_end BabisPalace_GetActors

.thumb_func_start OvlFunc_952_20080c8
	push	{r5, r6, lr}
	ldr	r5, =0x1ff1
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_f0
	add	r0, r5, #1
	bl	__MessageID
	b	.Lm952_f6
.Lm952_f0:
	add	r0, r5, #2
	bl	__MessageID
.Lm952_f6:
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20080c8

.thumb_func_start OvlFunc_952_2008108
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #6
	add	r3, r2
	ldr	r2, =0xffffc000
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_1b8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r0, =0x969
	bl	__ClearFlag
	ldr	r0, =0x1ff7
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_160

	.pool_aligned

.Lm952_160:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x80
	lsl	r3, r6, #16
	lsl	r2, #23
	mov	r6, #0x80
	lsl	r6, #7
	cmp	r3, r2
	bne	.Lm952_188
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x68
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.Lm952_188:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r2, #0x30
	mov	r0, r5
	mov	r1, #0
	neg	r2, r2
	bl	__Func_8092304
	mov	r0, r5
	mov	r1, #0x40
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	b	.Lm952_252
.Lm952_1b8:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x969
	bl	__SetFlag
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x60
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r6, =0x1ff8
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_21a
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm952_228
.Lm952_21a:
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm952_228:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, r5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x40
	mov	r0, r5
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_8092304
.Lm952_252:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008108

.thumb_func_start OvlFunc_952_2008264
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x966
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm952_320
	ldr	r0, =0x966
	bl	__SetFlag
	ldr	r0, =0x967
	bl	__SetFlag
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x60
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r6, =0x2241
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm952_2d8
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r6, #1
	bl	__MessageID
	b	.Lm952_2de
.Lm952_2d8:
	add	r0, r6, #2
	bl	__MessageID
.Lm952_2de:
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, r5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x40
	mov	r0, r5
	neg	r1, r1
	mov	r2, #0
	bl	__Func_8092304
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_8092304
	b	.Lm952_32e
.Lm952_320:
	ldr	r0, =0x2245
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm952_32e:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008264

