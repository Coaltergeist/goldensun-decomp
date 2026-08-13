	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Curse  @ 0x080d5c48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r7, =iwram_3001ef0
	ldr	r1, [r7]
	sub	sp, #0x24
	str	r1, [sp, #0x14]
	sub	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, =0x7828
	mov	r8, r3
	add	r6, r8
	str	r0, [r6]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld5c98	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld5c9c	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =_FILE_7a
	mov	r3, #1
	mov	r1, r8
	mov	r2, #1
	bl	LoadVFXFile
	ldr	r3, [r6]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5cb8
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
	b	.Ld5cb8

	.align	2, 0
.Ld5c98:
	.word	0x100
.Ld5c9c:
	.word	0
	.pool

.Ld5cb8:
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r2, =0x7784
	add	r3, r8
	str	r5, [r3]
	add	r2, r8
	mov	r3, #0
	ldr	r7, [r7, #0x18]
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	str	r7, [sp, #0xc]
	bl	StartTask
	ldr	r3, [r6]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r10, r2
	cmp	r3, #0
	beq	.Ld5d12
	ldr	r5, =0x7098
	mov	r6, #0x3f
	add	r5, r8
.Ld5cf8:
	bl	Random
	mov	r3, #1
	add	r10, r3
	ldr	r3, =0x7828
	and	r0, r6
	add	r3, r8
	str	r0, [r5]
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	add	r5, #0x1c
	cmp	r10, r3
	bne	.Ld5cf8
.Ld5d12:
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #0x20
	mov	r0, #0
	lsl	r3, #5
	neg	r1, r1
	mov	r9, r0
	cmp	r3, r1
	beq	.Ld5e1e
.Ld5d28:
	mov	r2, r9
	cmp	r2, #0x20
	bne	.Ld5d34
	mov	r0, #0
	bl	_Func_80bd7dc
.Ld5d34:
	ldr	r2, =0x7828
	mov	r3, #0
	add	r2, r8
	mov	r10, r3
	ldr	r3, [r2]
	ldr	r3, [r3, #0x14]
	cmp	r3, #0
	beq	.Ld5dfc
	mov	r0, #0xe1
	lsl	r0, #7
	add	r0, r8
	str	r0, [sp, #8]
	mov	r11, r2
.Ld5d4e:
	mov	r1, r10
	lsl	r6, r1, #4
	cmp	r9, r6
	bne	.Ld5d5c
	mov	r0, #0x8f
	bl	_PlaySound
.Ld5d5c:
	cmp	r9, r6
	blt	.Ld5de8
	mov	r3, r6
	add	r3, #0x48
	cmp	r9, r3
	bge	.Ld5de8
	mov	r3, r11
	mov	r0, r10
	ldr	r2, [r3]
	lsl	r3, r0, #1
	add	r3, #0x24
	add	r5, sp, #0x18
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	GetBattleActorPos2
	mov	r2, r11
	ldr	r3, [r2]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5d8c
	ldr	r3, [r5]
	sub	r3, #0x70
	str	r3, [r5]
.Ld5d8c:
	ldr	r3, [r5, #4]
	mov	r2, r3
	sub	r2, #0x10
	mov	r1, #0x14
	str	r2, [r5, #4]
	ldr	r2, [r5]
	str	r1, [sp, #4]
	mov	r1, #0xd8
	mov	r0, #0x10
	lsl	r1, #3
	str	r0, [sp]
	sub	r2, #8
	sub	r3, #0x14
	ldr	r7, [sp, #0xc]
	ldr	r0, [sp, #0x14]
	add	r1, r8
	bl	_call_via_r7
	cmp	r9, r6
	blt	.Ld5de8
	ldr	r2, [sp, #8]
	mov	r1, r9
	ldr	r3, [r2, #0x18]
	sub	r0, r1, r6
	add	r0, r3
	mov	r1, #6
	bl	__divsi3
	mov	r1, #9
	bl	__modsi3
	lsl	r1, r0, #1
	ldr	r2, [r5]
	ldr	r3, [r5, #4]
	add	r1, r0
	mov	r0, #0x10
	lsl	r1, #6
	str	r0, [sp]
	mov	r0, #0xc
	str	r0, [sp, #4]
	add	r1, r8
	sub	r2, #8
	sub	r3, #0x10
	ldr	r0, [sp, #0x14]
	bl	_call_via_r7
.Ld5de8:
	ldr	r1, [sp, #8]
	add	r1, #0x1c
	str	r1, [sp, #8]
	mov	r0, r11
	ldr	r3, [r0]
	mov	r2, #1
	ldr	r3, [r3, #0x14]
	add	r10, r2
	cmp	r10, r3
	bne	.Ld5d4e
.Ld5dfc:
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r8
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =0x7828
	add	r3, r8
	ldr	r3, [r3]
	ldr	r3, [r3, #0x14]
	mov	r1, #1
	lsl	r3, #5
	add	r9, r1
	add	r3, #0x20
	cmp	r9, r3
	bne	.Ld5d28
.Ld5e1e:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Curse
