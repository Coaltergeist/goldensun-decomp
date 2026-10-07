	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_802106c  @ 0x0802106c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r2, #1
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r3, #7
	mov	r10, r2
	mov	r0, #7
	mov	r2, #0x12
	bl	CreateUIBox
	ldr	r5, =0x2080
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0
	bl	Func_801e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x10
	add	r5, #2
	bl	Func_801e7c0
	mov	r0, r5
	mov	r1, r6
	mov	r2, #8
	mov	r3, #0x20
	bl	Func_801e7c0
	bl	AllocSpriteSlot
	mov	r7, #0
	str	r0, [sp, #8]
	cmp	r0, #0x5f
	bgt	.L2110c
	ldr	r2, =Data_310a4
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, #0x80
	lsl	r1, #23
	mov	r2, r6
	mov	r3, #0
	ldr	r0, [sp, #8]
	str	r7, [sp]
	bl	Func_801eadc
	add	r3, sp, #0xc
	str	r0, [r3]
	ldrh	r1, [r6, #0xc]
	ldrh	r2, [r6, #0xe]
	mov	r8, r3
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #3
	add	r2, #9
	mov	r0, r8
	bl	_Func_80b0a20
	b	.L21110
.L210f8:
	mov	r0, #0x71
	mov	r7, #1
	bl	_PlaySound
	neg	r7, r7
	b	.L211fa

	.pool_aligned

.L2110c:
	add	r2, sp, #0xc
	mov	r8, r2
.L21110:
	ldr	r4, =0x50001c0
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	mov	r1, r4
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, .L2112c	@ 0x6318
	ldr	r2, =gKeyRepeat
	strh	r3, [r4, #8]
	mov	r3, #1
	mov	r11, r3
	mov	r9, r2
	b	.L21144

	.align	2, 0
.L2112c:
	.word	0x6318
	.pool

.L21144:
	lsl	r5, r7, #1
	mov	r3, r11
	str	r3, [sp]
	mov	r1, #1
	mov	r3, #0xe
	mov	r2, r5
	mov	r0, r6
	str	r3, [sp, #4]
	bl	Func_8020a60
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r11
	mov	r3, #0xf
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, r6
	mov	r3, #0xe
	mov	r1, #1
	mov	r2, r5
	bl	Func_8020a60
	mov	r3, r10
	cmp	r3, #0
	beq	.L21192
	mov	r2, #0
	mov	r10, r2
	ldrh	r2, [r6, #0xe]
	ldrh	r1, [r6, #0xc]
	add	r2, r5
	lsl	r1, #3
	lsl	r2, #3
	sub	r1, #3
	add	r2, #9
	mov	r0, r8
	mov	r3, #3
	bl	_Func_80b09fc
.L21192:
	mov	r0, r8
	bl	_Func_80b08b8
	mov	r1, r9
	ldr	r3, [r1]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.L211bc
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r2, #1
	mov	r3, #1
	sub	r7, #1
	neg	r2, r2
	mov	r10, r3
	cmp	r7, r2
	bne	.L211ba
	mov	r7, #2
.L211ba:
	ldr	r1, =gKeyRepeat
.L211bc:
	mov	r2, r9
	ldr	r3, [r2]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L211dc
	mov	r0, #0x6f
	bl	_PlaySound
	add	r7, #1
	mov	r3, #1
	mov	r10, r3
	cmp	r7, #3
	bne	.L211da
	mov	r7, #0
.L211da:
	ldr	r1, =gKeyRepeat
.L211dc:
	mov	r2, r9
	ldr	r3, [r2]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L211ea
	b	.L210f8
.L211ea:
	ldr	r3, [r1]
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L21144
	mov	r0, #0x70
	bl	_PlaySound
.L211fa:
	mov	r1, #2
	mov	r0, r6
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	ldr	r0, [sp, #8]
	bl	Func_8003f3c
	mov	r0, r7
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_802106c
