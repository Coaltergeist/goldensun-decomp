	.include "macros.inc"

	.section .text.after_94380, "ax", %progbits

.thumb_func_start Func_8094428  @ 0x08094428
	push	{r5, r6, lr}
	mov	r5, #0x90
	lsl	r5, #1
	mov	r0, r5
	mov	r6, #0
	bl	_GetFlag
	cmp	r0, #0
	beq	.L9444a
	mov	r0, #0x18
	bl	Player_ExitStairs
	mov	r0, r5
	bl	_ClearFlag
	mov	r6, #1
	b	.L944da
.L9444a:
	ldr	r5, =0x121
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L94466
	mov	r0, #0x17
	bl	Player_ExitStairs
	mov	r0, r5
	bl	_ClearFlag
	mov	r6, #2
	b	.L944da
.L94466:
	mov	r5, #0x91
	lsl	r5, #1
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L944da
	mov	r0, r5
	bl	_ClearFlag
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r6, [r3]
	mov	r0, r6
	bl	GetFieldActor
	mov	r5, r0
	ldr	r3, [r5, #0xc]
	mov	r2, #0xa0
	lsl	r2, #16
	add	r3, r2
	mov	r2, #1
	neg	r2, r2
	str	r3, [r5, #0xc]
	mov	r0, r2
	mov	r1, r2
	mov	r3, #0
	bl	Func_80933f8
	b	.L944ac
.L944a6:
	mov	r0, #1
	bl	WaitFrames
.L944ac:
	ldr	r2, [r5, #0x28]
	ldr	r3, [r5, #0xc]
	add	r3, r2
	ldr	r2, [r5, #0x14]
	cmp	r3, r2
	bgt	.L944a6
	mov	r0, #0x9f
	bl	_PlaySound
	ldr	r3, [r5, #0x14]
	mov	r1, #0x16
	str	r3, [r5, #0xc]
	mov	r0, r5
	bl	_Actor_SetAnim
	mov	r0, #0xf
	bl	CutsceneWait
	mov	r0, r6
	mov	r1, #1
	bl	SetCameraTarget
	mov	r6, #3
.L944da:
	mov	r0, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8094428

	.section .rodata
	.global .L9fc28
	.global .L9fc2c
	.global .L9fd38
	.global .L9fd44
	.global .L9fe00
	.global .L9fe04
	.global .L9fe10
	.global .L9fecc
	.global .L9ff18
	.global .L9ff2c

.L9fc28:
	.incrom 0x9fc28, 0x9fc2c
.L9fc2c:
	.incrom 0x9fc2c, 0x9fd38
.L9fd38:
	.incrom 0x9fd38, 0x9fd44
.L9fd44:
	.incrom 0x9fd44, 0x9fe00
.L9fe00:
	.incrom 0x9fe00, 0x9fe04
.L9fe04:
	.incrom 0x9fe04, 0x9fe10
.L9fe10:
	.incrom 0x9fe10, 0x9fecc
.L9fecc:
	.incrom 0x9fecc, 0x9ff18
.L9ff18:
	.incrom 0x9ff18, 0x9ff2c
.L9ff2c:
	.incrom 0x9ff2c, 0x9ff40
