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
