	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021228  @ 0x08021228
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	str	r2, [sp, #8]
	ldr	r3, =iwram_3001e8c
	mov	r6, r1
	ldr	r5, [r3]
	mov	r3, #3
	ldr	r2, =.L371fe
	and	r3, r6
	lsl	r3, #1
	mov	r11, r0
	mov	r0, #0
	mov	r9, r0
	mov	r10, r0
	ldrsh	r1, [r2, r3]
	mov	r8, r1
	mov	r1, r9
	str	r1, [sp]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x1a
	mov	r3, #5
	add	r7, sp, #0x14
	bl	CreateUIBox
	mov	r9, r0
	cmp	r0, #0
	beq	.L2132a
	mov	r3, #4
	mov	r1, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r3, =0xea3
	add	r2, r5, r3
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r8
	bl	GetPortrait
	mov	r1, #0xe
	add	r2, sp, #0x10
	add	r3, sp, #0xc
	str	r1, [sp]
	mov	r1, r10
	str	r1, [sp, #4]
	bl	LoadPortrait
	mov	r2, r10
	ldr	r3, =0x8014000c
	str	r2, [r7]
	str	r3, [sp, #0x18]
	mov	r2, #0xe0
	ldr	r3, [sp, #0xc]
	lsl	r2, #8
	ldr	r0, =0x12f4
	orr	r3, r2
	ldr	r2, =0x12f6
	str	r3, [sp, #0x1c]
	mov	r1, r10
	add	r3, r5, r0
	strh	r1, [r3]
	mov	r0, r10
	add	r3, r5, r2
	strh	r0, [r3]
	mov	r1, #1
	mov	r0, r11
	bl	Func_8019908
	lsl	r0, r6, #2
	ldr	r1, [sp, #8]
	add	r0, r6
	lsl	r0, #2
	mov	r2, #0x96
	lsl	r2, #1
	add	r0, r1
	add	r0, r2
	mov	r1, #4
	bl	Func_8019908
	ldr	r0, =0x980
	add	r0, r6, r0
	bl	Func_8019ba0
	mov	r3, r10
	mov	r1, r0
	str	r3, [sp]
	mov	r2, #0x24
	mov	r3, #2
	mov	r0, r9
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_PlaySound
	ldr	r5, =0x303
	ldr	r6, =gKeyPress
.L212f8:
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	WaitFrames
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21316
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.L212f8
.L21316:
	mov	r0, r9
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x10]
	bl	Func_8003f3c
.L2132a:
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021228
