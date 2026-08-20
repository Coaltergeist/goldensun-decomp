	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a4800  @ 0x080a4800
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #1
	mov	r10, r3
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0x87
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r5, #0xd
	sub	sp, #4
	strb	r5, [r3, #5]
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x1e
	mov	r3, #0xa
	mov	r9, r0
	mov	r0, #0
	bl	_CreateUIBox
	mov	r7, r0
	ldr	r0, =Func_80a19a0
	bl	StopTask
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	ldr	r3, [r3]
	strb	r5, [r3, #5]
	bl	Func_80a22f4
	mov	r0, #1
	mov	r6, #0
	bl	WaitFrames
	b	.La487c
.La4854:
	ldr	r1, =gKeyRepeat
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.La4866
	mov	r3, #1
	sub	r6, #1
	mov	r10, r3
.La4866:
	ldr	r3, [r1]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.La4876
	mov	r3, #1
	add	r6, #1
	mov	r10, r3
.La4876:
	mov	r0, #1
	bl	WaitFrames
.La487c:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	bne	.La48be
	mov	r3, r10
	cmp	r3, #0
	beq	.La48a4
	mov	r3, #0
	add	r0, r6, #5
	mov	r1, #5
	mov	r10, r3
	bl	__modsi3
	mov	r1, r9
	mov	r6, r0
	mov	r0, r7
	bl	Func_80a4924
.La48a4:
	ldr	r1, =gKeyPress
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.La48be
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.La4854
	mov	r6, #1
	neg	r6, r6
.La48be:
	mov	r0, r7
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	mov	r0, r7
	bl	_CloseUIBox
	mov	r3, r8
	ldr	r0, [r3, #0x10]
	bl	_Func_8016498
	mov	r0, #0xe
	bl	Func_80a2144
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	mov	r3, #0xbe
	lsl	r3, #1
	add	r3, r8
	ldr	r2, [r3]
	mov	r3, #1
	strb	r3, [r2, #5]
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #0xa
	bl	_FillUIRegion
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a4800

