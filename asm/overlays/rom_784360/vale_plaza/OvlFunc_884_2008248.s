	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_2008248
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_2c0
	ldr	r5, =0x1197
	mov	r0, r5
	bl	__MessageID
	mov	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_27a
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm884_27a:
	mov	r0, #3
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm884_294
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lm884_294:
	mov	r1, #0
	mov	r0, #0x11
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm884_2b0
	add	r0, r5, #3
	bl	__MessageID
	b	.Lm884_2b6
.Lm884_2b0:
	add	r0, r5, #4
	bl	__MessageID
.Lm884_2b6:
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm884_386
.Lm884_2c0:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r0, =0xf48
	ldr	r6, [r3]
	bl	__MessageID
	mov	r2, #0
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8093054
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	mov	r0, #0xf
	bl	__CutsceneWait
	bl	OvlFunc_884_200a564
	mov	r7, #0
	mov	r5, #0
.Lm884_2fa:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	bl	OvlFunc_884_200a2f8
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm884_2fa
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a590
	bl	__StartTask
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r5, #0
.Lm884_322:
	mov	r0, r5
	mov	r1, #0xa
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm884_348
	mov	r3, #1
	and	r3, r7
	cmp	r3, #0
	beq	.Lm884_33c
	ldr	r3, [r6]
	ldr	r2, =0xffff0000
	b	.Lm884_342
.Lm884_33c:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #9
.Lm884_342:
	add	r3, r2
	str	r3, [r6]
	add	r7, #1
.Lm884_348:
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0xb4
	bne	.Lm884_322
	ldr	r0, =0x121
	bl	__PlaySound
	ldr	r0, =OvlFunc_884_200a590
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_884_200a574
	mov	r1, #0
	mov	r0, #0x11
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xf4b
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
.Lm884_386:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_2008248

