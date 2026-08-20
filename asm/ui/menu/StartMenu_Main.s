	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartMenu_Main  @ 0x0801db70
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x14
	mov	r0, #1
	str	r0, [sp, #0xc]
	mov	r0, #0xbf
	mov	r2, #3
	lsl	r0, #1
	mov	r11, r2
	bl	_GetFlag
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r5, r0
	bl	Func_801d980
	ldr	r3, =iwram_3001ea0
	ldr	r3, [r3]
	mov	r10, r3
	bl	Func_801d9d4
	ldr	r6, =gDebugMode
	str	r0, [sp, #0x10]
	ldrb	r3, [r6]
	mov	r4, #0x18
	neg	r4, r4
	cmp	r3, #0
	beq	.L1dbb4
	add	r4, #8
.L1dbb4:
	mov	r3, r4
	ldr	r1, [sp, #0x10]
	mov	r2, #0x28
	mov	r0, #6
	bl	Func_8021620
	str	r0, [sp, #8]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =0x574
	add	r3, r10
	ldrh	r3, [r3]
	mov	r8, r3
	cmp	r5, #0
	beq	.L1dbdc
	mov	r2, #2
	mov	r0, #1
	str	r2, [sp, #4]
	mov	r11, r0
.L1dbdc:
	ldrb	r3, [r6]
	cmp	r3, #0
	beq	.L1dbe6
	mov	r3, #3
	add	r11, r3
.L1dbe6:
	ldr	r0, [sp, #0xc]
	cmp	r0, #0
	beq	.L1dc6e
	mov	r0, r8
	mov	r2, #0
	add	r0, r11
	mov	r1, r11
	str	r2, [sp, #0xc]
	bl	__modsi3
	ldr	r3, =0x574
	mov	r8, r0
	add	r3, r10
	mov	r0, r8
	strh	r0, [r3]
	ldr	r2, [sp, #0xc]
	mov	r4, #0
	cmp	r2, r11
	bge	.L1dc4c
	ldr	r3, =.L367dc
	mov	r7, #0xc2
	lsl	r7, #3
	ldr	r6, [sp, #4]
	mov	r9, r3
	add	r7, r10
.L1dc18:
	ldmia	r7!, {r5}
	mov	r3, #0xfb
	strb	r3, [r5, #0xf]
	mov	r0, r5
	str	r4, [sp]
	bl	_Func_80a17c4
	ldr	r3, =0x574
	add	r3, r10
	ldrh	r3, [r3]
	ldr	r4, [sp]
	ldrb	r1, [r5, #0xe]
	mov	r2, #0
	cmp	r4, r3
	beq	.L1dc38
	mov	r2, #1
.L1dc38:
	mov	r3, r9
	ldrsb	r0, [r6, r3]
	str	r4, [sp]
	bl	StartMenu_AddOption
	ldr	r4, [sp]
	add	r4, #1
	add	r6, #1
	cmp	r4, r11
	blt	.L1dc18
.L1dc4c:
	ldr	r0, [sp, #0x10]
	ldrh	r2, [r0, #0xe]
	ldrh	r1, [r0, #0xc]
	mov	r0, r8
	lsl	r3, r0, #1
	add	r3, r8
	add	r3, r2
	lsl	r3, #3
	mov	r4, r3
	ldr	r0, =0x5a4
	add	r4, #0x10
	lsl	r1, #3
	add	r0, r10
	mov	r2, r4
	mov	r3, #3
	bl	_Func_80b09fc
.L1dc6e:
	ldr	r0, [sp, #8]
	bl	Func_80216b4
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	beq	.L1dc90
	mov	r0, #0x70
	mov	r5, r8
	bl	_PlaySound
	b	.L1dcdc
.L1dc90:
	ldr	r2, [r1]
	mov	r3, #0xa
	and	r2, r3
	cmp	r2, #0
	beq	.L1dca6
	mov	r5, #1
	mov	r0, #0x71
	neg	r5, r5
	bl	_PlaySound
	b	.L1dcdc
.L1dca6:
	ldr	r1, =gKeyRepeat
	ldr	r2, [r1]
	mov	r3, #0x40
	and	r2, r3
	cmp	r2, #0
	beq	.L1dcc4
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	neg	r2, r2
	mov	r3, #1
	add	r8, r2
	str	r3, [sp, #0xc]
	b	.L1dbe6
.L1dcc4:
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L1dbe6
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, #1
	add	r8, r0
	str	r0, [sp, #0xc]
	b	.L1dbe6
.L1dcdc:
	ldr	r0, [sp, #0x10]
	mov	r1, #2
	bl	CloseUIBox
	bl	Func_801d9bc
	mov	r0, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.L1dcf6
	ldr	r2, [sp, #4]
	add	r5, r2
.L1dcf6:
	mov	r0, r5
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end StartMenu_Main

