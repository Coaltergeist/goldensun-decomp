	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021390  @ 0x08021390
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e8c
	sub	sp, #0x1c
	mov	r2, #0
	ldr	r5, [r3]
	mov	r10, r0
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1a
	mov	r3, #5
	add	r7, sp, #0x10
	bl	CreateUIBox
	mov	r6, #0
	mov	r8, r0
	cmp	r0, #0
	beq	.L2145c
	mov	r1, #4
	mov	r3, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r3, =0xea3
	add	r2, r5, r3
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r10
	bl	Func_8021360
	bl	GetPortrait
	mov	r1, #0xe
	add	r2, sp, #0xc
	add	r3, sp, #8
	str	r1, [sp]
	mov	r1, #0
	str	r6, [sp, #4]
	bl	LoadPortrait
	ldr	r3, =0x8014000c
	str	r6, [r7]
	mov	r2, #0xe0
	str	r3, [sp, #0x14]
	ldr	r3, [sp, #8]
	lsl	r2, #8
	orr	r3, r2
	ldr	r2, =0x12f4
	str	r3, [sp, #0x18]
	add	r3, r5, r2
	add	r2, #2
	strh	r6, [r3]
	add	r3, r5, r2
	strh	r6, [r3]
	mov	r1, #1
	mov	r0, r10
	bl	Func_8019908
	ldr	r0, =0x1b
	bl	Func_8019ba0
	mov	r2, #0x24
	mov	r1, r0
	mov	r3, #2
	mov	r0, r8
	str	r6, [sp]
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_PlaySound
	ldr	r5, =0x303
	ldr	r6, =gKeyPress
.L2142a:
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	WaitFrames
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21448
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L2142a
.L21448:
	mov	r0, r8
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0xc]
	bl	Func_8003f3c
.L2145c:
	add	sp, #0x1c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021390
