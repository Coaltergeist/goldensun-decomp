	.include "macros.inc"

.thumb_func_start OvlFunc_898_20084a0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r0, =0x855
	ldr	r5, [r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4ba
	ldr	r0, =0x856
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4cc
.L4ba:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_8091e9c
	b	.L59e
.L4cc:
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4e4
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L4e4:
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x14
	bne	.L50c
	mov	r1, #0xc8
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	b	.L534
.L50c:
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	mov	r2, #0xa2
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r0, #2
	mov	r1, #0xe0
	mov	r2, #0xa2
	bl	__Func_80921c4
	bl	__Func_8093530
.L534:
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1327
	bl	__MessageID
	ldr	r0, =0x9002
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	bl	OvlFunc_898_2008450
	cmp	r0, #0
	beq	.L57c
	ldr	r0, =0x132a
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_898_2008464
	mov	r0, #0x14
	bl	__WaitFrames
.L57c:
	mov	r0, #2
	bl	__Func_8091890
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	sub	r0, #0x13
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
.L59e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20084a0

