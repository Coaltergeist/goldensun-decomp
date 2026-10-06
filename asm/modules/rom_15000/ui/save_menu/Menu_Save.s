	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Menu_Save  @ 0x080207c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r2, #0
	mov	r8, r2
	bl	Func_80056cc
	mov	r6, r0
	cmp	r6, #0
	beq	.L207e8
	ldr	r0, =_MSG_0a
	mov	r1, #1
	bl	Func_801776c
	mov	r3, #9
	neg	r3, r3
	mov	r8, r3
	b	.L208ae
.L207e8:
	bl	Func_8005c68
	ldr	r3, =iwram_3001f1c
	ldr	r5, [r3]
	ldr	r3, =ewram_2002004
	mov	r1, #0
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	Func_8020244
	mov	r3, #1
	mov	r7, r0
	neg	r3, r3
	cmp	r7, r3
	bne	.L2080a
	mov	r8, r7
	b	.L208ae
.L2080a:
	ldr	r2, =0x105c
	lsl	r3, r7, #6
	add	r3, r2
	ldrb	r3, [r5, r3]
	cmp	r3, #0
	beq	.L20848
	ldr	r0, =_MSG_14
	mov	r1, #0xd
	bl	Func_801776c
	b	.L20826
.L20820:
	mov	r0, #1
	bl	WaitFrames
.L20826:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L20820
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	mov	r3, #1
	bl	YesNoMenu
	cmp	r0, #0
	beq	.L20844
	bl	Func_8019a54
	b	.L208ae
.L20844:
	bl	Func_8019a54
.L20848:
	ldr	r3, =ewram_2002004
	mov	r0, #0x55
	strh	r7, [r3]
	bl	_PlaySound
	ldr	r0, =_MSG_1a
	mov	r1, #0xd
	bl	Func_801776c
	b	.L20862
.L2085c:
	mov	r0, #1
	bl	WaitFrames
.L20862:
	bl	Func_8017364
	cmp	r0, #0
	beq	.L2085c
	bl	PrepareSaveHeader
	bl	_Func_808ba38
	ldr	r5, =ewram_2000000
	mov	r0, r7
	mov	r1, r5
	bl	SomethingSaveHeader
	mov	r3, #0x80
	lsl	r3, #5
	add	r5, r3
	mov	r6, r0
	mov	r1, r5
	add	r0, r7, #3
	bl	SomethingSaveHeader
	orr	r6, r0
	bl	Func_8019a54
	cmp	r6, #0
	beq	.L208a6
	ldr	r0, =_MSG_0b
	mov	r1, #1
	bl	Func_801776c
	mov	r2, #3
	neg	r2, r2
	mov	r8, r2
	b	.L208ae
.L208a6:
	ldr	r0, =_MSG_17
	mov	r1, #9
	bl	Func_801776c
.L208ae:
	bl	Func_8005cf8
	mov	r0, r8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Menu_Save
