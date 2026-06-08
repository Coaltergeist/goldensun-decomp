	.include "macros.inc"

.thumb_func_start Func_80a5534  @ 0x080a5534
	push	{r5, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r5, [r3]
	bl	AllocSpriteSlot
	ldr	r2, =0x392
	add	r3, r5, r2
	strh	r0, [r3]
	ldr	r2, =.Laebcc
	mov	r1, #0x80
	bl	UploadSpriteGFX
	bl	AllocSpriteSlot
	mov	r3, #0xe5
	lsl	r3, #2
	add	r5, r3
	strh	r0, [r5]
	ldr	r2, =.Laeb4c
	mov	r1, #0x80
	bl	UploadSpriteGFX
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a5534

.thumb_func_start Func_80a5578  @ 0x080a5578
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0x86
	mov	r8, r3
	lsl	r2, #2
	mov	r5, r1
	mov	r6, r8
	add	r5, r2
	add	r6, #2
	mov	r10, r0
	ldrb	r0, [r6, r5]
	bl	Func_80a3d6c
	mov	r7, r0
	ldrb	r0, [r6, r5]
	bl	_GetUnit
	ldrb	r3, [r6, r5]
	mov	r2, #0x98
	lsl	r2, #2
	add	r3, r2
	mov	r2, r8
	ldrsb	r6, [r2, r3]
	add	r3, r6, #1
	mov	r11, r0
	cmp	r3, r7
	ble	.La55be
	sub	r6, r7, #1
.La55be:
	mov	r1, #5
	mov	r0, r6
	bl	__divsi3
	mov	r1, #5
	mov	r9, r0
	mov	r0, r6
	bl	__modsi3
	mov	r1, #5
	mov	r8, r0
	mov	r0, r7
	bl	__divsi3
	mov	r1, #5
	mov	r5, r0
	mov	r0, r7
	bl	__modsi3
	cmp	r0, #0
	beq	.La55ea
	add	r5, #1
.La55ea:
	mov	r2, r10
	mov	r3, r11
	str	r3, [r2]
	mov	r3, r9
	str	r3, [r2, #8]
	mov	r3, r8
	str	r5, [r2, #0xc]
	str	r3, [r2, #0x10]
	str	r7, [r2, #0x14]
	str	r6, [r2, #0x18]
	mov	r0, #1
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5578

.thumb_func_start Func_80a5614  @ 0x080a5614
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r8, r2
	ldr	r3, =iwram_3001f2c
	ldr	r2, [r2, #8]
	mov	r1, r8
	ldr	r7, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	ldr	r2, [r1, #0x10]
	add	r3, r2
	str	r3, [r1, #0x18]
	ldr	r0, [r7, #0x2c]
	sub	sp, #8
	bl	_Func_8016498
	mov	r0, #1
	bl	WaitFrames
	mov	r2, r8
	ldr	r3, [r2, #0x18]
	mov	r1, #0xe4
	lsl	r3, #1
	lsl	r1, #1
	add	r3, r1
	ldrh	r2, [r7, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La5664
	ldr	r0, =0x1ff
	ldr	r3, =0x75
	and	r0, r2
	add	r0, r3
	ldr	r1, [r7, #0x2c]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
.La5664:
	mov	r2, #1
	mov	r6, #0
	mov	r10, r2
	mov	r5, #1
.La566c:
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	cmp	r6, r3
	bne	.La5688
	mov	r2, r10
	ldr	r0, [r7, #0x20]
	mov	r3, #0xe
	str	r2, [sp]
	mov	r1, #1
	mov	r2, r5
	str	r3, [sp, #4]
	bl	Func_80a2268
	b	.La569c
.La5688:
	mov	r3, r10
	ldr	r0, [r7, #0x20]
	str	r3, [sp]
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r1, #1
	mov	r2, r5
	mov	r3, #0xe
	bl	Func_80a2268
.La569c:
	add	r6, #1
	add	r5, #2
	cmp	r6, #4
	ble	.La566c
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a5614

.thumb_func_start Func_80a56c8  @ 0x080a56c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r5, r2
	sub	sp, #4
	mov	r6, r0
	mov	r10, r3
	bl	_Func_8016498
	mov	r3, #0xb
	str	r3, [sp]
	mov	r2, #0xb
	mov	r3, #0x10
	mov	r0, r6
	mov	r1, #0
	bl	_Func_801e41c
	ldr	r2, [r5, #8]
	lsl	r3, r2, #2
	add	r7, r3, r2
	ldr	r3, [r5, #0x14]
	sub	r3, r7
	lsl	r3, #24
	lsr	r3, #24
	mov	r8, r3
	cmp	r3, #5
	bls	.La5708
	mov	r2, #5
	mov	r8, r2
.La5708:
	mov	r3, #0x22
	str	r3, [sp]
	mov	r2, r6
	mov	r0, #5
	mov	r1, r7
	mov	r3, #0x74
	bl	Func_80a2324
	mov	r2, #0xf
	ldr	r3, [r5, #8]
	ldr	r1, [r5, #0x14]
	mov	r0, r6
	str	r2, [sp]
	mov	r2, #5
	bl	Func_80a21b0
	mov	r3, r8
	mov	r6, #0
	cmp	r3, #0
	bls	.La5770
	lsl	r3, r7, #1
	mov	r2, #0xe4
	add	r3, r10
	lsl	r2, #1
	ldr	r7, .La5764	@ 0x1ff
	add	r5, r3, r2
.La573c:
	ldrh	r3, [r5]
	mov	r0, r7
	and	r0, r3
	ldr	r3, =0x182
	add	r0, r3
	mov	r3, r10
	ldr	r1, [r3, #0x20]
	lsl	r3, r6, #4
	add	r3, #8
	mov	r2, #0x18
	bl	_Func_801e7c0
	add	r3, r6, #1
	lsl	r3, #24
	lsr	r6, r3, #24
	add	r5, #2
	cmp	r8, r6
	bhi	.La573c
	b	.La5770

	.align	2, 0
.La5764:
	.word	0x1ff
	.pool

.La5770:
	mov	r0, #1
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a56c8

