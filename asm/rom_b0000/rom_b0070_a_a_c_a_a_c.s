	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b0278  @ 0x080b0278
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r1
	mov	r1, #0
	mov	r8, r0
	sub	sp, #4
	mov	r10, r1
	bl	Func_80b26c8
	cmp	r8, r0
	bge	.Lb029a
	mov	r2, r8
	cmp	r2, #0
	bge	.Lb029e
.Lb029a:
	mov	r3, #0
	mov	r8, r3
.Lb029e:
	mov	r0, r8
	bl	Func_80b26cc
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	mov	r0, r8
	ldr	r7, [r3]
	bl	Func_80b2764
	ldr	r1, =0x3a9
	mov	r2, r8
	add	r3, r7, r1
	strb	r0, [r3]
	cmp	r2, #0x10
	bne	.Lb02c8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02c8:
	mov	r1, r8
	cmp	r1, #0x11
	bne	.Lb02d8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02d8:
	mov	r1, r8
	cmp	r1, #0x12
	bne	.Lb02e8
	mov	r3, #0xeb
	lsl	r3, #2
	add	r2, r7, r3
	mov	r3, #1
	strb	r3, [r2]
.Lb02e8:
	mov	r0, r5
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0xe9
	ldrh	r2, [r3]
	lsl	r1, #2
	add	r3, r7, r1
	strh	r2, [r3]
	mov	r1, #0
	ldrh	r0, [r3]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r9, r0
	cmp	r0, #0
	bne	.Lb0322
	mov	r3, #2
	mov	r0, #5
	str	r3, [sp]
	neg	r0, r0
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	bl	_CreateUIBox
	mov	r9, r0
.Lb0322:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	lsl	r1, #23
	mov	r3, #0
	mov	r2, r9
	str	r3, [sp]
	bl	_Func_801eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	ldr	r3, .Lb0374	@ 0
	strb	r3, [r5, #4]
	mov	r3, #0xe0
	lsl	r3, #2
	add	r6, r7, r3
	mov	r1, #0x20
	mov	r0, r6
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	str	r5, [r6]
	ldr	r0, =0xc9b
	bl	Func_80b04dc
.Lb035c:
	mov	r0, r10
	bl	_ShopMenu
	ldr	r1, =0x3aa
	mov	r10, r0
	add	r3, r7, r1
	mov	r2, r10
	strb	r2, [r3]
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb039e
	b	.Lb0388

	.align	2, 0
.Lb0374:
	.word	0
	.pool

.Lb0388:
	mov	r2, #0x9b
	lsl	r2, #2
	add	r1, r7, r2
	mov	r0, r8
	bl	Func_80b2720
	ldr	r1, =0x3a6
	add	r3, r7, r1
	strb	r0, [r3]
	ldr	r0, =0xca7
	b	.Lb03c0
.Lb039e:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lb03b0
	ldr	r0, =0xca9
	bl	Func_80b04dc
	bl	Func_80b1a14
	b	.Lb03e8
.Lb03b0:
	mov	r3, r10
	cmp	r3, #2
	bne	.Lb03d8
	bl	Func_80b0070
	cmp	r0, #0
	beq	.Lb03ca
	ldr	r0, =0xcb8
.Lb03c0:
	bl	Func_80b04dc
	bl	Func_80b0aac
	b	.Lb03e8
.Lb03ca:
	ldr	r0, =0xcb7
	bl	Func_80b04dc
	mov	r0, #1
	bl	WaitFrames
	b	.Lb03e8
.Lb03d8:
	mov	r1, r10
	cmp	r1, #3
	bne	.Lb0400
	ldr	r0, =0xcb9
	bl	Func_80b04dc
	bl	Func_80b2110
.Lb03e8:
	mov	r2, #0xe0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	ldr	r0, =0xca4
	bl	Func_80b04dc
	b	.Lb035c
.Lb0400:
	ldr	r0, =0xca5
	bl	Func_80b04dc
	mov	r0, r9
	mov	r1, #2
	bl	_CloseUIBox
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0278

.thumb_func_start Debug_TestEquipAndStatus  @ 0x080b0444
	push	{r5, r6, lr}
	ldr	r3, =gState
	ldr	r2, =0x30d40
	str	r2, [r3, #0x10]
	mov	r2, #0x8e
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x1c
	strb	r2, [r3]
	ldr	r1, =0x48d
	mov	r0, #1
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #1
	bl	_EquipItem
	ldr	r1, =0x40b
	mov	r0, #0
	bl	_GiveItemTo
	mov	r1, r0
	mov	r0, #0
	bl	_EquipItem
	mov	r1, #0xe7
	mov	r0, #2
	bl	_GiveItemTo
	mov	r0, #3
	bl	_GetUnit
	ldr	r6, =0x131
	mov	r5, #1
	strb	r5, [r0, r6]
	mov	r0, #5
	bl	_GetUnit
	strb	r5, [r0, r6]
	mov	r0, #2
	bl	_GetUnit
	mov	r3, #0xa0
	lsl	r3, #1
	add	r0, r3
	strb	r5, [r0]
	mov	r1, #0x1e
	mov	r0, #1
	bl	Func_80b0278
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Debug_TestEquipAndStatus

