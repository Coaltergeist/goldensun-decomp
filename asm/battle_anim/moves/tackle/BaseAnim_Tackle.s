	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BaseAnim_Tackle  @ 0x080dfa48
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r2, =iwram_3001eec
	mov	r3, r2
	mov	r6, r1
	ldmia	r3!, {r1}
	ldr	r3, [r3]
	sub	sp, #0x48
	str	r3, [sp, #0x20]
	mov	r3, r2
	sub	r3, #0x6c
	ldr	r3, [r3]
	str	r3, [sp, #0x14]
	ldr	r5, =0x7828
	mov	r9, r1
	ldr	r2, [r2, #8]
	add	r5, r9
	str	r2, [sp, #0x10]
	str	r0, [r5]
	mov	r0, #0
	bl	AnimStart
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Ldfaa6
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xb
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	b	.Ldfac4
.Ldfaa6:
	mov	r5, #2
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
	mov	r0, #0x2f
	mov	r1, #7
	mov	r2, #7
	mov	r3, #0xf
	str	r5, [sp]
	bl	BuildDraw2DFuncEx
.Ldfac4:
	ldr	r3, =gPtrs
	mov	r2, r3
	add	r2, #0xb8
	add	r3, #0xbc
	ldr	r2, [r2]
	ldr	r3, [r3]
	str	r2, [sp, #0x18]
	str	r3, [sp, #0x1c]
	ldr	r1, [sp, #0x10]
	ldr	r0, =_FILE_73
	mov	r2, #0
	mov	r3, #0
	bl	LoadVFXFile
	ldr	r0, =_FILE_99
	mov	r1, r9
	mov	r2, #1
	mov	r3, #0
	bl	LoadVFXFile
	mov	r3, #0x90
	lsl	r3, #1
	mov	r0, r9
	ldr	r1, =gBuffer
	mov	r2, #0x28
	bl	Func_80df9d0
	ldr	r0, =_FILE_bd
	mov	r1, r9
	mov	r2, #1
	mov	r3, #1
	bl	LoadVFXFile
	cmp	r6, #1
	beq	.Ldfb1e
	cmp	r6, #1
	bgt	.Ldfb14
	cmp	r6, #0
	beq	.Ldfb1a
	b	.Ldfb26
.Ldfb14:
	cmp	r6, #2
	beq	.Ldfb22
	b	.Ldfb26
.Ldfb1a:
	ldr	r0, =_FILE_c2
	b	.Ldfb28
.Ldfb1e:
	ldr	r0, =_FILE_b9
	b	.Ldfb28
.Ldfb22:
	ldr	r0, =_FILE_bb
	b	.Ldfb28
.Ldfb26:
	ldr	r0, =_FILE_c0
.Ldfb28:
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	mov	r2, #0x80
	lsl	r0, #19
	bl	_call_via_r3
	mov	r2, #0xef
	lsl	r2, #7
	add	r2, r9
	mov	r3, #2
	str	r3, [r2]
	ldr	r2, =0x7784
	ldr	r5, =0x7828
	add	r2, r9
	mov	r3, #0x4b
	mov	r1, #0x90
	str	r3, [r2]
	add	r5, r9
	lsl	r1, #3
	ldr	r0, =Task_BlitAnim
	bl	StartTask
	ldr	r3, [r5]
	mov	r2, #0x24
	ldrsh	r1, [r3, r2]
	ldr	r0, [r3, #8]
	mov	r2, #0xa
	bl	Func_80df90c
	ldr	r3, [r5]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_GetBattleActor
	mov	r5, #0xe1
	ldr	r6, [r0]
	lsl	r5, #7
	mov	r0, #0
	mov	r8, r0
	mov	r7, #0xff
	add	r5, r9
.Ldfb80:
	ldr	r3, [r6, #8]
	str	r3, [r5]
	mov	r1, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r1, #12
	add	r3, r1
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	Random
	ldr	r3, =0x1ff
	and	r3, r0
	lsl	r3, #11
	str	r3, [r5, #0xc]
	bl	Random
	and	r0, r7
	sub	r0, #0x40
	lsl	r0, #11
	str	r0, [r5, #0x10]
	bl	Random
	and	r0, r7
	sub	r0, #0x80
	ldr	r3, [r5]
	lsl	r0, #11
	str	r0, [r5, #0x14]
	cmp	r3, #0
	ble	.Ldfbc2
	ldr	r3, [r5, #0xc]
	neg	r3, r3
	str	r3, [r5, #0xc]
.Ldfbc2:
	mov	r2, r8
	lsr	r3, r2, #31
	add	r3, r8
	asr	r3, #1
	add	r3, #0x10
	str	r3, [r5, #0x18]
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	add	r5, #0x1c
	cmp	r4, #0x40
	bne	.Ldfb80
	ldr	r3, =0x7828
	add	r3, r9
	ldr	r3, [r3]
	mov	r2, sp
	add	r2, #0x3c
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r2
	str	r2, [sp, #0xc]
	bl	GetBattleActorPos3
	ldr	r4, =0x7828
	mov	r0, #0x30
	add	r4, r9
	mov	r3, #0
	add	r0, sp
	str	r4, [sp, #8]
	mov	r11, r3
	mov	r10, r0
.Ldfc00:
	mov	r1, r11
	cmp	r1, #0xe
	bgt	.Ldfc58
	ldr	r2, [sp, #8]
	ldr	r3, [r2]
	mov	r1, r10
	ldr	r0, [r3, #8]
	bl	GetBattleActorPos3
	mov	r3, r10
	ldr	r2, [r3]
	mov	r4, r10
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r4, #4]
	mov	r0, #0x28
	mov	r1, #0x20
	asr	r2, #1
	sub	r2, #0x10
	sub	r3, #0x30
	str	r0, [sp]
	str	r1, [sp, #4]
	ldr	r4, [sp, #0x18]
	mov	r1, r9
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r10
	ldr	r2, [r0]
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r1, #0x28
	mov	r4, #0x20
	asr	r2, #1
	str	r1, [sp]
	str	r4, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x10
	ldr	r0, [sp, #0x20]
	mov	r1, r9
	ldr	r4, [sp, #0x1c]
	bl	_call_via_r4
.Ldfc58:
	mov	r0, r11
	cmp	r0, #0xa
	bne	.Ldfc90
	ldr	r1, [sp, #8]
	ldr	r3, [r1]
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	mov	r3, #8
	str	r3, [sp]
	mov	r2, #5
	mov	r1, #7
	mov	r3, #0
	bl	SetBattleActorState
	ldr	r4, [sp, #8]
	ldr	r3, [r4]
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, #4
	bl	_SetBattleActorKnockback
	mov	r0, #0x86
	bl	_Func_80bd7dc
	ldr	r3, =0x77a8
	mov	r2, #8
	add	r3, r9
	str	r2, [r3]
.Ldfc90:
	mov	r5, r11
	sub	r5, #8
	cmp	r5, #0xb
	bhi	.Ldfcca
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	ldr	r4, [sp, #0xc]
	lsl	r1, r3, #4
	ldr	r2, [r4]
	sub	r1, r3
	ldr	r3, =gBuffer
	lsl	r1, #6
	mov	r0, r10
	add	r1, r3
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r0, #4]
	mov	r0, #0x14
	asr	r2, #1
	str	r0, [sp]
	mov	r0, #0x30
	str	r0, [sp, #4]
	sub	r2, #0x10
	sub	r3, #0x28
	ldr	r0, [sp, #0x20]
	ldr	r4, [sp, #0x18]
	bl	_call_via_r4
.Ldfcca:
	cmp	r5, #0x37
	bhi	.Ldfd40
	bl	InitMatrixStack
	ldr	r0, [sp, #0x14]
	mov	r1, r0
	add	r1, #0xc
	bl	MatrixSetLook
	mov	r6, #0xe1
	mov	r0, #0
	lsl	r6, #7
	mov	r8, r0
	add	r7, sp, #0x24
	add	r6, r9
.Ldfce8:
	ldr	r5, [r6, #0x18]
	cmp	r5, #0
	ble	.Ldfd34
	mov	r1, r7
	mov	r0, r6
	bl	Func_80e3944
	asr	r5, #4
	ldr	r2, [r7]
	add	r5, #2
	lsl	r0, r5, #1
	ldr	r4, =Data_ede48
	asr	r2, #1
	str	r2, [r7]
	sub	r3, r0, #2
	ldrh	r1, [r4, r3]
	ldr	r3, [sp, #0x10]
	add	r1, r3, r1
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r3, #1
	sub	r2, r3
	ldr	r3, [r7, #4]
	ldr	r4, [sp, #0x18]
	sub	r3, r5
	str	r0, [sp, #4]
	str	r5, [sp]
	ldr	r0, [sp, #0x20]
	bl	_call_via_r4
	mov	r0, r6
	mov	r1, #0x3c
	ldr	r2, =0xfffffe00
	bl	Func_80e38b8
	ldr	r3, [r6, #0x18]
	sub	r3, #1
	str	r3, [r6, #0x18]
.Ldfd34:
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	add	r6, #0x1c
	cmp	r1, #0x40
	bne	.Ldfce8
.Ldfd40:
	mov	r0, #8
	mov	r1, #8
	bl	UpdateScreenShake
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r3, #1
	add	r2, r9
	str	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r11, r2
	mov	r3, r11
	cmp	r3, #0x3c
	beq	.Ldfd66
	b	.Ldfc00
.Ldfd66:
	ldr	r0, =Task_BlitAnim
	bl	StopTask
	mov	r0, #0x2f
	bl	gfree
	mov	r0, #0x2e
	bl	gfree
	bl	AnimEnd
	add	sp, #0x48
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end BaseAnim_Tackle
