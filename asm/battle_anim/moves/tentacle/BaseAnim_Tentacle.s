	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Tentacle  @ 0x080ccc38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r7}
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r5, r7, r2
	str	r0, [r5]
	mov	r0, #0
	mov	r9, r3
	sub	sp, #0x20
	mov	r10, r1
	bl	AnimStart
	ldr	r3, .Lccc7c	@ 0x100
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lccc8c
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	b	.Lccc98

	.align	2, 0
.Lccc7c:
	.word	0x100
	.pool

.Lccc8c:
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
.Lccc98:
	bl	BuildDraw2DFuncEx
	ldr	r6, [r6, #0x1c]
	str	r6, [sp, #0xc]
	ldr	r0, =_FILE_71
	mov	r1, r7
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	mov	r3, #0
	ldr	r0, =_FILE_72
	ldr	r1, =gBuffer
	mov	r2, #1
	bl	LoadVFXFile
	mov	r3, r10
	cmp	r3, #0
	bne	.Lcccd2
	ldr	r0, =_FILE_a0
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Lcccd2:
	mov	r4, #0xef
	lsl	r4, #7
	ldr	r0, =0x7784
	add	r2, r7, r4
	mov	r3, #2
	str	r3, [r2]
	mov	r1, #0x90
	add	r2, r7, r0
	mov	r3, #0x4b
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r2, =0x7828
	add	r5, r7, r2
	ldr	r3, [r5]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_GetBattleActor
	ldr	r3, [r5]
	ldr	r0, [r0]
	add	r6, sp, #0x14
	mov	r8, r0
	mov	r1, r6
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	GetBattleActorPos2
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lccd1c
	ldr	r2, [r6]
	mov	r3, #0x10
	b	.Lccd20
.Lccd1c:
	ldr	r2, [r6]
	mov	r3, #0x70
.Lccd20:
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	str	r3, [r1]
	mov	r3, #0x4a
	mov	r4, r10
	str	r3, [sp, #8]
	cmp	r4, #1
	beq	.Lccd36
	mov	r0, #0x30
	str	r0, [sp, #8]
.Lccd36:
	ldr	r2, [sp, #8]
	mov	r5, #0
	cmp	r2, #0
	bne	.Lccd40
	b	.Lcce54
.Lccd40:
	ldr	r3, =0x7828
	ldr	r4, =.Lee070
	add	r6, r7, r3
	mov	r11, r4
.Lccd48:
	mov	r3, r5
	cmp	r5, #0
	bge	.Lccd50
	add	r3, r5, #3
.Lccd50:
	asr	r4, r3, #2
	cmp	r4, #5
	bgt	.Lccdc2
	cmp	r4, #3
	bgt	.Lccd8e
	lsl	r3, r4, #1
	mov	r0, r11
	ldrh	r1, [r0, r3]
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r0, =.Lee07c
	lsl	r3, #1
	add	r3, r4, r3
	ldrb	r2, [r0, r3]
	ldr	r0, =.Lee064
	ldr	r3, =.Lee088
	ldrb	r0, [r0, r4]
	ldrsb	r3, [r3, r4]
	str	r0, [sp]
	ldr	r0, =.Lee06a
	ldrb	r0, [r0, r4]
	add	r1, r7, r1
	str	r0, [sp, #4]
	add	r3, #0x20
	mov	r0, r9
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	b	.Lccdc2
.Lccd8e:
	lsl	r3, r4, #1
	mov	r0, r11
	ldrh	r1, [r0, r3]
	ldr	r2, =gBuffer
	ldr	r3, [r6]
	add	r1, r2
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r0, =.Lee07c
	lsl	r3, #1
	add	r3, r4, r3
	ldrb	r2, [r0, r3]
	ldr	r0, =.Lee064
	ldr	r3, =.Lee088
	ldrb	r0, [r0, r4]
	ldrsb	r3, [r3, r4]
	str	r0, [sp]
	ldr	r0, =.Lee06a
	ldrb	r0, [r0, r4]
	add	r3, #0x20
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r0, r9
	bl	_call_via_r4
.Lccdc2:
	cmp	r5, #8
	bne	.Lcce02
	mov	r0, r10
	cmp	r0, #0
	bne	.Lccde0
	mov	r0, #0x85
	bl	_Func_80bd7dc
	ldr	r3, [r6]
	mov	r1, #1
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_SetBattleActorKnockback
	b	.Lccdfa
.Lccde0:
	mov	r0, #0x86
	bl	_PlaySound
	ldr	r3, [r6]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	SetBattleActorState
.Lccdfa:
	ldr	r0, =0x77a8
	mov	r3, #8
	add	r2, r7, r0
	str	r3, [r2]
.Lcce02:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lcce30
	cmp	r5, #0xd
	bne	.Lcce1e
	mov	r3, #0xc0
	mov	r4, r8
	lsl	r3, #12
	str	r3, [r4, #0x28]
	ldr	r3, =0x7851
	str	r3, [r4, #0x48]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r4, #0x44]
.Lcce1e:
	cmp	r5, #0x41
	bne	.Lcce30
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r7, r0
	str	r3, [r2]
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Lcce30:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldr	r4, [sp, #8]
	add	r5, #1
	cmp	r5, r4
	beq	.Lcce54
	b	.Lccd48
.Lcce54:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_Tentacle
