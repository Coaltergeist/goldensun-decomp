	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b3284  @ 0x080b3284
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r1
	sub	sp, #4
	mov	r6, r0
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r1, =0x3a9
	ldr	r5, [r3]
	mov	r2, #1
	add	r3, r5, r1
	strb	r2, [r3]
	cmp	r6, #5
	bne	.Lb32ae
	add	r1, #3
	add	r3, r5, r1
	strb	r2, [r3]
.Lb32ae:
	mov	r0, r9
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0xe9
	ldrh	r3, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	strh	r3, [r7]
	mov	r2, #0
	mov	r3, #0
	mov	r1, #0
	ldrh	r0, [r7]
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r6
	bl	Func_80b3210
	mov	r1, #5
	mov	r6, r0
	bl	_Func_8019908
	ldr	r3, =0xd1c
	mov	r10, r3
	mov	r0, r10
	bl	Func_80b04dc
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0x10
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0
	bl	_CreateUIBox
	str	r0, [r5, #0xc]
	bl	Func_80b10cc
	mov	r0, #0
	bl	Func_80b0634
	cmp	r0, #0
	beq	.Lb330e
	mov	r0, r10
	add	r0, #3
	b	.Lb331a
.Lb330e:
	ldr	r3, =gState
	ldr	r3, [r3, #0x10]
	cmp	r6, r3
	bls	.Lb3328
	mov	r0, r10
	add	r0, #2
.Lb331a:
	bl	Func_80b04dc
	ldr	r0, [r5, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	b	.Lb336a
.Lb3328:
	mov	r1, #2
	ldr	r0, [r5, #0xc]
	bl	_CloseUIBox
	mov	r0, r10
	add	r0, #1
	bl	Func_80b04dc
	mov	r1, #2
	mov	r0, r8
	bl	_CloseUIBox
	mov	r0, r6
	bl	InnHeal
	mov	r0, r9
	bl	_MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r3, [r3, #0x28]
	ldrh	r3, [r3]
	strh	r3, [r7]
	mov	r1, #0
	ldrh	r0, [r7]
	mov	r2, #0
	mov	r3, #0
	bl	_Func_8019da8
	mov	r8, r0
	mov	r0, r10
	add	r0, #4
	bl	Func_80b04dc
.Lb336a:
	mov	r0, r8
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
.func_end Func_80b3284

