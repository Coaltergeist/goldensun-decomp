	.include "macros.inc"

.thumb_func_start OvlFunc_944_2008240
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	lsl	r0, #1
	ldr	r2, =0x209
	add	r3, r0
	str	r2, [r3]
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	bne	.L26c
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2a4
.L26c:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a4
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2a4
	ldr	r5, =.L1940
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.L1928
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	mov	r1, #0xc8
	str	r0, [r5]
	lsl	r1, #4
	ldr	r0, =OvlFunc_944_20090a0
	bl	__StartTask
.L2a4:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2c6
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2c6
	mov	r1, #0xa4
	mov	r2, #0xa4
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2c6:
	ldr	r1, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #1
	cmp	r3, #0xd
	bhi	.L3d0
	ldr	r2, =.L2e0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L2e0:
	.word	.L318
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L3d0
	.word	.L368
	.word	.L37e
	.word	.L398
	.word	.L3b2
	.word	.L3cc
.L318:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3d0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	bl	__Func_8093fa0
	mov	r3, #0xe0
	lsl	r3, #14
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	neg	r1, r1
	str	r3, [r5, #0xc]
	neg	r0, r0
	mov	r3, #0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
	b	.L3d0
.L368:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L378
	bl	OvlFunc_944_2008468
	b	.L3d0
.L378:
	bl	OvlFunc_944_200840c
	b	.L3d0
.L37e:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_2008564
	b	.L3d0
.L398:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_20087b0
	b	.L3d0
.L3b2:
	mov	r0, #0xe2
	ldr	r3, =0x6f
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	bl	OvlFunc_944_2008af8
	b	.L3d0
.L3cc:
	bl	OvlFunc_944_2008e78
.L3d0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_2008240

