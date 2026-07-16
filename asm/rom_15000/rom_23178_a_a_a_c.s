	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80289e8  @ 0x080289e8
	push	{r5, r6, lr}
	mov	r6, #0
	mov	r5, #0
	bl	Func_801f77c
	cmp	r0, #0
	bge	.L289fc
	mov	r0, #1
	neg	r0, r0
	b	.L28a96
.L289fc:
	cmp	r0, #0
	bne	.L28a04
	mov	r0, #0
	b	.L28a96
.L28a04:
	cmp	r0, #3
	bne	.L28a0c
	mov	r6, #1
	b	.L28a1e
.L28a0c:
	cmp	r0, #0x67
	bne	.L28a14
	mov	r6, #2
	b	.L28a1e
.L28a14:
	cmp	r0, #0x64
	ble	.L28a1c
	mov	r6, #3
	b	.L28a1e
.L28a1c:
	mov	r5, #1
.L28a1e:
	bl	Func_80284dc
	cmp	r6, #0
	beq	.L28a2a
	cmp	r6, #3
	bne	.L28a30
.L28a2a:
	mov	r0, #0x15
	bl	AddMenuBarOption
.L28a30:
	cmp	r6, #1
	bhi	.L28a3a
	mov	r0, #0x16
	bl	AddMenuBarOption
.L28a3a:
	cmp	r6, #0
	beq	.L28a42
	cmp	r6, #3
	bne	.L28a48
.L28a42:
	mov	r0, #0x17
	bl	AddMenuBarOption
.L28a48:
	mov	r0, #0x18
	bl	AddMenuBarOption
	ldr	r3, =ewram_200200c
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a5e
	mov	r0, #0x1d
	bl	AddMenuBarOption
.L28a5e:
	ldr	r3, =ewram_2002010
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L28a6e
	mov	r0, #0x1e
	bl	AddMenuBarOption
.L28a6e:
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_8028808
	mov	r0, r5
	bl	Func_8028574
	mov	r5, r0
	bl	Func_802851c
	cmp	r5, #0
	blt	.L28a94
	lsl	r3, r6, #1
	add	r3, r6
	ldr	r2, =.L3740f
	lsl	r3, #1
	add	r3, r5, r3
	ldrsb	r5, [r2, r3]
.L28a94:
	mov	r0, r5
.L28a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80289e8

