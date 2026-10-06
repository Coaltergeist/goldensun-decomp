	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a7850  @ 0x080a7850
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	sub	sp, #0x1c
	str	r3, [sp, #0x18]
	bl	Func_80a9d84
	mov	r0, #0x70
	bl	_PlaySound
	mov	r1, #0x86
	ldr	r0, [sp, #0x18]
	lsl	r1, #1
	add	r5, r0, r1
	ldr	r0, [r5]
	bl	_Func_8016498
	ldr	r1, [r5]
	ldr	r0, =0xb17
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	ldr	r2, [sp, #0x18]
	ldr	r3, [r2, #0x14]
	mov	r2, #0xd
	strb	r2, [r3, #5]
	ldr	r0, [sp, #0x18]
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r0, #1
	strb	r2, [r3, #5]
	bl	WaitFrames
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x18]
	ldr	r2, [r2, #0x24]
	mov	r0, #0xa2
	mov	r1, #0x8d
	lsl	r0, #1
	lsl	r1, #2
	ldr	r5, .La78c4	@ 0x46
	ldr	r4, .La78c8	@ 0x1e
	mov	r10, r2
	add	r2, r3, r0
	add	r3, r1
	mov	r0, #0x20
	mov	r1, #3
	b	.La78d4

	.align	2, 0
.La78c4:
	.word	0x46
.La78c8:
	.word	0x1e
	.pool

.La78d4:
	sub	r1, #1
	strh	r0, [r3]
	strh	r5, [r3, #8]
	add	r0, #0x38
	strh	r4, [r2]
	add	r3, #2
	add	r2, #2
	cmp	r1, #0
	bge	.La78d4
	mov	r0, r10
	bl	_Func_8016498
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0xb
	mov	r3, #0x1c
	bl	_Func_801e41c
	mov	r1, #0x86
	ldr	r2, [sp, #0x18]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0x60
	ldr	r1, [r3]
	neg	r2, r2
	ldr	r0, =0xb18
	mov	r3, #0x84
	bl	_DrawSmallText
	mov	r2, #0
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	str	r2, [sp, #4]
	mov	r9, r2
.La791c:
	ldr	r3, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #0xc]
	mov	r2, #0x18
	mov	r5, r3
	str	r3, [sp, #0x14]
	str	r0, [sp, #0x10]
	mov	r6, #0
	mov	r11, r1
	mov	r8, r2
	add	r5, #0x30
.La7932:
	ldr	r3, [sp, #0x14]
	mov	r0, r5
	add	r7, r3, r6
	bl	_GetFlag
	cmp	r0, #0
	beq	.La7964
	mov	r2, #0
	str	r2, [sp]
	ldr	r1, =0x1001
	ldr	r2, [sp, #0x10]
	add	r3, r6, #3
	mov	r0, r10
	add	r1, r9
	add	r2, #1
	bl	_Func_8019000
	ldr	r0, =0x45f
	mov	r2, r11
	add	r0, r7, r0
	mov	r1, r10
	add	r2, #0x10
	mov	r3, r8
	bl	_Func_801e7c0
.La7964:
	mov	r0, #8
	add	r6, #1
	add	r8, r0
	add	r5, #1
	cmp	r6, #6
	ble	.La7932
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	mov	r0, #1
	add	r1, #0x38
	add	r9, r0
	str	r1, [sp, #0xc]
	add	r2, #7
	add	r3, #0x14
	mov	r1, r9
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	cmp	r1, #3
	ble	.La791c
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r6, =gKeyPress
	mov	r5, #7
.La799c:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La79b6
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.La799c
.La79b6:
	ldr	r3, [sp, #0x18]
	ldr	r0, [r3, #0x24]
	bl	_Func_8016498
	mov	r1, #0x86
	ldr	r0, [sp, #0x18]
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r0, [r3]
	bl	_Func_80164ac
	mov	r1, #0x8d
	ldr	r2, [sp, #0x18]
	lsl	r1, #2
	ldr	r0, .La79dc	@ 0x80
	add	r3, r2, r1
	mov	r1, #0x82
	mov	r2, #3
	b	.La79f8

	.align	2, 0
.La79dc:
	.word	0x80
	.pool

.La79f8:
	sub	r2, #1
	strh	r1, [r3]
	strh	r0, [r3, #8]
	add	r1, #0x20
	add	r3, #2
	cmp	r2, #0
	bge	.La79f8
	ldr	r2, [sp, #0x18]
	ldr	r3, [r2, #0x14]
	mov	r2, #1
	strb	r2, [r3, #5]
	ldr	r0, [sp, #0x18]
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r0, r1
	ldr	r3, [r3]
	mov	r0, #0x71
	strb	r2, [r3, #5]
	bl	_PlaySound
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a7850

