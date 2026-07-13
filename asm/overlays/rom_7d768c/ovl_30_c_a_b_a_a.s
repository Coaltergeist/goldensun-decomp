	.include "macros.inc"

.thumb_func_start OvlFunc_952_20080c8
	push	{r5, r6, lr}
	ldr	r5, =0x1ff1
	mov	r6, r0
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lf0
	add	r0, r5, #1
	bl	__MessageID
	b	.Lf6
.Lf0:
	add	r0, r5, #2
	bl	__MessageID
.Lf6:
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
	bne	.L1b8
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
	b	.L160

	.pool_aligned

.L160:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x80
	lsl	r3, r6, #16
	lsl	r2, #23
	mov	r6, #0x80
	lsl	r6, #7
	cmp	r3, r2
	bne	.L188
	mov	r0, #0
	mov	r1, #0x28
	mov	r2, #0x68
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
.L188:
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
	b	.L252
.L1b8:
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
	bl	__Func_80921c4
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
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L21a
	add	r0, r6, #1
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	b	.L228
.L21a:
	add	r0, r6, #2
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.L228:
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
.L252:
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
	bne	.L320
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
	bl	__Func_80921c4
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
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2d8
	mov	r0, #0xa
	bl	__CutsceneWait
	add	r0, r6, #1
	bl	__MessageID
	b	.L2de
.L2d8:
	add	r0, r6, #2
	bl	__MessageID
.L2de:
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
	b	.L32e
.L320:
	ldr	r0, =0x2245
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8092c40
.L32e:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008264

.thumb_func_start OvlFunc_952_2008348
	push	{r5, r6, lr}
	ldr	r6, =0x2006
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
	bne	.L382
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	add	r0, r6, #1
	bl	__MessageID
	b	.L398
.L382:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r5
	ldr	r1, =0x105
	mov	r2, #0x28
	bl	__MapActor_Emote
	add	r0, r6, #2
	bl	__MessageID
.L398:
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_2008348

.thumb_func_start OvlFunc_952_20083b0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r8, r0
	bl	__CutsceneStart
	ldr	r3, =gScript_952__0200c570
	mov	r10, r3
	mov	r1, r10
	mov	r0, r5
	bl	__MapActor_SetBehavior
	ldr	r0, =0x2009
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r6, #0x80
	mov	r0, r5
	bl	__MapActor_SetIdle
	lsl	r6, #9
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, r10
	bl	__MapActor_SetBehavior
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	mov	r2, #0
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r8
	str	r6, [r3, #0x1c]
	str	r6, [r3, #0x18]
	mov	r0, r5
	mov	r1, r10
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_20083b0

.thumb_func_start OvlFunc_952_200849c
	push	{r5, lr}
	mov	r5, r1
	bl	__CutsceneStart
	ldr	r0, =0x2052
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x968
	bl	__GetFlag
	cmp	r0, #0
	bne	.L512
	ldr	r0, =0x968
	bl	__SetFlag
	bl	__Func_8097608
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x46
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, r5
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L512:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_952_200849c
