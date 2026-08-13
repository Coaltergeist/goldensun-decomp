	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Vine  @ 0x080dd77c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001eec
	mov	r8, r1
	mov	r3, r8
	ldmia	r3!, {r2}
	ldr	r5, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x30
	mov	r10, r2
	add	r5, r10
	mov	r11, r3
	add	r3, sp, #0x14
	ldr	r2, [r0, #4]
	str	r0, [r5]
	str	r3, [sp]
	add	r3, sp, #0x10
	str	r3, [sp, #4]
	mov	r1, #4
	mov	r3, #4
	bl	Anim_Djinni
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Ldd7f4	@ 0x100
	strh	r3, [r2]
	ldr	r3, .Ldd7f8	@ 0
	add	r2, #0x30
	strh	r3, [r2]
	mov	r1, r10
	mov	r2, #1
	ldr	r0, =_FILE_a6
	mov	r3, #1
	bl	LoadVFXFile
	ldr	r3, [r5]
	add	r6, sp, #0x24
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	GetBattleActorPos2
	ldr	r2, [r5]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #0x18
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	GetBattleActorPos2
	ldr	r1, [r6]
	b	.Ldd80c

	.align	2, 0
.Ldd7f4:
	.word	0x100
.Ldd7f8:
	.word	0
	.pool

.Ldd80c:
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	mov	r5, #1
	str	r3, [r2]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r2, r8
	ldr	r3, [r2, #0x1c]
	mov	r1, #7
	str	r3, [sp, #8]
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r0, r8
	ldr	r3, [r0, #0x20]
	add	r1, sp, #8
	mov	r2, #0xe1
	mov	r9, r1
	str	r3, [r1, #4]
	lsl	r2, #7
	ldr	r1, =.Leeb96
	mov	r6, #0
	add	r2, r10
.Ldd85c:
	ldrb	r3, [r1]
	lsl	r3, #24
	asr	r3, #24
	add	r3, #0x40
	add	r6, #1
	str	r3, [r2]
	add	r1, #1
	add	r2, #0x1c
	cmp	r6, #0x10
	bne	.Ldd85c
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #1
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0
	add	r2, r10
	mov	r1, #0x90
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	lsl	r1, #3
	bl	StartTask
	mov	r2, #0
	mov	r8, r2
.Ldd890:
	mov	r3, r8
	cmp	r3, #0x20
	bne	.Ldd8ce
	mov	r0, #0x8f
	bl	_PlaySound
	ldr	r3, =0x7828
	mov	r0, r10
	ldr	r3, [r0, r3]
	ldr	r3, [r3, #0x14]
	mov	r6, #0
	cmp	r3, #0
	beq	.Ldd8ce
	ldr	r5, =0x7828
	mov	r7, #0x24
	add	r5, r10
.Ldd8b0:
	ldr	r3, [r5]
	ldrsh	r0, [r3, r7]
	mov	r3, #0x10
	str	r3, [sp]
	mov	r1, #7
	mov	r3, r6
	mov	r2, #5
	bl	SetBattleActorState
	ldr	r3, [r5]
	ldr	r3, [r3, #0x14]
	add	r6, #1
	add	r7, #2
	cmp	r6, r3
	bne	.Ldd8b0
.Ldd8ce:
	mov	r7, #0xe1
	lsl	r7, #7
	mov	r6, #0
	add	r7, r10
.Ldd8d6:
	lsl	r3, r6, #2
	add	r3, #5
	cmp	r8, r3
	bne	.Ldd8e6
	ldr	r2, =0x77a8
	mov	r3, #2
	add	r2, r10
	str	r3, [r2]
.Ldd8e6:
	lsl	r5, r6, #1
	add	r3, r5, #4
	cmp	r8, r3
	ble	.Ldd94e
	mov	r0, r8
	cmp	r0, #0
	bge	.Ldd8f6
	add	r0, #3
.Ldd8f6:
	asr	r0, #2
	add	r0, r6
	mov	r1, #5
	bl	__modsi3
	mov	r3, r5
	add	r3, #0x20
	cmp	r8, r3
	bge	.Ldd91a
	mov	r2, r8
	sub	r3, r2, r5
	lsl	r3, #2
	mov	r5, r3
	sub	r5, #0x10
	cmp	r5, #0x20
	ble	.Ldd924
	mov	r5, #0x20
	b	.Ldd924
.Ldd91a:
	mov	r1, r8
	sub	r3, r1, r5
	lsl	r3, #2
	mov	r2, #0xa0
	sub	r5, r2, r3
.Ldd924:
	cmp	r5, #0
	ble	.Ldd94e
	lsl	r1, r0, #10
	mov	r4, #1
	mov	r0, #0x20
	mov	r3, #7
	ldr	r2, [r7]
	and	r4, r6
	str	r0, [sp]
	and	r3, r6
	str	r5, [sp, #4]
	mov	r0, r9
	lsl	r4, #2
	sub	r3, r5
	ldr	r4, [r4, r0]
	add	r1, r10
	sub	r2, #0x10
	add	r3, #0x68
	mov	r0, r11
	bl	_call_via_r4
.Ldd94e:
	add	r6, #1
	add	r7, #0x1c
	cmp	r6, #0x10
	bne	.Ldd8d6
	mov	r1, #4
	mov	r0, #4
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x46
	bne	.Ldd890
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Vine

	.section .rodata
.Leeb96:
	.incrom 0xeeb96, 0xeeba6
