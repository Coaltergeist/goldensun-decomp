	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b04dc  @ 0x080b04dc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe9
	ldr	r6, [r3]
	lsl	r2, #2
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	mov	r7, r0
	bl	_Func_8019a54
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	cmp	r1, #2
	bne	.Lb050a
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb050a:
	cmp	r1, #0
	bne	.Lb0516
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb0516:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb052e
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb052e:
	lsl	r3, r7, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb0546
.Lb0540:
	mov	r0, #1
	bl	WaitFrames
.Lb0546:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb0540
	mov	r0, #1
	bl	WaitFrames
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b04dc

.thumb_func_start Func_80b0574  @ 0x080b0574
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xe0
	ldr	r6, [r3]
	lsl	r2, #2
	add	r7, r6, r2
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]
	add	r2, #0x24
	mov	r10, r3
	add	r3, r6, r2
	mov	r5, r0
	ldrh	r0, [r3]
	bl	_GetSpriteVoice
	ldr	r2, =0x3a9
	add	r3, r6, r2
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	mov	r8, r0
	cmp	r1, #2
	bne	.Lb05ae
	ldr	r3, =0xcc6
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ae:
	cmp	r1, #0
	bne	.Lb05ba
	ldr	r3, =0xcf1
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05ba:
	mov	r2, #0xeb
	lsl	r2, #2
	add	r3, r6, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lb05d2
	ldr	r3, =0xd4c
	ldr	r2, =0xc9b
	sub	r3, r2
	add	r5, r3
.Lb05d2:
	ldr	r2, [r7]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	bl	_Func_8019a54
	mov	r2, r8
	lsl	r3, r2, #16
	mov	r2, #0x22
	orr	r3, r2
	mov	r0, r5
	mov	r1, #5
	mov	r2, #0
	bl	_Func_8017658
	b	.Lb05f6
.Lb05f0:
	mov	r0, #1
	bl	WaitFrames
.Lb05f6:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lb05f0
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xe0
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r2, r10
	strb	r2, [r3, #5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b0574

.thumb_func_start Func_80b0634  @ 0x080b0634
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_80a17c4
	mov	r2, r7
	mov	r1, #5
	mov	r0, #7
	bl	_YesNoMenu2
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0634

.thumb_func_start Func_80b0664  @ 0x080b0664
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r5, r3
	mov	r7, r0
	ldr	r0, [r5]
	ldrb	r6, [r0, #5]
	bl	_Func_80a17c4
	mov	r2, r7
	mov	r1, #7
	mov	r0, #7
	bl	_YesNoMenu2
	ldr	r3, [r5]
	mov	r7, r0
	strb	r6, [r3, #5]
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0664

.thumb_func_start Func_80b0694  @ 0x080b0694
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.Lb06b6
	add	r3, r0, r4
	ldrh	r0, [r3]
.Lb06ae:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.Lb06ae
.Lb06b6:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_80b0694

.thumb_func_start Func_80b06c0  @ 0x080b06c0
	push	{lr}
	lsl	r3, r1, #4
	add	r1, r3, #1
	cmp	r0, #0
	ble	.Lb06e4
	ldr	r4, =.Lb4100
.Lb06cc:
	ldrh	r3, [r4]
	sub	r0, #1
	add	r3, r2, r3
	add	r4, #2
	strb	r1, [r3, #4]
	strb	r1, [r3, #8]
	strb	r1, [r3, #0xc]
	strb	r1, [r3, #0x10]
	strb	r1, [r3, #0x14]
	strb	r1, [r3, #0x18]
	cmp	r0, #0
	bne	.Lb06cc
.Lb06e4:
	pop	{r0}
	bx	r0
.func_end Func_80b06c0

.thumb_func_start Func_80b06ec  @ 0x080b06ec
	push	{lr}
	ldr	r3, =.Lb3d40
	lsl	r0, #5
	add	r0, r3
	ldr	r3, =.Lb413c
	lsl	r2, #1
	ldrh	r3, [r3, r2]
	add	r1, r3
	add	r1, #2
	mov	r4, #3
.Lb0700:
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #1]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1e]
	add	r0, #1
	ldrb	r2, [r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.Lb0730
	strb	r2, [r1, #0x1f]
	add	r0, #1
.Lb0730:
	sub	r4, #1
	add	r1, #4
	cmp	r4, #0
	bge	.Lb0700
	pop	{r0}
	bx	r0
.func_end Func_80b06ec

.thumb_func_start Func_80b0744  @ 0x080b0744
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0xe
	mov	r10, r2
	mov	r7, r3
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r6, r0
	mov	r9, r3
	ldr	r0, =.Lb3e80
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #0
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #1
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #2
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #3
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	cmp	r0, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #4
	bl	Func_80b06ec
.Lb07f2:
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0x60
	beq	.Lb0816
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r6
	bl	UploadSpriteGFX
	ldr	r1, =0x80008000
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r9, r0
.Lb0816:
	mov	r0, #0xe
	bl	gfree
	mov	r0, r9
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0744

.thumb_func_start Func_80b0840  @ 0x080b0840
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r5, [r3, #0x14]
	lsl	r2, #4
	ldr	r1, [r3]
	add	r4, r5, r2
	ldr	r2, =0x236
	mov	r6, r0
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	ldr	r2, =0x84000150
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #2
	add	r1, r5, r2
	mov	r0, r4
	ldr	r2, =0x840002a0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8091200
	mov	r0, #0x10
	bl	_Func_8091254
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b0840

