	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start UI_Sanctum  @ 0x080b29a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	sub	sp, #8
	mov	r8, r1
	mov	r5, r0
	mov	r10, r1
	bl	Func_80b010c
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r7, [r3]
	mov	r1, r8
	add	r3, r7, r2
	strb	r1, [r3]
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
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r0, #5
	neg	r0, r0
	mov	r5, #2
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r8, r0
	cmp	r0, #0
	bne	.Lb2a2c
	mov	r1, #0
	mov	r2, #5
	mov	r3, #5
	mov	r0, #0
	str	r5, [sp]
	bl	_CreateUIBox
	mov	r3, #4
	neg	r3, r3
	mov	r8, r0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	mov	r3, r8
	bl	_Func_801ec6c
.Lb2a2c:
	mov	r2, #0xe4
	lsl	r2, #2
	add	r3, r7, r2
	mov	r1, #0x80
	ldrh	r0, [r3]
	mov	r6, #0
	lsl	r1, #23
	mov	r2, r8
	mov	r3, #0
	str	r6, [sp]
	bl	_Func_801eadc
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r5, #5]
	mov	r3, #0xe0
	lsl	r3, #2
	strb	r6, [r5, #4]
	mov	r1, #0x20
	add	r6, r7, r3
	neg	r1, r1
	mov	r0, r6
	mov	r2, #0x70
	bl	Func_80b0a20
	str	r5, [r6]
	ldr	r0, =0xd21
	bl	Func_80b28d4
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x10
	bl	_CreateUIBox
	str	r0, [r7, #0xc]
	bl	Func_80b10cc
	ldr	r1, =0x3aa
	add	r6, r7, r1
	b	.Lb2ab8
.Lb2a82:
	ldr	r5, =0xd24
	mov	r0, r5
	bl	Func_80b28d4
	bl	Func_80b280c
	cmp	r0, #0
	bne	.Lb2a9a
	add	r0, r5, #1
	bl	Func_80b28d4
	b	.Lb2a9e
.Lb2a9a:
	bl	Func_80b2b10
.Lb2a9e:
	mov	r2, #0xe0
	mov	r3, #0
	lsl	r2, #2
	mov	r1, #0x20
	add	r0, r7, r2
	strb	r3, [r6]
	neg	r1, r1
	mov	r2, #0x70
	bl	Func_80b0a20
	ldr	r0, =0xd22
	bl	Func_80b28d4
.Lb2ab8:
	mov	r0, r10
	bl	_SanctumMenu
	mov	r1, #1
	mov	r10, r0
	mov	r3, r10
	neg	r1, r1
	strb	r3, [r6]
	cmp	r10, r1
	bne	.Lb2a82
	ldr	r0, =0xd23
	bl	Func_80b28d4
	ldr	r0, [r7, #0xc]
	mov	r1, #2
	bl	_CloseUIBox
	mov	r0, r8
	mov	r1, #2
	bl	_CloseUIBox
	bl	Func_80b0204
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end UI_Sanctum

