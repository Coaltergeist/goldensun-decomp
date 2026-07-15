	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ab314  @ 0x080ab314
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r1, [r3]
	sub	sp, #0x20
	str	r1, [sp, #0x14]
	sub	r3, #0xa0
	ldr	r3, [r3]
	mov	r2, #0
	str	r3, [sp, #0x10]
	str	r2, [sp, #0xc]
	str	r2, [sp, #8]
	ldr	r0, [r1, #0x30]
	bl	_Func_80164ac
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x86
	ldr	r3, [sp, #0x14]
	lsl	r1, #1
	add	r6, r3, r1
	ldr	r0, [r6]
	bl	_Func_8016478
	ldr	r5, =0xc30
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	add	r5, #1
	bl	_Func_801e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r5, #6
	mov	r0, #1
	mov	r1, #1
	mov	r2, #0xb
	mov	r3, #3
	str	r5, [sp]
	bl	Func_80ab21c
	ldr	r2, [sp, #0x14]
	mov	r3, #0xa
	ldr	r0, [r2, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0
	mov	r3, #0x1c
	str	r5, [sp, #4]
	bl	Func_80ab2ec
	mov	r1, #9
	mov	r2, #8
	mov	r3, #0xa
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r5, #2
	mov	r1, #0xc
	mov	r2, #0x16
	mov	r3, #7
	mov	r6, r0
	mov	r0, #8
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #3
	str	r0, [sp, #0x1c]
	mov	r1, #9
	mov	r2, #0x16
	mov	r0, #8
	str	r5, [sp]
	bl	_CreateUIBox
	str	r0, [sp, #0x18]
	bl	_Func_801e318
	ldr	r3, =0xc32
	mov	r7, #0
	mov	r5, #0
	mov	r8, r3
.Lab3ce:
	mov	r1, r8
	add	r0, r5, r1
	lsl	r3, r5, #3
	mov	r1, r6
	mov	r2, #0
	add	r5, #1
	bl	_Func_801e7c0
	cmp	r5, #6
	ble	.Lab3ce
	ldr	r3, =gKeyRepeat
	mov	r2, #1
	mov	r1, #0
	mov	r11, r2
	mov	r9, r3
	mov	r8, r1
.Lab3ee:
	ldr	r0, [sp, #0x18]
	bl	_Func_8016478
	ldr	r0, =0xc32
	ldr	r1, [sp, #0x18]
	mov	r2, #0
	mov	r3, #0
	add	r0, r7, r0
	bl	_DrawSmallText
	ldr	r1, =0xc39
	ldr	r0, [sp, #0x1c]
	add	r1, r7, r1
	bl	_Func_80175c0
	mov	r2, r11
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	ldr	r2, [sp, #8]
	mov	r1, #0
	mov	r3, #6
	mov	r10, r0
	mov	r0, r6
	bl	Func_80ab1f4
	mov	r3, r11
	str	r3, [sp]
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r1, #0
	mov	r2, r7
	mov	r3, #6
	bl	Func_80ab1f4
	str	r7, [sp, #8]
	b	.Lab4b8
.Lab43a:
	mov	r1, r9
	ldr	r2, [r1]
	mov	r3, #0x60
	and	r2, r3
	cmp	r2, #0
	beq	.Lab45a
	sub	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_80aa538
	mov	r7, r0
	mov	r0, #0x6f
	bl	_PlaySound
	b	.Lab4ec
.Lab45a:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #8
	and	r2, r3
	cmp	r2, #0
	beq	.Lab474
	mov	r0, #0x71
	bl	_PlaySound
	mov	r2, #2
	neg	r2, r2
	str	r2, [sp, #0xc]
	b	.Lab4ec
.Lab474:
	ldr	r2, [r1]
	mov	r3, #6
	and	r2, r3
	cmp	r2, #0
	beq	.Lab48c
	mov	r0, #0x71
	bl	_PlaySound
	mov	r3, #1
	neg	r3, r3
	str	r3, [sp, #0xc]
	b	.Lab4ec
.Lab48c:
	ldr	r3, [r1]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.Lab4b8
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lab4b2
	add	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_80aa538
	mov	r7, r0
	mov	r0, #0x70
	bl	_PlaySound
	b	.Lab4ec
.Lab4b2:
	mov	r0, #0x6f
	bl	_PlaySound
.Lab4b8:
	ldrh	r1, [r6, #0xe]
	add	r1, r7
	lsl	r1, #3
	mov	r0, #0xc
	add	r1, #8
	neg	r0, r0
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0x90
	and	r2, r3
	cmp	r2, #0
	beq	.Lab43a
	add	r7, #1
	mov	r0, r7
	mov	r1, #7
	bl	Func_80aa538
	mov	r7, r0
	mov	r0, #0x6f
	bl	_PlaySound
.Lab4ec:
	ldr	r1, [sp, #0x10]
	ldr	r2, =0x12b6
	add	r5, r1, r2
	ldrh	r3, [r5]
	cmp	r3, #0x63
	beq	.Lab502
	mov	r0, r3
	bl	Func_8003f3c
	mov	r3, #0x63
	strh	r3, [r5]
.Lab502:
	ldr	r5, =iwram_3001e8c
	ldr	r1, =0x12f8
	ldr	r3, [r5]
	mov	r2, r8
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, [sp, #0x1c]
	bl	_Func_8016478
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, r8
	mov	r1, r8
	strh	r1, [r3, #0x1a]
	strh	r2, [r3, #0x18]
	strh	r2, [r3, #0x14]
	mov	r1, r10
	mov	r3, r8
	str	r3, [r1]
	ldr	r2, [sp, #0xc]
	cmp	r2, #0
	bne	.Lab530
	b	.Lab3ee
.Lab530:
	ldr	r1, =0xea6
	ldr	r3, [r5]
	mov	r2, #1
	add	r3, r1
	strb	r2, [r3]
	ldr	r0, [sp, #0x18]
	bl	_Func_80164ac
	ldr	r0, [sp, #0x1c]
	bl	_Func_80164ac
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	ldr	r0, [sp, #0x18]
	bl	_CloseUIBox
	mov	r0, r6
	mov	r1, #1
	bl	_CloseUIBox
	mov	r1, #1
	ldr	r0, [sp, #0x1c]
	bl	_CloseUIBox
	bl	_Func_801e318
	mov	r3, #2
	ldr	r2, [sp, #0xc]
	neg	r3, r3
	cmp	r2, r3
	bne	.Lab59a
	ldr	r1, [sp, #0x14]
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r0, [r3]
	bl	_Func_8016478
	ldr	r3, [sp, #0x14]
	ldr	r0, [r3, #0x30]
	bl	_Func_8016478
	ldr	r1, [sp, #0x14]
	ldr	r0, [r1, #0x10]
	bl	_Func_8016478
	ldr	r2, =0xea6
	ldr	r3, [r5]
	add	r3, r2
	mov	r2, #0
	strb	r2, [r3]
.Lab59a:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80a19a0
	bl	StartTask
	ldr	r0, [sp, #0xc]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ab314

.thumb_func_start Func_80ab5e4  @ 0x080ab5e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x6c
	str	r0, [sp, #0x50]
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r0, #0xc2
	str	r3, [sp, #0x4c]
	ldr	r2, [sp, #0x50]
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r1, #1
	mov	r5, #0xba
	str	r1, [sp, #0x48]
	str	r2, [sp, #0x34]
	ldr	r7, [sp, #0x4c]
	lsl	r5, #1
	mov	r9, r3
	add	r3, r2, r5
	ldrh	r5, [r7, r3]
	mov	r1, #0xa
	mov	r0, r5
	bl	__umodsi3
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [sp, #0x38]
	mov	r1, #0xa
	mov	r0, r5
	bl	__udivsi3
	mov	r2, sp
	add	r2, #0x64
	lsl	r0, #16
	lsr	r0, #16
	str	r2, [sp, #0x1c]
	mov	r1, #1
	str	r0, [sp, #0x30]
	neg	r1, r1
	mov	r0, #0
	ldr	r5, [sp, #0x1c]
	mov	r3, sp
	str	r0, [sp, #0x2c]
	str	r0, [sp, #0x28]
	str	r0, [sp, #0x24]
	str	r0, [sp, #0x20]
	str	r1, [sp, #0x3c]
	mov	r2, #0
	add	r3, #0x6b
	mov	r12, r5
.Lab656:
	strb	r2, [r3]
	sub	r3, #1
	cmp	r3, r12
	bge	.Lab656
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	bne	.Lab6d8
	mov	r0, r9
	bl	Func_80aafb8
	ldr	r3, =0x219
	mov	r0, #0
	ldr	r1, [sp, #0x4c]
	str	r0, [sp, #0x44]
	add	r2, r1, r3
	ldrb	r3, [r2]
	cmp	r7, r3
	bge	.Lab69e
	mov	r0, r2
	ldr	r1, [sp, #0x1c]
	mov	r2, r9
	mov	r4, #4
	add	r2, #0xa0
.Lab684:
	ldrb	r3, [r2]
	lsl	r3, #24
	add	r2, #1
	cmp	r3, #0
	bne	.Lab690
	strb	r4, [r1]
.Lab690:
	ldr	r5, [sp, #0x44]
	add	r5, #1
	str	r5, [sp, #0x44]
	ldrb	r3, [r0]
	add	r1, #1
	cmp	r5, r3
	blt	.Lab684
.Lab69e:
	ldr	r7, [sp, #0x30]
	mov	r0, #0
	ldr	r1, [sp, #0x4c]
	ldr	r2, =0x219
	str	r7, [sp, #0x2c]
	str	r0, [sp, #0x44]
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r0, r3
	bge	.Lab746
	add	r5, r1, r2
.Lab6b4:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lab6ca
	add	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_80aa538
	str	r0, [sp, #0x38]
.Lab6ca:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lab6b4
	b	.Lab746
.Lab6d8:
	ldr	r2, [sp, #0x4c]
	add	r5, sp, #0x54
	mov	r1, #0x1c
	ldrsb	r1, [r2, r1]
	mov	r0, r5
	bl	Func_80ae714
	mov	r3, #0
	ldr	r7, [sp, #0x4c]
	ldr	r0, =0x219
	str	r3, [sp, #0x44]
	add	r2, r7, r0
	ldrb	r3, [r2]
	mov	r1, #0
	cmp	r1, r3
	bge	.Lab746
	ldr	r0, [sp, #0x1c]
	mov	r1, r9
	mov	r4, r2
	add	r1, #0xa0
	mov	r2, r0
	mov	r6, #7
.Lab704:
	ldr	r7, [sp, #0x4c]
	mov	r3, #0x1c
	ldrsb	r3, [r7, r3]
	ldr	r7, [sp, #0x44]
	cmp	r7, r3
	bne	.Lab714
	strb	r6, [r2]
	b	.Lab732
.Lab714:
	ldr	r7, [sp, #0x44]
	ldrb	r3, [r5, r7]
	cmp	r3, #0
	beq	.Lab722
	mov	r3, #0
	strb	r3, [r2]
	b	.Lab732
.Lab722:
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	bne	.Lab732
	mov	r3, #7
	strb	r3, [r0]
.Lab732:
	ldr	r3, [sp, #0x44]
	add	r3, #1
	str	r3, [sp, #0x44]
	ldr	r7, [sp, #0x44]
	ldrb	r3, [r4]
	add	r0, #1
	add	r1, #1
	add	r2, #1
	cmp	r7, r3
	blt	.Lab704
.Lab746:
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	bne	.Lab818
	ldr	r1, [sp, #0x4c]
	mov	r2, #0xba
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r6, [r3]
	mov	r1, #0xa
	mov	r0, r6
	bl	__umodsi3
	mov	r1, #0xa
	mov	r5, r0
	mov	r0, r6
	bl	__udivsi3
	lsl	r5, #16
	lsr	r5, #16
	ldr	r3, [sp, #0x4c]
	mov	r2, r0
	lsl	r6, r5, #3
	sub	r6, r5
	lsl	r2, #16
	ldr	r0, [r3, #0x30]
	ldr	r5, [sp, #0x50]
	add	r6, #1
	mov	r3, #0xe
	lsr	r2, #16
	str	r3, [sp, #4]
	add	r2, #2
	mov	r1, r6
	mov	r3, #6
	str	r5, [sp]
	bl	Func_80ab1f4
	ldr	r7, [sp, #0x4c]
	mov	r3, #7
	ldr	r0, [r7, #0x30]
	mov	r1, r6
	str	r3, [sp]
	mov	r2, #2
	mov	r3, #6
	str	r3, [sp, #4]
	bl	Func_80ab2ec
	ldr	r0, =0x219
	add	r3, r7, r0
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bge	.Lab818
	mov	r6, #8
.Lab7b0:
	ldr	r1, [sp, #0x4c]
	mov	r3, #0x1c
	ldrsb	r3, [r1, r3]
	cmp	r5, r3
	bne	.Lab7d2
	mov	r2, #0xbc
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	ldr	r2, .Lab7e4	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.Lab7ce
	ldr	r0, =0xbb0
	b	.Lab7fe
.Lab7ce:
	ldr	r0, =0xbaf
	b	.Lab7fe
.Lab7d2:
	ldr	r3, [sp, #0x1c]
	ldrb	r2, [r3, r5]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lab7fc
	ldr	r0, =0xbae
	b	.Lab7fe

	.align	2, 0
.Lab7e4:
	.word	0x8000
	.pool

.Lab7fc:
	ldr	r0, =0xbb1
.Lab7fe:
	ldr	r7, [sp, #0x4c]
	mov	r2, r6
	mov	r3, #8
	ldr	r1, [r7, #0x30]
	bl	_Func_801e7c0
	ldr	r0, =0x219
	add	r3, r7, r0
	ldrb	r3, [r3]
	add	r5, #1
	add	r6, #0x38
	cmp	r5, r3
	blt	.Lab7b0
.Lab818:
	ldr	r1, [sp, #0x4c]
	mov	r2, #0x86
	lsl	r2, #1
	add	r3, r1, r2
	ldr	r0, [r3]
	bl	_Func_8016498
	ldr	r3, [sp, #0x4c]
	ldr	r2, [r3, #0x14]
	mov	r3, #1
	strb	r3, [r2, #5]
	ldr	r5, [sp, #0x38]
	lsl	r5, #3
	str	r5, [sp, #0x18]
.Lab834:
	ldr	r7, [sp, #0x48]
	cmp	r7, #0
	bne	.Lab83c
	b	.Labc9a
.Lab83c:
	mov	r1, #1
	mov	r0, #0
	neg	r1, r1
	ldr	r3, [sp, #0x1c]
	str	r0, [sp, #0x48]
	str	r1, [sp, #0x3c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #1
	and	r3, r2
	mov	r10, r7
	cmp	r3, #0
	bne	.Lab85a
	ldr	r7, [sp, #0x30]
	str	r7, [sp, #0x3c]
.Lab85a:
	ldr	r1, [sp, #0x38]
	mov	r2, #0x82
	ldr	r0, [sp, #0x4c]
	lsl	r3, r1, #1
	lsl	r2, #2
	add	r3, r2
	ldr	r6, [r0, #0x10]
	ldrh	r0, [r0, r3]
	bl	_GetUnit
	ldr	r7, =0x129
	mov	r5, r0
	mov	r0, r6
	bl	_Func_8016498
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e8b0
	add	r3, r5, r7
	ldrb	r0, [r3]
	ldr	r3, =0x741
	mov	r1, r6
	add	r0, r3
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
	ldr	r0, =.Laf28c
	mov	r1, r6
	mov	r2, #0x30
	mov	r3, #0
	bl	_Func_801e8b0
	ldr	r1, [sp, #0x48]
	ldrb	r0, [r5, #0xf]
	mov	r2, r6
	str	r1, [sp]
	mov	r3, #0x48
	mov	r1, #2
	bl	_Func_801ea08
	ldr	r2, [sp, #0x50]
	cmp	r2, #0
	bne	.Lab8c4
	ldr	r0, =0xba9
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
.Lab8c4:
	mov	r7, #1
	ldr	r3, [sp, #0x3c]
	neg	r7, r7
	cmp	r3, r7
	beq	.Lab8e2
	ldr	r5, [sp, #0x38]
	lsl	r3, r5, #2
	add	r3, r5
	ldr	r0, [sp, #0x3c]
	lsl	r3, #1
	add	r3, r0
	lsl	r3, #1
	mov	r1, r9
	ldrh	r3, [r1, r3]
	str	r3, [sp, #0x28]
.Lab8e2:
	ldr	r2, [sp, #0x4c]
	mov	r3, #0x86
	lsl	r3, #1
	add	r2, r3
	ldr	r0, [r2]
	mov	r8, r2
	bl	_Func_8016498
	ldr	r5, [sp, #0x50]
	cmp	r5, #1
	bne	.Lab980
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x21a
	add	r3, r0, r1
	ldrb	r0, [r3]
	mov	r1, #1
	bl	_Func_8019908
	ldr	r4, =0xbb2
	mov	r2, r8
	mov	r0, r4
	ldr	r1, [r2]
	mov	r3, #0
	mov	r2, #0
	str	r4, [sp, #8]
	bl	_Func_801e7c0
	mov	r5, #0xbc
	ldr	r3, [sp, #0x4c]
	lsl	r5, #1
	add	r6, r3, r5
	ldrh	r2, [r6]
	mov	r5, #0xe0
	mov	r3, r5
	and	r3, r2
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r2
	lsl	r0, #2
	mov	r1, #0x96
	add	r0, r3
	lsl	r1, #1
	add	r0, r1
	mov	r1, #4
	bl	_Func_8019908
	ldrh	r3, [r6]
	and	r5, r3
	ldr	r3, =0x5001
	ldr	r1, [sp, #0x48]
	lsr	r5, #5
	mov	r2, r8
	add	r5, r3
	ldr	r0, [r2]
	mov	r3, #0
	str	r1, [sp]
	mov	r2, #6
	mov	r1, r5
	bl	_Func_8019000
	ldr	r4, [sp, #8]
	mov	r2, r8
	add	r0, r4, #1
	ldr	r1, [r2]
	mov	r3, #0
	mov	r2, #0x38
	bl	_Func_801e7c0
	ldr	r4, [sp, #8]
	mov	r3, r8
	add	r4, #2
	ldr	r1, [r3]
	mov	r0, r4
	mov	r2, #0
	mov	r3, #8
	bl	_Func_801e7c0
.Lab980:
	ldr	r5, [sp, #0x3c]
	cmp	r5, r7
	bne	.Lab994
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	mov	r2, #0xc8
	mov	r3, #0
	bl	Func_80ad5b4
	b	.Labc14
.Lab994:
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	beq	.Lab99c
	b	.Labb7c
.Lab99c:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	beq	.Laba6a
	ldr	r1, [sp, #0x20]
	cmp	r1, #0
	bne	.Lab9b8
	mov	r2, r8
	ldr	r1, [r2]
	ldr	r0, =0xb98
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	b	.Lab9c6
.Lab9b8:
	mov	r3, r8
	ldr	r1, [r3]
	ldr	r0, =0xb99
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.Lab9c6:
	ldr	r5, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	lsr	r6, r3, #8
	ldr	r0, [sp, #0x28]
	mov	r3, #0xe0
	and	r3, r5
	mov	r7, #0x1f
	and	r7, r0
	lsr	r5, r3, #5
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Lab9f8
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Laba32
.Lab9f8:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a1f8
	cmp	r0, #0
	beq	.Laba12
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #1
	bl	Func_80ad608
	b	.Laba1c
.Laba12:
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #2
	bl	Func_80ad608
.Laba1c:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #0
	bl	Func_80ad5b4
	b	.Laba64
.Laba32:
	ldr	r7, [sp, #0x4c]
	mov	r1, #0x86
	lsl	r1, #1
	add	r3, r7, r1
	ldr	r1, [r3]
	ldr	r0, =0xb9e
	mov	r3, #0x10
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r1, r5
	mov	r2, #1
	ldr	r0, [sp, #0x50]
	bl	Func_80ad608
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #1
	bl	Func_80ad5b4
.Laba64:
	mov	r5, r10
	lsr	r3, r5, #1
	b	.Labb3a
.Laba6a:
	ldr	r4, =0xb9a
	mov	r7, r8
	mov	r0, r4
	ldr	r1, [r7]
	mov	r2, #0
	mov	r3, #0
	str	r4, [sp, #8]
	bl	_Func_801e7c0
	mov	r3, #0xf0
	ldr	r0, [sp, #0x28]
	lsl	r3, #4
	and	r3, r0
	lsr	r5, r3, #8
	mov	r3, #0xe0
	and	r3, r0
	mov	r6, #0x1f
	lsr	r7, r3, #5
	and	r6, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, r6
	bl	_Func_807a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Labab0
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	bl	_Func_807a2bc
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labb0a
.Labab0:
	mov	r0, r5
	mov	r1, r7
	mov	r2, r6
	str	r4, [sp, #8]
	bl	_Func_807a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labadc
	mov	r2, r8
	ldr	r1, [r2]
	add	r0, r4, #3
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r0, #0
	mov	r1, r7
	mov	r2, #1
	bl	Func_80ad608
	b	.Labaf4
.Labadc:
	mov	r3, r8
	ldr	r1, [r3]
	add	r0, r4, #2
	mov	r2, #0
	mov	r3, #0x10
	bl	_Func_801e7c0
	mov	r0, #0
	mov	r1, r7
	mov	r2, #2
	bl	Func_80ad608
.Labaf4:
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x38]
	sub	r1, r5, r7
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x3e
	mov	r3, #0
	bl	Func_80ad5b4
	b	.Labb36
.Labb0a:
	mov	r2, r8
	add	r0, r4, #4
	ldr	r1, [r2]
	mov	r3, #0x10
	mov	r2, #0
	bl	_Func_801e7c0
	mov	r1, r7
	mov	r2, #1
	mov	r0, #0
	bl	Func_80ad608
	ldr	r3, [sp, #0x18]
	ldr	r5, [sp, #0x38]
	sub	r1, r3, r5
	lsl	r1, #3
	add	r1, #0x30
	mov	r0, #0
	mov	r2, #0x3e
	mov	r3, #1
	bl	Func_80ad5b4
.Labb36:
	mov	r7, r10
	lsr	r3, r7, #1
.Labb3a:
	cmp	r3, #0
	beq	.Labc14
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	bl	Func_80ad5f4
	b	.Labc14

	.pool_aligned

.Labb7c:
	ldr	r0, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r0
	lsr	r6, r3, #8
	mov	r3, #0xe0
	and	r3, r0
	mov	r7, #0x1f
	and	r7, r0
	lsr	r5, r3, #5
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Labbac
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Labbe6
.Labbac:
	mov	r0, r6
	mov	r1, r5
	mov	r2, r7
	bl	_Func_807a1f8
	cmp	r0, #0
	beq	.Labbc6
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #1
	bl	Func_80ad608
	b	.Labbd0
.Labbc6:
	ldr	r0, [sp, #0x50]
	mov	r1, r5
	mov	r2, #2
	bl	Func_80ad608
.Labbd0:
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	sub	r1, r2, r3
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x36
	mov	r3, #0
	bl	Func_80ad5b4
	b	.Labc04
.Labbe6:
	mov	r1, r5
	mov	r2, #1
	ldr	r0, [sp, #0x50]
	bl	Func_80ad608
	ldr	r5, [sp, #0x18]
	ldr	r7, [sp, #0x38]
	sub	r1, r5, r7
	lsl	r1, #3
	add	r1, #0x30
	ldr	r0, [sp, #0x50]
	mov	r2, #0x36
	mov	r3, #1
	bl	Func_80ad5b4
.Labc04:
	mov	r0, r10
	lsr	r3, r0, #1
	cmp	r3, #0
	beq	.Labc14
	ldr	r0, [sp, #0x50]
	mov	r1, #0
	bl	Func_80ad5f4
.Labc14:
	ldr	r1, [sp, #0x4c]
	ldr	r0, [r1, #0x30]
	bl	_Func_80164ac
	mov	r3, #1
	ldr	r2, [sp, #0x3c]
	neg	r3, r3
	cmp	r2, r3
	beq	.Labc66
	ldr	r5, [sp, #0x4c]
	ldr	r0, =0xbad
	ldr	r1, [r5, #0x30]
	mov	r2, #0
	mov	r3, #0x50
	bl	_Func_801e7c0
	mov	r3, #0x68
	ldr	r0, [r5, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x60
	mov	r3, #0xe0
	bl	_Func_80164d4
	ldr	r7, [sp, #0x28]
	mov	r3, #0xe0
	and	r3, r7
	lsr	r3, #5
	lsl	r0, r3, #2
	add	r0, r3
	mov	r3, #0x1f
	and	r3, r7
	lsl	r0, #2
	add	r0, r3
	ldr	r3, =0x666
	ldr	r1, [r5, #0x30]
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x60
	bl	_Func_801e7c0
.Labc66:
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x38]
	mov	r5, #1
	ldrb	r2, [r0, r1]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Labc90
	ldr	r2, [sp, #0x4c]
	ldr	r3, [sp, #0x18]
	ldr	r0, [r2, #0x30]
	ldr	r2, [sp, #0x30]
	sub	r1, r3, r1
	mov	r3, #0xe
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	str	r5, [sp]
	bl	Func_80ab1f4
.Labc90:
	ldr	r3, =iwram_3001e8c
	ldr	r7, =0xea3
	ldr	r3, [r3]
	add	r3, r7
	strb	r5, [r3]
.Labc9a:
	ldr	r0, [sp, #0x1c]
	ldr	r1, [sp, #0x38]
	ldrb	r2, [r0, r1]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Labcb8
	ldr	r2, [sp, #0x18]
	sub	r0, r2, r1
	lsl	r0, #3
	sub	r0, #8
	mov	r1, #0x34
	bl	Func_80a1a40
	b	.Labccc
.Labcb8:
	ldr	r3, [sp, #0x18]
	ldr	r5, [sp, #0x38]
	ldr	r7, [sp, #0x30]
	sub	r0, r3, r5
	lsl	r0, #3
	lsl	r1, r7, #3
	sub	r0, #8
	add	r1, #0x3c
	bl	Func_80a1a40
.Labccc:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =gKeyHeld
	mov	r2, #0x80
	ldr	r3, [r3]
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Labcea
	ldr	r3, =iwram_3001af8
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Labcfa
.Labcea:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	beq	.Labcf4
	mov	r1, #1
	str	r1, [sp, #0x48]
.Labcf4:
	mov	r2, #0
	str	r2, [sp, #0x24]
	str	r2, [sp, #0x20]
.Labcfa:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r11, r3
	ldr	r3, =gKeyPress
	ldr	r4, [r3]
	ldr	r3, =0x212c
	add	r3, r9
	ldr	r1, [r3]
	cmp	r1, #0
	bne	.Labd10
	b	.Lac1b8
.Labd10:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	mov	r4, #0
	str	r3, [r2]
	sub	r3, r1, #1
	mov	r11, r4
	cmp	r3, #0x1b
	bls	.Labd26
	b	.Lac1b8
.Labd26:
	ldr	r2, =.Labd30
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Labd30:
	.word	.Labe82
	.word	.Labede
	.word	.Labefc
	.word	.Labede
	.word	.Lac1b8
	.word	.Labf1c
	.word	.Labf1c
	.word	.Labede
	.word	.Labede
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Labf78
	.word	.Labf9a
	.word	.Labff8
	.word	.Labf9a
	.word	.Labf9a
	.word	.Lac160
	.word	.Lac1b8
	.word	.Lac160
	.word	.Lac17e
	.word	.Labede
	.word	.Lac1b8
	.word	.Lac19c
	.word	.Lac1b8
	.word	.Lac1b8
	.word	.Labdcc
	.word	.Labda0
.Labda0:
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Labdc6
	mov	r6, r1
	mov	r5, #1
.Labdb0:
	mov	r0, #0x96
	mov	r1, #0x1a
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6]
	and	r3, r5
	cmp	r3, #0
	beq	.Labdb0
.Labdc6:
	mov	r4, #2
	mov	r11, r4
	b	.Lac1b8
.Labdcc:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labdd8
	b	.Lac1b8
.Labdd8:
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc4c
	mov	r1, #9
	bl	_Func_8017658
	ldr	r2, =gState
	mov	r3, #0x83
	lsl	r3, #2
	add	r2, r3
	mov	r5, r0
	mov	r3, #1
	strb	r3, [r2]
	b	.Labdfa
.Labdf4:
	mov	r0, #1
	bl	WaitFrames
.Labdfa:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Labdf4
	mov	r1, #1
	mov	r0, r5
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc4d
	mov	r1, #9
	bl	_Func_8017658
	mov	r7, #0x83
	ldr	r2, =gState
	lsl	r7, #2
	add	r2, r7
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labe38
.Labe32:
	mov	r0, #1
	bl	WaitFrames
.Labe38:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Labe32
	mov	r1, #1
	mov	r0, r5
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	bl	_Func_80bf5a8
	bl	_Func_80bf5a8
	bl	_Func_80bf5a8
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	_Func_807a350
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	_Func_807a458
	mov	r0, #0
	bl	_CalcStats
	mov	r0, #2
	mov	r11, r0
	b	.Lac1b6
.Labe82:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labe8e
	b	.Lac1b8
.Labe8e:
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc40
	str	r4, [sp, #8]
	bl	_Func_8017658
	ldr	r2, =gState
	mov	r1, #0x83
	lsl	r1, #2
	add	r2, r1
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labeb4
.Labeac:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
.Labeb4:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_8017364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labeac
	mov	r0, r5
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #2
	b	.Lac158
.Labede:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	beq	.Labeea
	b	.Lac1b8
.Labeea:
	mov	r3, #1
	mov	r11, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	b	.Lac178
.Labefc:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	beq	.Labf08
	b	.Lac1b8
.Labf08:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r5, #0x10
	add	r2, r9
	mov	r3, #4
	mov	r11, r5
	mov	r4, #0x10
	str	r3, [r2]
	b	.Lac1b8
.Labf1c:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Labf28
	b	.Lac1b8
.Labf28:
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc41
	str	r4, [sp, #8]
	bl	_Func_8017658
	mov	r7, #0x83
	ldr	r2, =gState
	lsl	r7, #2
	add	r2, r7
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r2]
	b	.Labf4e
.Labf46:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
.Labf4e:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_8017364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Labf46
	mov	r0, r5
	mov	r1, #1
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #8
	b	.Lac158
.Labf78:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x28
	beq	.Labf84
	b	.Lac1b8
.Labf84:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	mov	r0, #2
	add	r3, #1
	mov	r11, r0
	mov	r4, #2
	str	r3, [r2]
	b	.Lac1b8
.Labf9a:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x28
	beq	.Labfa6
	b	.Lac1b8
.Labfa6:
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	add	r2, r9
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	b	.Lac1b8

	.pool_aligned

.Labff8:
	ldr	r3, =0x2128
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0x3c
	beq	.Lac004
	b	.Lac1b8
.Lac004:
	ldr	r3, =gState
	mov	r1, #0x83
	lsl	r1, #2
	add	r3, r1
	mov	r2, #1
	strb	r2, [r3]
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc44
	str	r4, [sp, #8]
	bl	_Func_8017658
	mov	r1, #0x92
	mov	r5, r0
	mov	r0, #2
	bl	Func_80a1ac0
	b	.Lac032
.Lac02a:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
.Lac032:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_8017364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac02a
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac06a
	mov	r7, r1
	mov	r6, #1
.Lac050:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac050
.Lac06a:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc45
	bl	_Func_8017658
	mov	r5, r0
	b	.Lac098
.Lac090:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
.Lac098:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_8017364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac090
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac0d0
	mov	r7, r1
	mov	r6, #1
.Lac0b6:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac0b6
.Lac0d0:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #9
	mov	r2, #9
	mov	r3, #1
	ldr	r0, =0xc46
	bl	_Func_8017658
	mov	r5, r0
	b	.Lac0fe
.Lac0f6:
	mov	r0, #1
	str	r4, [sp, #8]
	bl	WaitFrames
.Lac0fe:
	ldr	r4, [sp, #8]
	str	r4, [sp, #8]
	bl	_Func_8017364
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac0f6
	ldr	r1, =gKeyPress
	ldr	r2, [r1]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.Lac136
	mov	r7, r1
	mov	r6, #1
.Lac11c:
	mov	r0, #2
	mov	r1, #0x92
	str	r4, [sp, #8]
	bl	Func_80a1a40
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r7]
	and	r3, r6
	ldr	r4, [sp, #8]
	cmp	r3, #0
	beq	.Lac11c
.Lac136:
	mov	r1, #1
	mov	r0, r5
	str	r4, [sp, #8]
	bl	_CloseUIBox
	mov	r0, r9
	bl	Func_80aafb8
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =0x2128
	mov	r3, #0
	add	r2, r9
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x10
.Lac158:
	add	r2, r9
	str	r3, [r2]
	ldr	r4, [sp, #8]
	b	.Lac1b8
.Lac160:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	bne	.Lac1b8
	mov	r3, #1
	mov	r11, r3
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x15
	add	r2, r9
.Lac178:
	mov	r4, #1
	str	r3, [r2]
	b	.Lac1b8
.Lac17e:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x5a
	bne	.Lac1b8
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r5, #0x20
	add	r2, r9
	mov	r3, #0x16
	mov	r11, r5
	mov	r4, #0x20
	str	r3, [r2]
	b	.Lac1b8
.Lac19c:
	ldr	r2, =0x2128
	add	r2, r9
	ldr	r3, [r2]
	cmp	r3, #0x3c
	bne	.Lac1b8
	mov	r3, #0
	str	r3, [r2]
	ldr	r2, =0x212c
	mov	r3, #0x19
	add	r2, r9
	mov	r7, #2
	str	r3, [r2]
	mov	r11, r7
.Lac1b6:
	mov	r4, #2
.Lac1b8:
	ldr	r0, [sp, #0x50]
	cmp	r0, #0
	beq	.Lac1c0
	b	.Lac304
.Lac1c0:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac1cc
	b	.Lac2ea
.Lac1cc:
	mov	r2, #1
	ldr	r1, [sp, #0x3c]
	neg	r2, r2
	cmp	r1, r2
	bne	.Lac1d8
	b	.Lac33c
.Lac1d8:
	mov	r3, #0
	ldr	r5, [sp, #0x28]
	str	r3, [sp, #0x44]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r5
	ldr	r0, [sp, #0x28]
	lsr	r7, r3, #8
	mov	r3, #0xe0
	and	r3, r5
	mov	r6, #0x1f
	lsr	r5, r3, #5
	and	r6, r0
	mov	r1, r5
	mov	r0, r7
	mov	r2, r6
	str	r4, [sp, #8]
	bl	_Func_807a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Lac214
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	_Func_807a2bc
	ldr	r4, [sp, #8]
	cmp	r0, #0
	beq	.Lac218
.Lac214:
	mov	r1, #1
	str	r1, [sp, #0x44]
.Lac218:
	mov	r2, #1
	str	r2, [sp, #0x24]
	ldr	r2, =iwram_3001af8
	mov	r3, #0
	str	r3, [r2]
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	bne	.Lac25a
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r5, [sp, #0x4c]
	ldr	r0, [r5, #0x30]
	bl	_Func_80164ac
	mov	r3, #0x68
	ldr	r0, [r5, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x50
	mov	r3, #0xd8
	bl	_Func_80164d4
	ldr	r0, =0xbbe
	ldr	r1, [r5, #0x30]
	mov	r2, #0
	mov	r3, #0x60
	bl	_DrawSmallText
	mov	r7, #1
	str	r7, [sp, #0x48]
	bl	.Lab834
.Lac25a:
	ldr	r0, [sp, #0x28]
	lsr	r3, r0, #15
	cmp	r3, #0
	beq	.Lac298
	mov	r0, #0xaf
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r5, #0xf0
	ldr	r1, [sp, #0x28]
	lsl	r5, #4
	mov	r6, #0xe0
	and	r5, r1
	and	r6, r1
	mov	r3, #0x1f
	and	r3, r1
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_807a350
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_807a458
	b	.Lac2cc
.Lac298:
	mov	r0, #0x8b
	str	r4, [sp, #8]
	bl	_PlaySound
	mov	r5, #0xf0
	ldr	r2, [sp, #0x28]
	lsl	r5, #4
	mov	r6, #0xe0
	and	r5, r2
	and	r6, r2
	mov	r3, #0x1f
	and	r3, r2
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_SetDjinni
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_807a3a8
.Lac2cc:
	ldr	r4, [sp, #8]
	ldr	r3, [sp, #0x28]
	mov	r0, #0xf0
	lsl	r0, #4
	and	r0, r3
	lsr	r0, #8
	str	r4, [sp, #8]
	bl	_CalcStats
	mov	r0, r9
	bl	Func_80aafb8
	mov	r5, #1
	str	r5, [sp, #0x48]
	ldr	r4, [sp, #8]
.Lac2ea:
	ldr	r7, [sp, #0x50]
	cmp	r7, #0
	bne	.Lac304
	mov	r3, #0x80
	lsl	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.Lac304
	mov	r0, #0x70
	mov	r5, #7
	bl	_PlaySound
	b	.Lac86a
.Lac304:
	mov	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac320
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	beq	.Lac314
	b	.Lac41e
.Lac314:
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	bne	.Lac320
	b	.Lac41e
.Lac320:
	mov	r1, #1
	ldr	r3, [sp, #0x1c]
	str	r1, [sp, #0x44]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lac3a4
	mov	r0, #1
	ldr	r7, [sp, #0x3c]
	neg	r0, r0
	cmp	r7, r0
	bne	.Lac36c
.Lac33c:
	mov	r0, #0x72
	bl	_PlaySound
	bl	.Lab834

	.pool_aligned

.Lac36c:
	ldr	r2, [sp, #0x28]
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r2
	lsr	r7, r3, #8
	mov	r3, #0xe0
	and	r3, r2
	mov	r5, #0x1f
	mov	r1, #0
	lsr	r6, r3, #5
	and	r5, r2
	str	r1, [sp, #0x44]
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_807a1f8
	cmp	r0, #0
	bne	.Lac3a0
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Lac3a4
.Lac3a0:
	mov	r3, #1
	str	r3, [sp, #0x44]
.Lac3a4:
	ldr	r5, [sp, #0x44]
	cmp	r5, #0
	bne	.Lac3d8
	mov	r0, #0x72
	bl	_PlaySound
	ldr	r7, [sp, #0x4c]
	ldr	r0, [r7, #0x30]
	bl	_Func_80164ac
	mov	r3, #0x68
	ldr	r0, [r7, #0x30]
	mov	r1, #0
	str	r3, [sp]
	mov	r2, #0x50
	mov	r3, #0xd8
	bl	_Func_80164d4
	ldr	r0, =0xbbe
	ldr	r1, [r7, #0x30]
	mov	r2, #0
	mov	r3, #0x60
	bl	_DrawSmallText
	bl	.Lab834
.Lac3d8:
	ldr	r0, [sp, #0x50]
	cmp	r0, #1
	bne	.Lac414
	ldr	r3, [sp, #0x38]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, r0
	and	r3, r2
	mov	r5, #4
	cmp	r3, #0
	beq	.Lac416
	ldr	r5, [sp, #0x4c]
	ldr	r7, [sp, #0x38]
	mov	r3, #0x1c
	ldrsb	r3, [r5, r3]
	cmp	r7, r3
	bne	.Lac410
	mov	r0, #0xbc
	lsl	r0, #1
	add	r3, r5, r0
	ldrh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #8
	and	r3, r2
	mov	r5, #2
	cmp	r3, #0
	bne	.Lac416
	b	.Lac414
.Lac410:
	mov	r5, #3
	b	.Lac416
.Lac414:
	mov	r5, #1
.Lac416:
	mov	r0, #0x70
	bl	_PlaySound
	b	.Lac86a
.Lac41e:
	mov	r3, #8
	and	r3, r4
	cmp	r3, #0
	beq	.Lac42c
	mov	r0, #0x71
	mov	r5, #2
	b	.Lac438
.Lac42c:
	mov	r3, #2
	and	r3, r4
	cmp	r3, #0
	beq	.Lac440
	mov	r0, #0x71
	mov	r5, #1
.Lac438:
	bl	_PlaySound
	neg	r5, r5
	b	.Lac86a
.Lac440:
	ldr	r1, [sp, #0x50]
	cmp	r1, #0
	beq	.Lac448
	b	.Lac5d2
.Lac448:
	mov	r3, #4
	and	r3, r4
	cmp	r3, #0
	bne	.Lac452
	b	.Lac5d2
.Lac452:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0
	bne	.Lac45a
	b	.Lac5aa
.Lac45a:
	ldr	r5, [sp, #0x20]
	mov	r3, #1
	eor	r5, r3
	str	r5, [sp, #0x20]
	cmp	r5, #0
	beq	.Lac46e
	mov	r0, #0x8b
	bl	_PlaySound
	b	.Lac474
.Lac46e:
	mov	r0, #0xaf
	bl	_PlaySound
.Lac474:
	mov	r7, #0
	ldr	r0, [sp, #0x4c]
	ldr	r1, =0x219
	str	r7, [sp, #0x44]
	add	r3, r0, r1
	ldrb	r3, [r3]
	cmp	r7, r3
	blt	.Lac486
	b	.Lac59e
.Lac486:
	mov	r2, #0xa0
	mov	r3, #0
	str	r2, [sp, #0x14]
	str	r3, [sp, #0x10]
.Lac48e:
	mov	r5, #0
	str	r5, [sp, #0x40]
	ldr	r7, [sp, #0x14]
	mov	r0, r9
	ldrsb	r3, [r7, r0]
	cmp	r5, r3
	bge	.Lac57e
	ldr	r1, [sp, #0x10]
	lsl	r3, r1, #1
	add	r3, r9
	mov	r10, r3
.Lac4a4:
	mov	r2, r10
	ldrh	r7, [r2]
	mov	r3, #2
	mov	r0, #0xf0
	lsl	r0, #4
	add	r10, r3
	mov	r3, r7
	and	r3, r0
	lsr	r4, r3, #8
	mov	r5, #0
	mov	r1, #0xe0
	mov	r3, r7
	and	r3, r1
	mov	r2, #0x1f
	mov	r8, r5
	mov	r5, r7
	lsr	r6, r3, #5
	and	r5, r2
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	str	r4, [sp, #8]
	bl	_Func_807a1f8
	ldr	r4, [sp, #8]
	cmp	r0, #0
	bne	.Lac4e8
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	_Func_807a2bc
	cmp	r0, #0
	beq	.Lac4ec
.Lac4e8:
	mov	r3, #1
	mov	r8, r3
.Lac4ec:
	mov	r5, r8
	cmp	r5, #0
	beq	.Lac56e
	ldr	r0, [sp, #0x20]
	cmp	r0, #0
	beq	.Lac534
	lsr	r3, r7, #15
	cmp	r3, #0
	bne	.Lac56e
	mov	r1, #0xf0
	lsl	r1, #4
	mov	r2, #0xe0
	mov	r5, r7
	mov	r6, r7
	and	r5, r1
	and	r6, r2
	mov	r3, #0x1f
	and	r3, r7
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_SetDjinni
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_807a3a8
	mov	r0, r5
	bl	_CalcStats
	b	.Lac56e
.Lac534:
	lsr	r3, r7, #15
	cmp	r3, #0
	beq	.Lac56e
	mov	r3, #0xf0
	lsl	r3, #4
	mov	r0, #0xe0
	mov	r5, r7
	mov	r6, r7
	and	r5, r3
	and	r6, r0
	mov	r3, #0x1f
	and	r3, r7
	lsr	r5, #8
	lsr	r6, #5
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	str	r3, [sp, #0xc]
	bl	_Func_807a350
	ldr	r3, [sp, #0xc]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	bl	_Func_807a458
	mov	r0, r5
	bl	_CalcStats
.Lac56e:
	ldr	r1, [sp, #0x40]
	add	r1, #1
	str	r1, [sp, #0x40]
	ldr	r2, [sp, #0x14]
	mov	r5, r9
	ldrsb	r3, [r2, r5]
	cmp	r1, r3
	blt	.Lac4a4
.Lac57e:
	ldr	r7, [sp, #0x14]
	ldr	r0, [sp, #0x10]
	ldr	r1, [sp, #0x44]
	add	r7, #1
	add	r0, #0xa
	add	r1, #1
	ldr	r2, [sp, #0x4c]
	ldr	r5, =0x219
	str	r7, [sp, #0x14]
	str	r0, [sp, #0x10]
	str	r1, [sp, #0x44]
	add	r3, r2, r5
	ldrb	r3, [r3]
	cmp	r1, r3
	bge	.Lac59e
	b	.Lac48e
.Lac59e:
	mov	r0, r9
	bl	Func_80aafb8
	mov	r7, #1
	str	r7, [sp, #0x48]
	b	.Lac5d2
.Lac5aa:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_80ab1f4
	mov	r0, #0x70
	mov	r5, #0xa
	bl	_PlaySound
	b	.Lac86a
.Lac5d2:
	mov	r3, #0x40
	mov	r5, r11
	and	r3, r5
	cmp	r3, #0
	beq	.Lac682
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	mov	r5, #4
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac5f6
	bl	.Lab834
.Lac5f6:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #0xf
	add	r2, #2
	str	r3, [sp, #4]
	add	r1, #1
	mov	r3, #6
	mov	r6, #1
	str	r6, [sp]
	bl	Func_80ab1f4
	ldr	r0, [sp, #0x38]
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac624
	bl	.Lab834
.Lac624:
	mov	r3, r6
	and	r3, r2
	mov	r1, #1
	cmp	r3, #0
	beq	.Lac63c
	mov	r3, #2
	neg	r3, r3
	and	r3, r2
	mov	r1, #0
	strb	r3, [r7, r0]
	str	r1, [sp, #0x30]
	b	.Lac65c
.Lac63c:
	ldr	r3, [sp, #0x30]
	cmp	r3, #0
	bne	.Lac65c
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lac65c
	mov	r3, r2
	ldr	r5, [sp, #0x1c]
	ldr	r7, [sp, #0x38]
	orr	r3, r1
	mov	r0, #2
	strb	r3, [r5, r7]
	str	r0, [sp, #0x48]
	bl	.Lab834
.Lac65c:
	ldr	r1, [sp, #0x30]
	ldr	r3, [sp, #0x38]
	sub	r1, #1
	str	r1, [sp, #0x30]
	add	r3, #0xa0
	mov	r2, r9
	ldrsb	r1, [r2, r3]
	cmp	r1, #0
	bne	.Lac670
	mov	r1, #1
.Lac670:
	ldr	r0, [sp, #0x30]
	bl	Func_80aa538
	mov	r3, #2
	str	r0, [sp, #0x30]
	str	r0, [sp, #0x2c]
	str	r3, [sp, #0x48]
	bl	.Lab834
.Lac682:
	mov	r3, #0x80
	mov	r5, r11
	and	r3, r5
	cmp	r3, #0
	beq	.Lac738
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	mov	r5, #4
	ldrb	r2, [r7, r0]
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	beq	.Lac6a6
	bl	.Lab834
.Lac6a6:
	ldr	r1, [sp, #0x4c]
	ldr	r2, [sp, #0x18]
	ldr	r3, [sp, #0x38]
	ldr	r0, [r1, #0x30]
	sub	r1, r2, r3
	ldr	r2, [sp, #0x30]
	mov	r3, #0xf
	add	r1, #1
	str	r3, [sp, #4]
	add	r2, #2
	mov	r3, #6
	mov	r6, #1
	str	r6, [sp]
	bl	Func_80ab1f4
	ldr	r7, [sp, #0x30]
	ldr	r3, [sp, #0x38]
	add	r7, #1
	str	r7, [sp, #0x30]
	add	r3, #0xa0
	mov	r0, r9
	ldrsb	r1, [r0, r3]
	cmp	r1, #0
	bne	.Lac6d8
	mov	r1, #1
.Lac6d8:
	ldr	r0, [sp, #0x30]
	bl	Func_80aa538
	ldr	r3, [sp, #0x38]
	str	r0, [sp, #0x30]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, r6
	and	r3, r2
	cmp	r3, #0
	beq	.Lac710
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lac710
	mov	r3, #2
	neg	r3, r3
	ldr	r5, [sp, #0x38]
	and	r3, r2
	mov	r7, #0
	strb	r3, [r1, r5]
	str	r7, [sp, #0x30]
	b	.Lac72c

	.pool_aligned

.Lac710:
	ldr	r0, [sp, #0x30]
	cmp	r0, #0
	bne	.Lac72c
	ldr	r3, [sp, #0x38]
	ldr	r1, [sp, #0x1c]
	ldrb	r2, [r1, r3]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lac72c
	mov	r3, #1
	ldr	r5, [sp, #0x38]
	orr	r3, r2
	strb	r3, [r1, r5]
.Lac72c:
	ldr	r7, [sp, #0x30]
	mov	r0, #2
	str	r7, [sp, #0x2c]
	str	r0, [sp, #0x48]
	bl	.Lab834
.Lac738:
	mov	r3, #0x20
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.Lac7bc
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r3, [sp, #0x1c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	bne	.Lac772
	ldr	r2, [sp, #0x18]
	ldr	r7, [sp, #0x4c]
	sub	r1, r2, r5
	mov	r3, #1
	ldr	r2, [sp, #0x30]
	ldr	r0, [r7, #0x30]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_80ab1f4
.Lac772:
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x4c]
	sub	r3, #1
	ldr	r0, =0x219
	str	r3, [sp, #0x38]
	add	r5, r7, r0
	ldrb	r1, [r5]
	mov	r0, r3
	bl	Func_80aa538
	ldr	r1, [sp, #0x50]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	bne	.Lac842
	mov	r2, #0
	str	r2, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	bge	.Lac842
.Lac798:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lac7ae
	sub	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_80aa538
	str	r0, [sp, #0x38]
.Lac7ae:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lac798
	b	.Lac842
.Lac7bc:
	mov	r3, #0x10
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	bne	.Lac7ca
	bl	.Lab834
.Lac7ca:
	mov	r0, #0x6f
	bl	_PlaySound
	ldr	r3, [sp, #0x1c]
	ldr	r5, [sp, #0x38]
	ldrb	r2, [r3, r5]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	bne	.Lac7fa
	ldr	r2, [sp, #0x18]
	ldr	r7, [sp, #0x4c]
	sub	r1, r2, r5
	mov	r3, #1
	ldr	r2, [sp, #0x30]
	ldr	r0, [r7, #0x30]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	add	r1, #1
	add	r2, #2
	mov	r3, #6
	bl	Func_80ab1f4
.Lac7fa:
	ldr	r3, [sp, #0x38]
	ldr	r7, [sp, #0x4c]
	add	r3, #1
	ldr	r0, =0x219
	str	r3, [sp, #0x38]
	add	r5, r7, r0
	ldrb	r1, [r5]
	mov	r0, r3
	bl	Func_80aa538
	ldr	r1, [sp, #0x50]
	str	r0, [sp, #0x38]
	cmp	r1, #0
	bne	.Lac842
	mov	r2, #0
	str	r2, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	bge	.Lac842
.Lac820:
	ldr	r7, [sp, #0x1c]
	ldr	r0, [sp, #0x38]
	ldrsb	r3, [r7, r0]
	cmp	r3, #4
	bne	.Lac836
	add	r0, #1
	str	r0, [sp, #0x38]
	ldrb	r1, [r5]
	bl	Func_80aa538
	str	r0, [sp, #0x38]
.Lac836:
	ldr	r1, [sp, #0x44]
	add	r1, #1
	str	r1, [sp, #0x44]
	ldrb	r3, [r5]
	cmp	r1, r3
	blt	.Lac820
.Lac842:
	ldr	r2, [sp, #0x2c]
	ldr	r3, [sp, #0x38]
	str	r2, [sp, #0x30]
	add	r3, #0xa0
	mov	r5, r9
	ldrsb	r1, [r5, r3]
	cmp	r1, #0
	bne	.Lac854
	mov	r1, #1
.Lac854:
	ldr	r0, [sp, #0x30]
	bl	Func_80aa538
	str	r0, [sp, #0x30]
	ldr	r0, [sp, #0x38]
	mov	r7, #2
	lsl	r0, #3
	str	r7, [sp, #0x48]
	str	r0, [sp, #0x18]
	bl	.Lab834
.Lac86a:
	ldr	r3, [sp, #0x50]
	add	r1, sp, #0x38
	ldrb	r2, [r1]
	ldr	r1, [sp, #0x4c]
	add	r3, #0x1c
	strb	r2, [r1, r3]
	ldr	r2, [sp, #0x3c]
	mov	r3, #1
	neg	r3, r3
	cmp	r2, r3
	beq	.Lac8cc
	ldr	r2, [sp, #0x38]
	ldr	r7, [sp, #0x34]
	mov	r0, #0xbc
	lsl	r0, #1
	lsl	r3, r2, #2
	add	r1, r7, r0
	add	r3, r2
	ldr	r7, [sp, #0x3c]
	lsl	r3, #1
	add	r3, r7
	lsl	r3, #1
	mov	r0, r9
	ldrh	r2, [r0, r3]
	ldr	r3, [sp, #0x4c]
	strh	r2, [r3, r1]
	ldr	r7, [sp, #0x50]
	mov	r1, #0x95
	lsl	r1, #2
	add	r0, r7, r1
	mov	r3, #0x1f
	ldr	r7, [sp, #0x4c]
	and	r3, r2
	strb	r3, [r7, r0]
	mov	r3, #0xe0
	mov	r1, r7
	and	r3, r2
	add	r1, #2
	lsr	r3, #5
	strb	r3, [r1, r0]
	ldr	r0, [sp, #0x50]
	mov	r3, #0x96
	lsl	r3, #2
	add	r1, r0, r3
	mov	r3, #0xf0
	lsl	r3, #4
	and	r3, r2
	lsr	r3, #8
	strb	r3, [r7, r1]
.Lac8cc:
	ldr	r1, [sp, #0x30]
	ldr	r7, [sp, #0x34]
	mov	r0, #0xba
	lsl	r0, #1
	lsl	r3, r1, #2
	add	r2, r7, r0
	add	r3, r1
	ldr	r7, [sp, #0x38]
	ldr	r0, [sp, #0x4c]
	lsl	r3, #1
	add	r3, r7, r3
	strh	r3, [r0, r2]
	add	sp, #0x6c
	mov	r0, r5
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ab5e4

.thumb_func_start Func_80ac8fc  @ 0x080ac8fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r11, r0
	mov	r0, r5
	sub	sp, #4
	mov	r6, r2
	bl	_GetUnit
	mov	r10, r0
	mov	r0, #1
	neg	r0, r0
	mov	r7, #0
	cmp	r6, r0
	bne	.Lac994
	lsl	r5, #8
	mov	r6, #0x84
	mov	r1, #0
	lsl	r6, #1
	str	r5, [sp]
	mov	r8, r1
	add	r6, r10
	mov	r9, r1
.Lac934:
	mov	r3, r8
	ldr	r2, [r6]
	lsl	r1, r3, #5
	mov	r0, r11
	lsl	r3, r7, #1
	mov	r5, #0
	mov	r14, r9
	mov	r12, r2
	add	r4, r3, r0
.Lac946:
	mov	r2, #1
	lsl	r2, r5
	mov	r3, r12
	and	r3, r2
	cmp	r3, #0
	beq	.Lac960
	mov	r3, r1
	ldr	r2, =0xffff8000
	ldr	r0, [sp]
	orr	r3, r5
	orr	r3, r2
	orr	r3, r0
	b	.Lac976
.Lac960:
	mov	r3, r14
	add	r3, #0xf8
	mov	r0, r10
	ldr	r3, [r0, r3]
	and	r3, r2
	cmp	r3, #0
	beq	.Lac97c
	ldr	r2, [sp]
	mov	r3, r1
	orr	r3, r5
	orr	r3, r2
.Lac976:
	strh	r3, [r4]
	add	r7, #1
	add	r4, #2
.Lac97c:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac946
	mov	r0, #1
	add	r8, r0
	mov	r3, #4
	mov	r1, r8
	add	r6, #4
	add	r9, r3
	cmp	r1, #3
	ble	.Lac934
	b	.Lac9ea
.Lac994:
	mov	r0, #0x84
	lsl	r3, r6, #2
	lsl	r0, #1
	add	r2, r3, r0
	mov	r1, r10
	ldr	r2, [r1, r2]
	lsl	r4, r6, #5
	mov	r12, r2
	mov	r6, r11
	lsl	r2, r7, #1
	add	r0, r2, r6
	ldr	r2, =0xffff8000
	mov	r1, #1
	add	r3, #0xf8
	mov	r5, #0
	mov	r14, r1
	mov	r9, r2
	mov	r8, r3
.Lac9b8:
	mov	r1, r14
	lsl	r1, r5
	mov	r3, r12
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9ce
	mov	r3, r4
	orr	r3, r5
	mov	r6, r9
	orr	r3, r6
	b	.Lac9de
.Lac9ce:
	mov	r2, r10
	mov	r6, r8
	ldr	r3, [r2, r6]
	and	r3, r1
	cmp	r3, #0
	beq	.Lac9e4
	mov	r3, r4
	orr	r3, r5
.Lac9de:
	strh	r3, [r0]
	add	r7, #1
	add	r0, #2
.Lac9e4:
	add	r5, #1
	cmp	r5, #0x13
	ble	.Lac9b8
.Lac9ea:
	mov	r0, r7
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80ac8fc

	.section .text.after_aca04, "ax", %progbits

.thumb_func_start Func_80acab8  @ 0x080acab8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xac
	mov	r9, r0
	mov	r0, r3
	ldr	r5, [sp, #0xcc]
	ldr	r6, [sp, #0xd0]
	str	r1, [sp, #0x40]
	str	r2, [sp, #0x3c]
	str	r3, [sp, #0x38]
	bl	_GetUnit
	ldr	r3, =iwram_3001f2c
	str	r0, [sp, #0x34]
	mov	r1, #0x95
	ldr	r4, [r3]
	lsl	r1, #2
	add	r0, r4, #2
	add	r3, r5, r1
	ldrb	r2, [r0, r3]
	str	r2, [sp, #0x2c]
	ldrb	r3, [r4, r3]
	str	r3, [sp, #0x28]
	mov	r3, #0xbc
	lsl	r3, #1
	mov	r12, r3
	lsl	r5, #1
	add	r5, r12
	mov	r2, #0x80
	mov	r14, r0
	lsl	r2, #8
	ldrh	r0, [r4, r5]
	mov	r3, r2
	and	r3, r0
	lsl	r3, #16
	lsr	r3, #16
	str	r3, [sp, #0x24]
	add	r1, r6, r1
	mov	r0, r14
	ldrb	r0, [r0, r1]
	str	r0, [sp, #0x20]
	ldrb	r1, [r4, r1]
	lsl	r6, #1
	str	r1, [sp, #0x1c]
	add	r6, r12
	ldrh	r3, [r4, r6]
	mov	r5, #0xa6
	and	r2, r3
	lsl	r5, #1
	lsl	r2, #16
	lsr	r2, #16
	mov	r0, r5
	str	r2, [sp, #0x18]
	bl	Func_8004938
	ldr	r3, =Func_8001af8
	ldr	r1, [sp, #0x34]
	str	r0, [sp, #0x30]
	mov	r2, r5
	bl	_call_via_r3
	ldr	r1, [sp, #0xd8]
	cmp	r1, #0
	beq	.Lacb44
	b	.Lacc66
.Lacb44:
	ldr	r2, [sp, #0xd4]
	cmp	r2, #3
	bne	.Lacbd2
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x40]
	mov	r3, #0x34
	ldrsh	r0, [r1, r3]
	lsl	r2, #3
	ldr	r3, [sp, #0x3c]
	mov	r11, r2
	lsl	r7, r3, #3
	mov	r5, r11
	mov	r1, #0x38
	add	r5, #0x50
	add	r1, r7
	str	r1, [sp]
	mov	r10, r1
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	mov	r1, #0x40
	ldr	r3, [sp, #0x34]
	add	r1, r7
	mov	r2, #0x36
	ldrsh	r0, [r3, r2]
	mov	r8, r1
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	sub	r5, #0x20
	mov	r1, r10
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	mov	r1, r8
	mov	r2, #0x3a
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r3, r5
	mov	r1, #3
	mov	r2, r9
	bl	_Func_801ea08
	mov	r6, r11
	ldr	r5, =.Laf290
	add	r6, #0x48
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r10
	bl	_Func_801e8b0
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r8
	bl	_Func_801e8b0
	b	.Lacc0c
.Lacbd2:
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x40]
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	ldr	r2, [sp, #0x3c]
	lsl	r1, #3
	lsl	r7, r2, #3
	mov	r11, r1
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x38
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r5
	mov	r2, r9
	bl	_Func_801ea08
	ldr	r1, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r0, [r1, r3]
	mov	r3, r7
	add	r3, #0x40
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
.Lacc0c:
	ldr	r2, [sp, #0x34]
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x48
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldrh	r0, [r3, #0x3e]
	mov	r3, r7
	add	r3, #0x50
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	add	r3, #0x40
	ldrh	r0, [r3]
	mov	r3, r7
	add	r3, #0x58
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	mov	r2, r7
	add	r3, #0x42
	ldrb	r0, [r3]
	add	r2, #0x60
	mov	r3, r11
	str	r2, [sp]
	add	r3, #0x38
	mov	r1, #2
	mov	r2, r9
	bl	_Func_801ea08
.Lacc66:
	ldr	r0, [sp, #0xd4]
	cmp	r0, #1
	beq	.Lacc9e
	cmp	r0, #1
	bgt	.Lacc76
	cmp	r0, #0
	beq	.Lacc82
	b	.Lacd0a
.Lacc76:
	ldr	r1, [sp, #0xd4]
	cmp	r1, #2
	beq	.Laccb2
	cmp	r1, #4
	beq	.Laccea
	b	.Lacd0a
.Lacc82:
	ldr	r2, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r2
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	bl	_GiveDjinni
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_SetDjinni
	b	.Lacd0a
.Lacc9e:
	ldr	r0, [sp, #0x28]
	mov	r3, #0x1f
	and	r0, r3
	str	r0, [sp, #0x28]
	ldr	r1, [sp, #0x2c]
	ldr	r0, [sp, #0x38]
	ldr	r2, [sp, #0x28]
	bl	_Func_807a350
	b	.Lacd0a
.Laccb2:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0
	beq	.Laccc8
	ldr	r2, [sp, #0x28]
	mov	r3, #0x1f
	and	r2, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x2c]
	str	r2, [sp, #0x28]
	bl	_Func_807a350
.Laccc8:
	ldr	r3, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_GiveDjinni
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_SetDjinni
	b	.Lacd0a
.Laccea:
	ldr	r1, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r1
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_GiveDjinni
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_SetDjinni
.Lacd0a:
	ldr	r0, [sp, #0x38]
	bl	_CalcStats
	ldr	r0, [sp, #0x38]
	bl	_GetUnit
	ldr	r3, [sp, #0xd8]
	str	r0, [sp, #0x34]
	cmp	r3, #0
	bne	.Lacdca
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x3c]
	lsl	r0, #3
	mov	r11, r0
	lsl	r7, r1, #3
	mov	r6, r11
	add	r6, #0x28
	mov	r5, r7
	ldr	r0, [sp, #0x34]
	add	r5, #0x10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	bl	_Func_801e8b0
	mov	r3, r5
	ldr	r0, =.Laf28c
	mov	r1, r9
	mov	r2, r6
	bl	_Func_801e8b0
	ldr	r2, [sp, #0x34]
	mov	r3, r11
	ldrb	r0, [r2, #0xf]
	add	r3, #0x58
	mov	r1, #2
	mov	r2, r9
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r5, =0x8ae
	mov	r3, r7
	mov	r0, r5
	add	r3, #0x38
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #1
	add	r3, #0x40
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #2
	add	r3, #0x48
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #3
	add	r3, #0x50
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #4
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	add	r5, #5
	mov	r3, r7
	add	r3, #0x60
	mov	r0, r5
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	ldr	r1, =0x129
	ldr	r0, [sp, #0x30]
	add	r3, r0, r1
	ldrb	r0, [r3]
	ldr	r3, =0x741
	add	r0, r3
	mov	r3, r7
	add	r3, #0x20
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
.Lacdca:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	beq	.Lacdd2
	b	.Lad062
.Lacdd2:
	ldr	r3, =0x129
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x34]
	add	r6, r0, r3
	add	r5, r1, r3
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	mov	r12, r1
	cmp	r12, r3
	beq	.Lace38
	ldr	r1, [sp, #0x3c]
	ldr	r3, =0x741
	ldrb	r0, [r5]
	ldr	r2, [sp, #0x40]
	add	r0, r3
	lsl	r3, r1, #3
	lsl	r2, #3
	add	r3, #0x30
	mov	r1, r9
	mov	r11, r2
	bl	_Func_801e7c0
	ldr	r3, [sp, #0xd8]
	ldr	r2, [sp, #0x40]
	ldr	r1, =0xf296
	str	r3, [sp]
	add	r2, #2
	mov	r3, #5
	mov	r0, r9
	bl	_Func_8019000
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	b	.Lace3e

	.pool_aligned

.Lace38:
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r11, r0
.Lace3e:
	mov	r12, r1
	ldr	r2, [sp, #0x40]
	cmp	r12, r3
	beq	.Lace48
	add	r2, #5
.Lace48:
	ldr	r1, [sp, #0x3c]
	ldr	r3, [sp, #0x34]
	mov	r0, #0x8e
	mov	r4, #0
	add	r1, #5
	lsl	r0, #1
	mov	r8, r1
	mov	r10, r4
	add	r7, r2, #1
	add	r6, r3, r0
	mov	r5, r2
.Lace5e:
	ldr	r2, =0x5001
	mov	r3, r10
	add	r1, r4, r2
	str	r3, [sp]
	mov	r2, r5
	mov	r0, r9
	mov	r3, r8
	str	r4, [sp, #8]
	bl	_Func_8019000
	ldrb	r1, [r6]
	ldr	r0, =0xf030
	mov	r2, r10
	add	r1, r0
	str	r2, [sp]
	mov	r0, r9
	mov	r2, r7
	mov	r3, r8
	bl	_Func_8019000
	ldr	r4, [sp, #8]
	add	r4, #1
	add	r6, #1
	add	r7, #2
	add	r5, #2
	cmp	r4, #3
	ble	.Lace5e
	ldr	r2, [sp, #0x34]
	mov	r3, #0x46
	mov	r1, #0x38
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	add	r3, r11
	mov	r8, r3
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Laceea
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x38
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x38
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacede
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Laceea
.Lacede:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Laceea:
	ldr	r2, [sp, #0x34]
	mov	r1, #0x3a
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Lacf3a
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x40
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacf2e
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacf3a
.Lacf2e:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacf3a:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	beq	.Lacf84
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x48
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	bls	.Lacf78
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacf84
.Lacf78:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacf84:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	beq	.Lacfce
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x50
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	bls	.Lacfc2
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacfce
.Lacfc2:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacfce:
	ldr	r5, [sp, #0x34]
	ldr	r7, [sp, #0x30]
	add	r5, #0x40
	add	r7, #0x40
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	beq	.Lad018
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r6, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r6, #0x58
	mov	r1, #4
	str	r6, [sp]
	bl	_Func_801ea08
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	bls	.Lad00c
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lad018
.Lad00c:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	bl	Func_80ae9f0
.Lad018:
	ldr	r7, [sp, #0x34]
	ldr	r6, [sp, #0x30]
	add	r7, #0x42
	add	r6, #0x42
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	beq	.Lad062
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x58
	mov	r2, r9
	add	r5, #0x60
	mov	r1, #2
	str	r5, [sp]
	bl	_Func_801ea08
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	bls	.Lad056
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lad062
.Lad056:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lad062:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	bgt	.Lad06a
	b	.Lad212
.Lad06a:
	ldr	r3, [sp, #0xd4]
	mov	r2, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r10, r3
	mov	r0, r10
	mov	r3, #6
	sub	r0, r3, r0
	ldr	r3, [sp, #0xd8]
	mov	r10, r0
	sub	r3, #1
	mov	r1, r10
	mul	r1, r3
	ldr	r0, [sp, #0x30]
	mov	r8, r1
	ldr	r1, [sp, #0x34]
	add	r2, sp, #0x44
	add	r5, sp, #0x4c
	add	r1, #0x58
	add	r3, sp, #0x48
	str	r2, [sp]
	add	r0, #0x58
	mov	r2, r5
	bl	Func_80aae14
	lsl	r0, #24
	str	r0, [sp, #0x10]
	asr	r3, r0, #24
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r2, #0
	mov	r1, #0
	mov	r11, r0
	cmp	r8, r3
	bge	.Lad182
	cmp	r1, r10
	bge	.Lad17c
	mov	r3, #0
	str	r0, [sp, #0x14]
	mov	r0, r8
	str	r3, [sp, #0xc]
	lsl	r3, r0, #1
	add	r7, r3, r5
.Lad0c4:
	ldr	r1, [sp, #0x3c]
	lsl	r6, r2, #24
	asr	r2, r6, #23
	add	r2, r1, r2
	ldrh	r3, [r7]
	ldr	r0, =0x3fff
	lsl	r2, #3
	and	r3, r0
	add	r2, #4
	mov	r0, r9
	mov	r1, r11
	bl	Func_80ae958
	ldrh	r2, [r7]
	ldr	r3, .Lad100	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad0f0
	mov	r0, #4
	bl	_SetTextColor
	b	.Lad11a
.Lad0f0:
	ldr	r3, .Lad104	@ 0x4000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad114
	mov	r0, #2
	bl	_SetTextColor
	b	.Lad11a

	.align	2, 0
.Lad100:
	.word	0x8000
.Lad104:
	.word	0x4000
	.pool

.Lad114:
	mov	r0, #0xf
	bl	_SetTextColor
.Lad11a:
	ldr	r1, [sp, #0x3c]
	asr	r6, #24
	ldrh	r3, [r7]
	lsl	r5, r6, #1
	ldr	r0, =0x3fff
	add	r5, r1, r5
	ldr	r2, [sp, #0x14]
	and	r0, r3
	lsl	r5, #3
	ldr	r3, =0x333
	add	r5, #8
	add	r0, r3
	mov	r1, r9
	add	r2, #0x10
	mov	r3, r5
	bl	_Func_801e7c0
	ldrh	r0, [r7]
	bl	_GetMoveInfo
	ldr	r3, [sp, #0x14]
	ldrb	r0, [r0, #9]
	mov	r1, #2
	mov	r2, r9
	add	r3, #0x58
	str	r5, [sp]
	bl	_Func_801e9d4
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #17
	add	r3, r0, r1
	ldr	r0, [sp, #0x10]
	add	r6, #1
	lsr	r1, r3, #24
	mov	r3, #1
	lsl	r6, #24
	add	r8, r3
	asr	r3, r0, #24
	lsr	r2, r6, #24
	add	r7, #2
	cmp	r8, r3
	bge	.Lad182
	lsl	r3, r1, #24
	str	r3, [sp, #0xc]
	asr	r3, #24
	cmp	r3, r10
	blt	.Lad0c4
	b	.Lad182
.Lad17c:
	ldr	r1, [sp, #0x40]
	lsl	r1, #3
	mov	r11, r1
.Lad182:
	mov	r0, #0xf
	bl	_SetTextColor
	ldr	r3, [sp, #0x3c]
	mov	r2, r11
	lsl	r6, r3, #3
	ldr	r0, =0xaed
	add	r2, #0x58
	mov	r1, r9
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r0, [sp, #0xd4]
	cmp	r0, #3
	beq	.Lad206
	ldr	r3, [sp, #0x48]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lad1be
	mov	r0, #4
	bl	_SetTextColor
	mov	r3, r6
	ldr	r0, =0xba2
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r5, #1
.Lad1be:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.Lad1de
	mov	r0, #2
	bl	_SetTextColor
	ldr	r1, [sp, #0x3c]
	add	r3, r1, r5
	lsl	r3, #3
	ldr	r0, =0xba3
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	add	r5, #1
.Lad1de:
	cmp	r5, #0
	bne	.Lad1f0
	mov	r3, r6
	ldr	r0, =0xba8
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
.Lad1f0:
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, r9
	mov	r1, #0
	mov	r2, #0xb
	mov	r3, #0xd
	bl	_Func_801e41c
.Lad206:
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
.Lad212:
	ldr	r3, [sp, #0xd8]
	cmp	r3, #0
	bne	.Lad228
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x38]
	mov	r1, #0
	ldr	r2, [sp, #0xdc]
	mov	r3, r9
	bl	_Func_801ec6c
.Lad228:
	mov	r2, #0xa6
	ldr	r1, [sp, #0x30]
	ldr	r3, =Func_8001af8
	ldr	r0, [sp, #0x34]
	lsl	r2, #1
	bl	_call_via_r3
	ldr	r0, [sp, #0x30]
	bl	free
	mov	r0, #1
	add	sp, #0xac
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80acab8

	.section .rodata

.Laf28c:
	.incrom 0xaf28c, 0xaf290
.Laf290:
	.incrom 0xaf290, 0xaf294
