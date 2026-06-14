	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b448
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.L3462
	cmp	r0, #1
	bcc	.L345e
	cmp	r0, #2
	beq	.L3466
	cmp	r0, #3
	beq	.L3472
	b	.L3476
.L345e:
	ldr	r6, =0x92c
	b	.L3476
.L3462:
	ldr	r6, =0x935
	b	.L3476
.L3466:
	ldr	r6, =0x917
	b	.L3476
.L346a:
	ldr	r3, =.L6718
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.L348a
.L3472:
	mov	r6, #0x99
	lsl	r6, #4
.L3476:
	mov	r5, #0
.L3478:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.L346a
	add	r5, #1
	cmp	r5, #8
	bls	.L3478
	mov	r0, #0
.L348a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_200b448

.thumb_func_start OvlFunc_881_200b4a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L3566
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #8]
	ldr	r0, =0xffe00000
	ldr	r3, [r6, #0x10]
	add	r1, r0
	ldr	r0, =0xfff00000
	ldr	r2, [r6, #0xc]
	add	r3, r0
	mov	r0, #0xde
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L3566
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r7, [r5, #0x50]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L3502
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsl	r2, #4
	lsr	r2, #16
	lsl	r2, #16
	ldr	r3, [r5, #8]
	asr	r1, r2, #1
	sub	r3, r1
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	sub	r3, r2
	b	.L3518
.L3502:
	bl	__Random
	lsl	r0, #5
	ldr	r3, [r5, #8]
	lsr	r0, #16
	lsl	r0, #16
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r0, #1
	add	r3, r0
.L3518:
	str	r3, [r5, #0x10]
	mov	r2, r7
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r5
	add	r1, #0x23
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r7, #9]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	ldrb	r3, [r3]
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #9
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, =gScript_881__0200e73c
	mov	r0, r5
	bl	__Actor_SetScript
.L3566:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b4a0

.thumb_func_start OvlFunc_881_200b57c
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__CutsceneStart
	ldr	r0, =0x9999
	mov	r1, #1
	bl	__Func_80936a0
	ldr	r3, =0x13333
	mov	r1, #1
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r0, #8
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r2, =0x3333
	mov	r0, #8
	ldr	r1, =0x6666
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r3, #0
	strh	r3, [r5]
	ldr	r1, =gScript_881__0200d218
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b4a0
	bl	__StartTask
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	mov	r1, #1
	str	r2, [r3]
	ldr	r0, =0x10003
	bl	__Func_8091200
	mov	r6, #0xe4
	ldr	r2, [r5]
	mov	r3, #0x20
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #0x96
	lsl	r1, #1
	ldr	r0, =0x16666
	bl	__Func_80936a0
	mov	r0, #0x87
	lsl	r0, #1
	bl	__CutsceneWait
	ldr	r2, [r5]
	mov	r3, #0x10
	str	r3, [r2, r6]
	ldr	r3, .L3648	@ 0x7fff
	mov	r2, #0xa0
	lsl	r2, #19
	strh	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x6f
	bl	__Func_8091e9c
	b	.L3670

	.align	2, 0
.L3648:
	.word	0x7fff
	.pool

.L3670:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b57c

.thumb_func_start OvlFunc_881_200b678
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0xbe
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r5, r0
	cmp	r5, #0
	beq	.L36c0
	cmp	r5, #1
	bne	.L36b2
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.L36c0
.L36b2:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L36c0
	sub	r5, #1
.L36c0:
	mov	r0, #0xbe
	lsl	r0, #2
	mov	r1, r5
	bl	__SetFlagByte
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b678

.thumb_func_start OvlFunc_881_200b6dc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =gState
	mov	r3, #0xfa
	mov	r10, r2
	lsl	r3, #1
	add	r3, r10
	ldr	r6, [r3]
	mov	r7, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xbc
	lsl	r0, #2
	bl	__GetFlag
	mov	r8, r0
	cmp	r0, #0
	bne	.L37a0
	bl	__CutsceneStart
	mov	r0, r6
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, r6
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r0, r7
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3734
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__MapActor_TravelTo
.L3734:
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r0, #0xf4
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_881_200b678
	mov	r7, r5
	bl	__StartTask
	add	r7, #0x55
	mov	r2, r8
	strb	r2, [r7]
	mov	r3, #0x80
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, r5
	ldr	r3, [r5, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r2, r8
	str	r2, [r5, #0x28]
	mov	r2, #0xf9
	mov	r3, #4
	lsl	r2, #1
	add	r2, r10
	strb	r3, [r7]
	mov	r0, #0xbc
	mov	r3, #2
	strb	r3, [r2]
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xbe
	lsl	r0, #2
	mov	r1, #0xb4
	bl	__SetFlagByte
	bl	__CutsceneEnd
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbe
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, r8
	strh	r2, [r3]
.L37a0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b6dc

