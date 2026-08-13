	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Sleep  @ 0x080d59b0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x28
	str	r3, [sp, #0x18]
	ldr	r3, =0x7828
	mov	r9, r1
	add	r3, r9
	str	r0, [r3]
	mov	r0, #0
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ld5a14	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ld5a18	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	ldr	r0, =_FILE_a8
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r5, #1
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r2, [r6, #0x1c]
	mov	r0, #0x2f
	str	r2, [sp, #0xc]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	b	.Ld5a2c

	.align	2, 0
.Ld5a14:
	.word	0x100
.Ld5a18:
	.word	0
	.pool

.Ld5a2c:
	ldr	r6, [r6, #0x20]
	ldr	r5, =gBuffer
	str	r6, [sp, #0x10]
	mov	r7, #0
.Ld5a34:
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x20
	lsl	r3, #16
	str	r3, [r5]
	ldr	r3, =0xffe00000
	mov	r6, #0
	str	r3, [r5, #4]
	bl	Random
	str	r6, [r5, #0x10]
	bl	Random
	mov	r3, #3
	and	r3, r0
	str	r3, [r5, #8]
	bl	Random
	mov	r3, #0xff
	and	r3, r0
	add	r7, #1
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r7, #0x20
	bne	.Ld5a34
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld5a7c
	ldr	r2, =REG_BG2X
	ldr	r3, =0xffff9000
	str	r3, [r2]
.Ld5a7c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #1
	str	r3, [r2]
	ldr	r3, =0x7784
	mov	r1, #0x90
	add	r3, r9
	str	r6, [r3]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	mov	r0, #0x8e
	bl	_PlaySound
	mov	r3, #0
	str	r3, [sp, #0x14]
.Ld5aa0:
	ldr	r3, =iwram_3001e80
	ldr	r4, [sp, #0x14]
	ldr	r3, [r3]
	mov	r11, r3
	cmp	r4, #0x50
	bne	.Ld5ab2
	mov	r0, #0
	bl	_Func_80bd7dc
.Ld5ab2:
	ldr	r2, =0x7828
	mov	r1, r9
	ldr	r3, [r1, r2]
	ldr	r3, [r3, #0x14]
	mov	r0, #0
	mov	r10, r0
	cmp	r3, #0
	beq	.Ld5b2c
	mov	r3, r11
	add	r3, #0xc
	mov	r4, #0x24
	str	r3, [sp, #8]
	add	r6, sp, #0x1c
	mov	r8, r4
	add	r7, r1, r2
.Ld5ad0:
	ldr	r3, [r7]
	mov	r1, r8
	ldrsh	r0, [r3, r1]
	bl	_GetBattleActor
	ldr	r5, [r0]
	bl	InitMatrixStack
	mov	r0, r11
	ldr	r1, [sp, #8]
	bl	MatrixSetLook
	ldr	r3, [r5, #8]
	str	r3, [r6]
	mov	r3, #0xa0
	lsl	r3, #14
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	MatrixTranslatev
	mov	r4, r10
	lsl	r3, r4, #4
	ldr	r0, [sp, #0x14]
	add	r3, #0x40
	cmp	r0, r3
	bne	.Ld5b1c
	ldr	r3, [r7]
	mov	r1, r8
	ldrsh	r0, [r3, r1]
	mov	r3, #0
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #5
	sub	r3, #1
	bl	SetBattleActorState
.Ld5b1c:
	mov	r3, #2
	add	r8, r3
	ldr	r3, [r7]
	mov	r4, #1
	ldr	r3, [r3, #0x14]
	add	r10, r4
	cmp	r10, r3
	bne	.Ld5ad0
.Ld5b2c:
	mov	r0, #0x20
	ldr	r6, =gBuffer
	mov	r7, #0
	mov	r8, r0
.Ld5b34:
	ldr	r1, [sp, #0x14]
	lsl	r3, r7, #2
	cmp	r1, r3
	ble	.Ld5bcc
	ldr	r0, [r6, #4]
	ldr	r2, =0x7fffff
	cmp	r0, r2
	bgt	.Ld5bcc
	ldr	r1, [r6, #0x18]
	cmp	r1, #0
	bge	.Ld5b4c
	add	r1, #0xf
.Ld5b4c:
	asr	r1, #4
	mov	r3, #7
	and	r1, r3
	cmp	r1, #3
	bgt	.Ld5b74
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	mov	r4, r8
	asr	r3, r0, #16
	lsl	r1, #10
	str	r4, [sp]
	str	r4, [sp, #4]
	add	r1, r9
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	b	.Ld5b94
.Ld5b74:
	ldr	r2, =0xfffff000
	lsl	r1, #10
	add	r1, r9
	add	r1, r2
	mov	r3, #2
	ldrsh	r2, [r6, r3]
	mov	r4, r8
	asr	r3, r0, #16
	str	r4, [sp]
	str	r4, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x18]
	ldr	r4, [sp, #0x10]
	bl	_call_via_r4
.Ld5b94:
	ldr	r4, [r6, #0x10]
	mov	r0, #0x80
	lsl	r0, #6
	ldr	r2, [r6, #4]
	add	r1, r4, r0
	ldr	r3, [r6, #0x18]
	ldr	r0, [r6, #8]
	mov	r5, #0xb8
	add	r2, r4
	add	r3, r0
	lsl	r5, #15
	str	r2, [r6, #4]
	str	r1, [r6, #0x10]
	str	r3, [r6, #0x18]
	cmp	r2, r5
	ble	.Ld5bcc
	cmp	r1, #0
	bne	.Ld5bcc
	ldr	r1, =0x2001
	add	r3, r4, r1
	add	r2, r0, #4
	neg	r3, r3
	str	r2, [r6, #8]
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	str	r5, [r6, #4]
	str	r3, [r6, #0x10]
.Ld5bcc:
	add	r7, #1
	add	r6, #0x1c
	cmp	r7, #0xc
	bne	.Ld5b34
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, [sp, #0x14]
	add	r2, #1
	str	r2, [sp, #0x14]
	cmp	r2, #0x94
	beq	.Ld5bee
	b	.Ld5aa0
.Ld5bee:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Sleep
