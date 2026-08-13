	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Anim_Whirlwind  @ 0x080d3854
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
	sub	sp, #0x34
	str	r1, [sp, #0x28]
	ldr	r2, =0x7828
	ldr	r3, [r3]
	str	r3, [sp, #0x24]
	add	r3, r1, r2
	str	r0, [r3]
	mov	r0, #1
	bl	AnimStart
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld38bc	@ 0x1010
	ldr	r0, =_FILE_ce
	strh	r3, [r2]
	bl	GetFile
	mov	r5, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r1, r5
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	add	r5, #0x80
	ldr	r1, [sp, #0x28]
	mov	r0, r5
	bl	DecompressLZ
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x1c]
	mov	r1, #7
	str	r3, [sp, #0x2c]
	mov	r2, #7
	b	.Ld38d4

	.align	2, 0
.Ld38bc:
	.word	0x1010
	.pool

.Ld38d4:
	mov	r3, #7
	mov	r0, #0x2f
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	ldr	r3, [r6, #0x20]
	mov	r0, sp
	add	r0, #0x2c
	str	r0, [sp, #0x18]
	str	r3, [r0, #4]
	ldr	r2, [sp, #0x28]
	mov	r3, #0xe1
	mov	r1, #0
	lsl	r3, #7
	mov	r8, r1
	add	r5, r2, r3
.Ld38f4:
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	str	r3, [r5]
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r5, #4]
	bl	Random
	mov	r3, #0xf
	and	r3, r0
	mov	r0, #1
	add	r8, r0
	neg	r3, r3
	mov	r1, r8
	str	r3, [r5, #0x18]
	add	r5, #0x1c
	cmp	r1, #0x10
	bne	.Ld38f4
	ldr	r3, [sp, #0x28]
	mov	r0, #0xef
	lsl	r0, #7
	add	r2, r3, r0
	mov	r3, #2
	str	r3, [r2]
	ldr	r1, [sp, #0x28]
	ldr	r3, =0x7784
	add	r2, r1, r3
	mov	r3, #0x32
	mov	r1, #0x90
	lsl	r1, #3
	str	r3, [r2]
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld397c	@ 0x1000
	mov	r0, #1
	strh	r3, [r2]
	bl	WaitFrames
	mov	r0, #0x8d
	bl	_PlaySound
	ldr	r2, =0x7828
	ldr	r1, [sp, #0x28]
	add	r2, r1, r2
	mov	r0, #0
	str	r2, [sp, #0x1c]
	mov	r11, r0
.Ld3960:
	mov	r3, r11
	lsl	r0, r3, #10
	bl	sin
	lsl	r0, #4
	str	r0, [sp, #0x20]
	mov	r0, r11
	cmp	r0, #0x20
	bne	.Ld3990
	mov	r0, #0x85
	bl	_Func_80bd7dc
	b	.Ld3990

	.align	2, 0
.Ld397c:
	.word	0x1000
	.pool

.Ld3990:
	mov	r1, #0
	ldr	r6, =Func_80008d8
	mov	r9, r1
	mov	r5, #0x10
.Ld3998:
	cmp	r11, r5
	bne	.Ld39a8
	mov	r1, #0x80
	ldr	r0, [sp, #0x24]
	lsl	r1, #7
	ldr	r2, =0x8080808
	bl	_call_via_r6
.Ld39a8:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	add	r5, #8
	cmp	r3, #7
	bne	.Ld3998
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Ld39d4
	ldr	r1, [sp, #0x20]
	mov	r2, #0x80
	lsl	r2, #14
	add	r1, r2
	str	r1, [sp, #0x20]
	b	.Ld39dc

	.pool_aligned

.Ld39d4:
	ldr	r3, [sp, #0x20]
	ldr	r0, =0xffe00000
	add	r3, r0
	str	r3, [sp, #0x20]
.Ld39dc:
	mov	r1, r11
	cmp	r1, #0x10
	bgt	.Ld39ec
	ldr	r2, .Ld3a14	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	mov	r3, r11
	orr	r3, r2
	strh	r3, [r1]
.Ld39ec:
	mov	r2, r11
	cmp	r2, #0x3f
	ble	.Ld3a00
	ldr	r2, .Ld3a18	@ 0x4f
	mov	r0, r11
	ldr	r1, .Ld3a14	@ 0x1000
	ldr	r3, =REG_BLDALPHA
	sub	r2, r0
	orr	r2, r1
	strh	r2, [r3]
.Ld3a00:
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	ldr	r0, =.Lee1ca
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r0, r3]
	mov	r1, #0
	mov	r9, r1
	b	.Ld3a28

	.align	2, 0
.Ld3a14:
	.word	0x1000
.Ld3a18:
	.word	0x4f
	.pool

.Ld3a28:
	cmp	r3, #0
	bne	.Ld3a2e
	b	.Ld3b88
.Ld3a2e:
	mov	r1, r11
	mov	r2, r11
	ldr	r3, [sp, #0x28]
	asr	r1, #31
	lsl	r2, #11
	str	r1, [sp, #0x14]
	str	r2, [sp, #0x10]
	str	r3, [sp, #0xc]
.Ld3a3e:
	ldr	r0, [sp, #0x10]
	bl	sin
	ldr	r1, [sp, #0x1c]
	ldr	r3, [r1]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r2, =.Lee1ca
	add	r3, #1
	ldrb	r3, [r2, r3]
	mul	r3, r0
	ldr	r0, [sp, #0x20]
	add	r3, r0
	asr	r3, #16
	ldr	r0, [sp, #0x10]
	add	r3, #0x28
	mov	r10, r3
	bl	cos
	ldr	r1, [sp, #0x14]
	lsl	r0, #1
	asr	r7, r0, #16
	lsr	r0, r1, #31
	add	r0, r11
	mov	r1, #3
	asr	r0, #1
	bl	__modsi3
	lsl	r5, r0, #2
	ldr	r2, [sp, #0x28]
	add	r5, r0
	lsl	r6, r5, #9
	ldr	r3, =0xc56
	add	r6, r2, r6
	add	r1, r6, r3
	mov	r0, #0x28
	mov	r2, #0x20
	mov	r3, r7
	str	r0, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	add	r3, #0x10
	mov	r2, r10
	bl	_call_via_r4
	ldr	r3, [sp, #0x28]
	ldr	r0, =0x2a56
	lsl	r5, #8
	add	r5, r3, r5
	add	r5, r0
	mov	r1, #0x28
	mov	r2, #0x20
	mov	r3, r7
	str	r1, [sp]
	str	r2, [sp, #4]
	ldr	r4, [sp, #0x2c]
	add	r3, #0x30
	ldr	r0, [sp, #0x24]
	mov	r1, r5
	mov	r2, r10
	bl	_call_via_r4
	ldr	r3, =0x1156
	mov	r0, #0x28
	add	r6, r3
	mov	r1, #0x20
	mov	r3, r7
	add	r3, #0x50
	str	r0, [sp]
	str	r1, [sp, #4]
	mov	r2, r10
	mov	r1, r6
	ldr	r4, [sp, #0x2c]
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	mov	r0, #0xe1
	ldr	r3, [sp, #0xc]
	mov	r2, #0
	lsl	r0, #7
	mov	r8, r2
	add	r6, r3, r0
.Ld3ae6:
	ldr	r3, [r6, #0x18]
	cmp	r3, #0
	blt	.Ld3b32
	mov	r1, r8
	lsr	r2, r1, #31
	add	r2, r8
	asr	r2, #1
	lsr	r4, r3, #31
	add	r4, r3, r4
	lsl	r3, r2, #1
	add	r3, r2
	asr	r4, #1
	mov	r2, #1
	mov	r5, r8
	add	r4, r3
	and	r5, r2
	ldr	r0, =Data_edeca
	ldr	r2, =Data_edebe
	lsl	r3, r4, #1
	ldrh	r1, [r2, r3]
	ldrb	r0, [r0, r4]
	ldr	r3, [sp, #0x28]
	ldr	r2, [r6]
	add	r1, r3, r1
	ldr	r3, [r6, #4]
	str	r0, [sp]
	ldr	r0, =Data_eded0
	ldrb	r0, [r0, r4]
	str	r0, [sp, #4]
	ldr	r0, [sp, #0x18]
	lsl	r5, #2
	add	r3, r7
	ldr	r4, [r5, r0]
	add	r2, r10
	ldr	r0, [sp, #0x24]
	bl	_call_via_r4
	ldr	r3, [r6, #0x18]
.Ld3b32:
	add	r3, #1
	str	r3, [r6, #0x18]
	cmp	r3, #6
	bne	.Ld3b54
	bl	Random
	mov	r3, #0x1f
	and	r3, r0
	str	r3, [r6]
	bl	Random
	mov	r3, #0x3f
	and	r3, r0
	add	r3, #0x10
	str	r3, [r6, #4]
	mov	r3, #0
	str	r3, [r6, #0x18]
.Ld3b54:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	add	r6, #0x1c
	cmp	r2, #4
	bne	.Ld3ae6
	ldr	r3, [sp, #0x10]
	ldr	r1, [sp, #0xc]
	mov	r0, #0x80
	lsl	r0, #7
	add	r3, r0
	add	r1, #0x70
	str	r1, [sp, #0xc]
	str	r3, [sp, #0x10]
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	mov	r2, #1
	add	r9, r2
	ldr	r2, [r3, #0x18]
	ldr	r1, =.Lee1ca
	lsl	r3, r2, #1
	add	r3, r2
	ldrb	r3, [r1, r3]
	cmp	r9, r3
	beq	.Ld3b88
	b	.Ld3a3e
.Ld3b88:
	ldr	r0, [sp, #0x1c]
	ldr	r3, [r0]
	ldr	r3, [r3, #0x14]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.Ld3bec
	ldr	r1, [sp, #0x28]
	ldr	r2, =0x7828
	mov	r3, #0
	add	r7, r1, r2
	mov	r10, r3
	mov	r4, #0x24
.Ld3ba2:
	mov	r0, #0
	mov	r5, r10
	mov	r9, r0
	mov	r6, r4
	add	r5, #0x10
.Ld3bac:
	cmp	r11, r5
	bne	.Ld3bd0
	ldr	r3, [r7]
	ldrsh	r0, [r3, r6]
	mov	r3, #4
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, r8
	str	r4, [sp, #8]
	bl	SetBattleActorState
	ldr	r3, [r7]
	mov	r1, #6
	ldrsh	r0, [r3, r6]
	bl	_SetBattleActorKnockback
	ldr	r4, [sp, #8]
.Ld3bd0:
	mov	r3, #1
	add	r9, r3
	mov	r0, r9
	add	r5, #8
	cmp	r0, #7
	bne	.Ld3bac
	add	r8, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #0x14]
	mov	r1, #3
	add	r10, r1
	add	r4, #2
	cmp	r8, r3
	bne	.Ld3ba2
.Ld3bec:
	ldr	r2, [sp, #0x28]
	ldr	r0, =0x77a8
	mov	r1, #1
	add	r3, r2, r0
	str	r1, [r3]
	ldr	r2, [sp, #0x1c]
	ldr	r3, [r2]
	ldr	r2, [r3, #0x18]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.Lee1ca
	add	r3, #2
	ldrb	r0, [r1, r3]
	lsl	r1, r0, #1
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r0, =0x7824
	ldr	r2, [sp, #0x28]
	mov	r1, #1
	add	r3, r2, r0
	str	r1, [r3]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r11, r2
	mov	r3, r11
	cmp	r3, #0x50
	beq	.Ld3c2c
	b	.Ld3960
.Ld3c2c:
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	bl	AnimEnd
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Anim_Whirlwind

	.section .rodata
.Lee1ca:
	.incrom 0xee1ca, 0xee1d3
