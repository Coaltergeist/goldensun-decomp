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