.thumb_func_start Func_8028aa8  @ 0x08028aa8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	sub	sp, #4
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28b70
	strh	r1, [r0]
	mov	r3, #0x50
	ldr	r0, [r6, #0x7c]
	mov	r2, #0x28
	str	r3, [sp]
	mov	r1, #8
	mov	r3, #0x90
	bl	Func_80164d4
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #1
	beq	.L28b2a
	cmp	r3, #1
	bgt	.L28b54
	cmp	r3, #0
	bne	.L28b54
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_801e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_801e7c0
	add	r0, r5, #2
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_801e7c0
	add	r0, r5, #3
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x40
	add	r5, #4
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x48
	bl	Func_801e7c0
	b	.L28b70
.L28b2a:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	bl	Func_801e7c0
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0x12
	mov	r3, #0x30
	add	r5, #2
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x38
	bl	Func_801e7c0
	b	.L28b70
.L28b54:
	ldr	r5, =0xc7b
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x28
	add	r5, #1
	bl	Func_801e7c0
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x12
	mov	r3, #0x30
	bl	Func_801e7c0
.L28b70:
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028aa8

.thumb_func_start Func_8028b80  @ 0x08028b80
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28bf2
	strh	r1, [r0]
	ldr	r0, [r6, #0x7c]
	bl	Func_8016478
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L28bca
	ldr	r5, =0xc71
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #4
	add	r5, #1
	bl	DrawSmallText
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0x10
	bl	DrawSmallText
	b	.L28bf2
.L28bca:
	ldr	r5, =0xc73
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #4
	bl	DrawSmallText
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	DrawSmallText
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x1c
	bl	DrawSmallText
.L28bf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028b80

.thumb_func_start DataTransferMenu  @ 0x08028c04
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r10, r0
	sub	sp, #4
	bl	Func_80284dc
	ldr	r3, =iwram_3001f38
	ldr	r7, [r3]
	mov	r3, r10
	cmp	r3, #0
	bne	.L28c2c
	mov	r0, #0x2c
	bl	AddMenuBarOption
	mov	r0, #0x2d
	bl	AddMenuBarOption
	b	.L28c3e
.L28c2c:
	mov	r0, #0x2e
	bl	AddMenuBarOption
	mov	r0, #0x2f
	bl	AddMenuBarOption
	mov	r0, #0x30
	bl	AddMenuBarOption
.L28c3e:
	mov	r0, #0x11
	mov	r1, #7
	mov	r2, #0
	bl	Func_8028808
	mov	r3, r10
	cmp	r3, #0
	beq	.L28cbc
	ldr	r1, =0xc76
	ldr	r0, =Func_8028aa8
	bl	StartTask
	ldr	r3, =0xffff
	mov	r2, r7
	add	r2, #0x96
	strh	r3, [r2]
	mov	r6, #2
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #4
	mov	r0, #7
	str	r6, [sp]
	bl	CreateUIBox
	ldr	r5, =0xc77
	mov	r3, #0x80
	mov	r1, r0
	add	r3, r7
	str	r1, [r3]
	mov	r0, r5
	mov	r2, #0
	mov	r8, r3
	mov	r3, #4
	bl	DrawSmallText
	mov	r1, #4
	mov	r2, #0x19
	mov	r3, #0xc
	mov	r0, #3
	str	r6, [sp]
	bl	CreateUIBox
	mov	r1, r0
	str	r1, [r7, #0x7c]
	add	r0, r5, #1
	mov	r2, #8
	mov	r3, #0
	bl	DrawSmallText
	add	r0, r5, #2
	ldr	r1, [r7, #0x7c]
	mov	r2, #8
	mov	r3, #0xb
	add	r5, #3
	bl	DrawSmallText
	ldr	r1, [r7, #0x7c]
	mov	r0, r5
	mov	r2, #8
	mov	r3, #0x16
	bl	DrawSmallText
	b	.L28d00
.L28cbc:
	ldr	r1, =0xc76
	ldr	r0, =Func_8028b80
	bl	StartTask
	ldr	r3, =0xffff
	mov	r2, r7
	add	r2, #0x96
	strh	r3, [r2]
	mov	r5, #2
	mov	r1, #0
	mov	r2, #0x12
	mov	r3, #4
	mov	r0, #6
	str	r5, [sp]
	bl	CreateUIBox
	mov	r3, #0x80
	mov	r1, r0
	add	r3, r7
	str	r1, [r3]
	ldr	r0, .L28d70	@ 0xc76
	mov	r2, #2
	mov	r8, r3
	mov	r3, #4
	bl	DrawSmallText
	mov	r0, #1
	mov	r1, #5
	mov	r2, #0x1c
	mov	r3, #7
	str	r5, [sp]
	bl	CreateUIBox
	str	r0, [r7, #0x7c]
.L28d00:
	mov	r0, #0
	bl	Func_8028574
	mov	r3, r10
	mov	r5, r0
	cmp	r3, #0
	beq	.L28d16
	ldr	r0, =Func_8028aa8
	bl	StopTask
	b	.L28d1c
.L28d16:
	ldr	r0, =Func_8028b80
	bl	StopTask
.L28d1c:
	mov	r3, r8
	ldr	r0, [r3]
	bl	Func_8016478
	ldr	r0, [r7, #0x7c]
	bl	Func_8016478
	mov	r3, r8
	ldr	r0, [r3]
	mov	r1, #2
	bl	CloseUIBox
	mov	r1, #2
	ldr	r0, [r7, #0x7c]
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	bl	Func_802851c
	mov	r0, r5
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1

	.pool_aligned
.L28d70:
	.word	0xc76
.func_end DataTransferMenu

