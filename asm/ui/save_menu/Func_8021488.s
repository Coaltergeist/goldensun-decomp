	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021488  @ 0x08021488
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0
	mov	r9, r3
	add	r3, sp, #0x18
	mov	r10, r3
	mov	r3, r9
	str	r3, [sp]
	mov	r11, r0
	mov	r1, #1
	mov	r0, #1
	mov	r2, #0x1c
	mov	r3, #5
	bl	CreateUIBox
	mov	r6, #0
	mov	r9, r0
	cmp	r0, #0
	beq	.L215aa
	mov	r1, #8
	mov	r3, #4
	mov	r2, #0
	str	r3, [sp]
	bl	Func_801e41c
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r8
	strb	r3, [r2]
	mov	r0, r11
	bl	Func_8021360
	bl	GetPortrait
	mov	r3, #0xe
	add	r5, sp, #0x10
	add	r2, sp, #0x14
	str	r3, [sp]
	mov	r1, #0
	mov	r3, r5
	str	r6, [sp, #4]
	bl	LoadPortrait
	mov	r3, r10
	str	r6, [r3]
	ldr	r3, =0x800c000c
	mov	r2, #0xe0
	str	r3, [sp, #0x1c]
	ldr	r3, [sp, #0x10]
	lsl	r2, #8
	ldr	r0, [sp, #8]
	orr	r3, r2
	str	r3, [sp, #0x20]
	add	r7, sp, #0x24
	bl	Func_8021360
	bl	GetPortrait
	mov	r3, #0xf
	add	r2, sp, #0xc
	str	r3, [sp]
	mov	r1, #0
	mov	r3, r5
	str	r6, [sp, #4]
	bl	LoadPortrait
	ldr	r3, =0x802c000c
	str	r6, [r7]
	mov	r2, #0xf0
	str	r3, [sp, #0x28]
	ldr	r3, [sp, #0x10]
	lsl	r2, #8
	orr	r3, r2
	str	r3, [sp, #0x2c]
	ldr	r3, =0x12f4
	add	r3, r8
	strh	r6, [r3]
	ldr	r3, =0x12f6
	add	r3, r8
	strh	r6, [r3]
	mov	r0, r11
	mov	r1, #1
	bl	Func_8019908
	mov	r1, #1
	ldr	r0, [sp, #8]
	bl	Func_8019908
	ldr	r0, =0x1d
	bl	Func_8019ba0
	mov	r2, #0x44
	mov	r1, r0
	mov	r3, #2
	mov	r0, r9
	str	r6, [sp]
	bl	Func_80165d8
	mov	r0, #0x51
	bl	_PlaySound
.L21566:
	mov	r0, r10
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, r7
	mov	r1, #0xfa
	bl	Func_8003dec
	mov	r0, #1
	bl	WaitFrames
	bl	_Func_80f954c
	cmp	r0, #0
	beq	.L21590
	ldr	r3, =gKeyPress
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L21566
.L21590:
	mov	r1, #2
	mov	r0, r9
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #0x14]
	bl	Func_8003f3c
	ldr	r0, [sp, #0xc]
	bl	Func_8003f3c
.L215aa:
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8021488
