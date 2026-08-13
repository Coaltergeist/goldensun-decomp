	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_UndeadSword  @ 0x080ed104
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	ldmia	r3!, {r1}
	ldr	r6, =0x7828
	ldr	r3, [r3]
	sub	sp, #0x2c
	mov	r10, r1
	str	r3, [sp, #0x14]
	add	r6, r10
	str	r0, [r6]
	mov	r0, #0
	ldr	r5, [r2, #8]
	bl	AnimStart
	ldr	r2, =REG_BG2PA
	ldr	r3, .Led170	@ 0x100
	mov	r1, r5
	strh	r3, [r2]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_51
	mov	r1, r10
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r1, #0x8c
	lsl	r1, #3
	ldr	r0, =_FILE_c0
	add	r1, r10
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r3, [r6]
	mov	r2, sp
	add	r2, #0x18
	ldr	r0, [r3, #4]
	mov	r1, r2
	str	r2, [sp, #0x10]
	bl	BuildDraw2DFuncs
	b	.Led18c

	.align	2, 0
.Led170:
	.word	0x100
	.pool

.Led18c:
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r10
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	mov	r3, #0x4b
	add	r2, r10
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r6]
	add	r5, sp, #0x20
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r1, r5
	bl	GetBattleActorPos3
	ldr	r2, [r5]
	mov	r3, #0x40
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	mov	r7, #0xe1
	str	r3, [r1]
	lsl	r7, #7
	mov	r1, #0
	mov	r8, r1
	add	r7, r10
.Led1cc:
	bl	Random
	ldr	r6, =0x1ff
	and	r6, r0
	bl	Random
	ldr	r3, =0xffff
	mov	r5, r0
	and	r5, r3
	mov	r3, #0x80
	lsl	r3, #15
	str	r3, [r7]
	mov	r3, #0xe0
	lsl	r3, #15
	str	r3, [r7, #4]
	mov	r0, r5
	bl	sin
	add	r6, #0x80
	mov	r3, r6
	mul	r3, r0
	asr	r3, #8
	str	r3, [r7, #0xc]
	mov	r0, r5
	bl	cos
	mov	r3, r6
	mul	r3, r0
	asr	r3, #9
	str	r3, [r7, #0x10]
	bl	Random
	mov	r3, #7
	mov	r2, #1
	and	r3, r0
	add	r8, r2
	str	r3, [r7, #0x18]
	mov	r3, r8
	add	r7, #0x1c
	cmp	r3, #0x10
	bne	.Led1cc
	ldr	r2, =0x77a8
	ldr	r1, =0x7828
	mov	r4, #0
	add	r2, r10
	mov	r3, #8
	add	r1, r10
	str	r3, [r2]
	str	r1, [sp, #0xc]
	str	r4, [sp, #8]
	mov	r9, r4
.Led232:
	mov	r2, r9
	cmp	r2, #0xa
	bne	.Led26a
	ldr	r3, =0x77a8
	mov	r4, #8
	add	r3, r10
	str	r4, [r3]
	mov	r0, #0xd4
	bl	_Func_80bd7dc
	ldr	r1, [sp, #0xc]
	ldr	r3, [r1]
	mov	r1, #0
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
	ldr	r4, [sp, #0xc]
	ldr	r3, [r4]
	mov	r2, #8
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	str	r2, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
.Led26a:
	mov	r3, r9
	cmp	r3, #7
	ble	.Led2f4
	cmp	r3, #0x1f
	bgt	.Led280
	lsl	r3, #1
	add	r3, r9
	lsl	r3, #2
	mov	r5, r3
	sub	r5, #0x60
	b	.Led288
.Led280:
	mov	r3, #0x88
	ldr	r4, [sp, #8]
	lsl	r3, #1
	sub	r5, r3, r4
.Led288:
	cmp	r5, #0
	ble	.Led2f4
	cmp	r5, #0x50
	ble	.Led296
	mov	r5, #0x50
	mov	r7, #2
	b	.Led298
.Led296:
	mov	r7, #3
.Led298:
	mov	r1, #0
	mov	r2, #0x70
	mov	r8, r1
	mov	r6, #0x32
	mov	r11, r2
.Led2a2:
	mov	r3, r8
	cmp	r3, #0
	bne	.Led2b8
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	str	r7, [sp]
	bl	BuildDraw2DFuncEx
	b	.Led2c6
.Led2b8:
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	str	r7, [sp]
	bl	BuildDraw2DFuncEx
.Led2c6:
	ldr	r4, =iwram_3001f08
	ldr	r4, [r4]
	mov	r3, #0xe
	mov	r12, r4
	str	r4, [sp, #0x18]
	mov	r4, r11
	mov	r2, r6
	str	r3, [sp]
	mov	r1, r10
	str	r5, [sp, #4]
	ldr	r0, [sp, #0x14]
	sub	r3, r4, r5
	bl	_call_via_r12
	mov	r0, #0x2e
	bl	gfree
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0xe
	cmp	r2, #2
	bne	.Led2a2
.Led2f4:
	ldr	r4, [sp, #0xc]
	ldr	r3, [r4]
	ldr	r1, [sp, #0x10]
	ldr	r0, [r3, #4]
	mov	r5, #0xe1
	bl	BuildDraw2DFuncs
	lsl	r5, #7
	mov	r1, #0
	mov	r8, r1
	add	r5, r10
.Led30a:
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	add	r3, #8
	cmp	r9, r3
	blt	.Led366
	ldr	r0, [r5, #0x18]
	cmp	r0, #0x1c
	bgt	.Led366
	mov	r1, #3
	bl	__divsi3
	mov	r3, #2
	ldrsh	r4, [r5, r3]
	mov	r1, #6
	ldrsh	r6, [r5, r1]
	cmp	r0, #6
	ble	.Led332
	mov	r0, #6
.Led332:
	ldr	r3, =.Leef88
	lsl	r2, r0, #1
	ldrh	r1, [r3, r2]
	mov	r3, #0x8c
	lsl	r3, #3
	add	r1, r10
	add	r1, r3
	ldr	r3, =.Leef96
	ldrh	r0, [r3, r2]
	lsr	r3, r0, #1
	sub	r2, r4, r3
	str	r0, [sp]
	sub	r3, r6, r3
	str	r0, [sp, #4]
	ldr	r4, [sp, #0x18]
	ldr	r0, [sp, #0x14]
	bl	_call_via_r4
	ldr	r3, [r5, #0x18]
	add	r3, #1
	str	r3, [r5, #0x18]
	mov	r0, r5
	mov	r1, #0x3e
	ldr	r2, =0xffffe000
	bl	Func_80e3908
.Led366:
	mov	r4, #1
	add	r8, r4
	mov	r1, r8
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Led30a
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	mov	r2, r9
	cmp	r2, #7
	bgt	.Led38e
	mov	r0, #2
	mov	r1, #2
	bl	UpdateScreenShake
	b	.Led396
.Led38e:
	mov	r0, #0x10
	mov	r1, #0x10
	bl	UpdateScreenShake
.Led396:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r10
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r4, #1
	ldr	r3, [sp, #8]
	add	r9, r4
	add	r3, #6
	mov	r1, r9
	str	r3, [sp, #8]
	cmp	r1, #0x36
	beq	.Led3ba
	b	.Led232
.Led3ba:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_UndeadSword

	.section .rodata
.Leef88:
	.incrom 0xeef88, 0xeef96
.Leef96:
	.incrom 0xeef96, 0xeefa4
