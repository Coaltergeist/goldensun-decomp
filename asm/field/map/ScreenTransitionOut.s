	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ScreenTransitionOut  @ 0x080901c0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0xff
	asr	r2, r0, #8
	mov	r6, r3
	and	r2, r3
	mov	r7, r1
	and	r6, r0
	cmp	r2, #4
	bls	.L901d8
	b	.L90352
.L901d8:
	lsl	r3, r2, #2
	ldr	r2, =.L901e0
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L901e0:
	.word	.L901f4
	.word	.L90202
	.word	.L90214
	.word	.L90278
	.word	.L902e8
.L901f4:
	mov	r0, #0
	bl	Func_8003bb4
	mov	r0, r7
	bl	Func_8003b70
	b	.L90352
.L90202:
	mov	r0, #0x80
	lsl	r0, #8
	mov	r1, #0
	bl	Func_8091200
	mov	r0, r7
	bl	Func_8091254
	b	.L90352
.L90214:
	bl	AllocGlobal1F
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L9025c	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	ldr	r3, =0x534
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	ldr	r3, =0x536
	mov	r1, #0xc8
	add	r2, r5, r3
	mov	r3, #1
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Task_ScreenWindowTransition
	bl	StartTask
	mov	r1, #0x90
	lsl	r1, #3
	ldr	r0, =Func_808f498
	bl	StartTask
	mov	r0, #1
	bl	WaitFrames
	b	.L902a8

	.align	2, 0
.L9025c:
	.word	0
	.pool

.L90278:
	bl	AllocGlobal1F
	mov	r2, #0xa5
	mov	r5, r0
	lsl	r2, #3
	add	r3, r5, r2
	strh	r6, [r3]
	ldr	r2, .L902c0	@ 0
	ldr	r3, =0x52a
	mov	r8, r2
	add	r2, r5, r3
	mov	r3, #0x20
	strh	r3, [r2]
	mov	r0, #0
	bl	Func_80907b0
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0xc8
	ldr	r0, =Task_Transition300
	lsl	r1, #4
	bl	StartTask
.L902a8:
	ldr	r2, =0x53a
	ldr	r6, .L902c4	@ 0x20
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x40
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	b	.L902dc

	.align	2, 0
.L902c0:
	.word	0
.L902c4:
	.word	0x20
	.pool

.L902dc:
	strb	r7, [r3]
	ldr	r3, =0x53d
	mov	r2, r8
	add	r5, r3
	strb	r2, [r5]
	b	.L90352
.L902e8:
	bl	AllocGlobal1F
	mov	r5, r0
	cmp	r6, #0
	bne	.L90322
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80903bc
	bl	StartTask
	ldr	r2, =Func_8090584
	mov	r0, #1
	mov	r1, #0
	bl	SetIntrHandler
	ldr	r2, =0x53a
	add	r3, r5, r2
	strb	r6, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r6, [r3]
	b	.L90352
.L90322:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_8090488
	bl	StartTask
	ldr	r2, =Func_8090584
	mov	r1, #0
	mov	r0, #1
	bl	SetIntrHandler
	ldr	r2, =0x53a
	mov	r1, #0
	add	r3, r5, r2
	strb	r1, [r3]
	ldr	r3, =0x53b
	add	r2, r5, r3
	mov	r3, #0x50
	strb	r3, [r2]
	ldr	r2, =0x53c
	add	r3, r5, r2
	add	r2, #1
	strb	r7, [r3]
	add	r3, r5, r2
	strb	r1, [r3]
.L90352:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end ScreenTransitionOut

