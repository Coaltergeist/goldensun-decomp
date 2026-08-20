	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_884_20084d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__CutsceneStart
	mov	r2, #0xbe
	mov	r0, #0
	mov	r1, #0x52
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x1e
	mov	r1, #0
	mov	r0, #0xf
	bl	__MapActor_TurnToFaceActor
	ldr	r0, =0xeae
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0x14
	bl	OvlFunc_884_200a2c8
	mov	r1, #0xa0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0xf
	bl	OvlFunc_884_200a2e0
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xf
	bl	__MapActor_Surprise
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_884_200a564
	mov	r5, #0
.Lm884_524:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	bl	OvlFunc_884_200a2f8
	add	r5, #1
	mov	r0, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm884_524
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a580
	bl	__StartTask
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_884_200a5a0
	bl	__StartTask
	mov	r1, #0xa0
	mov	r2, #0xa
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	ldrb	r2, [r7]
	mov	r3, #0
	strb	r3, [r7]
	mov	r8, r2
	mov	r5, #0
.Lm884_570:
	ldr	r3, [r6, #0xc]
	mov	r2, #0xc0
	lsl	r2, #5
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x27
	bls	.Lm884_570
	mov	r3, r8
	strb	r3, [r7]
	ldr	r0, =OvlFunc_884_200a580
	bl	__StopTask
	ldr	r0, =OvlFunc_884_200a5a0
	bl	__StopTask
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0xf
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092950
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_884_200a574
	mov	r2, #0x1e
	mov	r0, #0
	mov	r1, #0xf
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20084d4

