	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_b448, "ax", %progbits
	.section .text.after_b4a0, "ax", %progbits

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

	.section .text.after_b678, "ax", %progbits
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
