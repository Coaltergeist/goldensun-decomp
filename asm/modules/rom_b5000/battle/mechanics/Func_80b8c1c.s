	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8c1c  @ 0x080b8c1c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f00
	mov	r5, r0
	ldr	r2, [r3]
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	sub	sp, #0x5c
	ldr	r1, =0xffffe000
	cmp	r3, #4
	bgt	.Lb8c3a
	mov	r1, #0x80
	lsl	r1, #6
.Lb8c3a:
	ldr	r3, [r2]
	cmp	r3, r1
	bne	.Lb8c4c
	mov	r3, #0x28
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	WaitFrames
	b	.Lb8c58
.Lb8c4c:
	mov	r3, #0x28
	str	r1, [r2]
	str	r3, [r2, #4]
	mov	r0, #0x28
	bl	WaitFrames
.Lb8c58:
	mov	r2, #8
	ldrsh	r3, [r5, r2]
	add	r6, sp, #8
	str	r3, [r6]
	mov	r1, #0xc
	ldrsh	r3, [r5, r1]
	mov	r2, #0
	ldrsh	r0, [r5, r2]
	str	r3, [r6, #0x10]
	mov	r1, #0xa
	ldrsh	r3, [r5, r1]
	str	r0, [r6, #8]
	str	r3, [r6, #0xc]
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8c80
	mov	r0, #1
	neg	r0, r0
	b	.Lb8d9c
.Lb8c80:
	ldr	r3, [r6, #0xc]
	cmp	r3, #0x7f
	ble	.Lb8c8c
	add	r7, sp, #0x2c
	mov	r0, #2
	b	.Lb8c90
.Lb8c8c:
	add	r7, sp, #0x2c
	mov	r0, #1
.Lb8c90:
	mov	r1, r7
	bl	Func_80b6b40
	str	r0, [r6, #0x14]
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	mov	r3, #2
	neg	r3, r3
	and	r0, r3
	bl	_Func_801f200
	ldr	r0, [r6, #8]
	bl	GetBattleActor
	ldr	r0, [r0]
	mov	r1, #3
	mov	r10, r0
	bl	_Actor_SetAnim
	mov	r0, r10
	mov	r1, #0x10
	bl	_Actor_SetAnimSpeed
	ldrh	r3, [r5, #0xa]
	cmp	r3, #7
	bhi	.Lb8cda
	mov	r2, #1
	mov	r8, r2
	str	r2, [r6, #4]
	mov	r0, #1
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, r8
	b	.Lb8ce8
.Lb8cda:
	mov	r3, #0
	str	r3, [r6, #4]
	mov	r0, #2
	mov	r1, r7
	bl	Func_80b6b40
	mov	r3, #1
.Lb8ce8:
	str	r3, [r6, #0x14]
	ldr	r3, [r6, #0x14]
	mov	r7, #0
	mov	r2, r6
	cmp	r3, #0
	beq	.Lb8d36
	mov	r5, #0
.Lb8cf6:
	lsl	r3, r7, #1
	add	r3, #0x24
	ldrsh	r0, [r2, r3]
	bl	GetBattleActor
	ldr	r3, [r0]
	ldr	r1, [r3, #0x50]
	mov	r3, r1
	add	r3, #0x27
	ldrb	r3, [r3]
	sub	r3, #1
	mov	r0, #0
	cmp	r3, #0
	beq	.Lb8d2a
	mov	r12, r3
	add	r3, r5, r6
	mov	r2, r3
	add	r2, #0x34
	add	r1, #0x28
.Lb8d1c:
	ldmia	r1!, {r3}
	ldrb	r3, [r3, #5]
	add	r0, #1
	strb	r3, [r2]
	add	r2, #1
	cmp	r0, r12
	bne	.Lb8d1c
.Lb8d2a:
	ldr	r3, [r6, #0x14]
	add	r7, #1
	add	r5, #4
	mov	r2, r6
	cmp	r7, r3
	bne	.Lb8cf6
.Lb8d36:
	mov	r7, #0
	mov	r0, r6
	str	r7, [r6]
	str	r7, [r6, #0x18]
	bl	_Anim_EPowerUp
	mov	r3, #1
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r3, #2
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r3, #3
	str	r3, [r6]
	mov	r0, r6
	bl	_Anim_EPowerUp
	mov	r0, r6
	str	r7, [r6]
	bl	_Anim_Func
	mov	r0, r10
	mov	r1, #1
	bl	_Actor_SetAnim
	add	r5, sp, #8
	ldr	r3, [r5, #0x14]
	mov	r2, r5
	cmp	r3, #0
	beq	.Lb8d94
	mov	r6, #0x24
.Lb8d7c:
	str	r2, [sp, #4]
	ldrsh	r0, [r2, r6]
	str	r2, [sp]
	bl	Func_80b8000
	ldr	r1, [sp, #4]
	ldr	r3, [r1, #0x14]
	add	r7, #1
	add	r6, #2
	ldr	r2, [sp]
	cmp	r7, r3
	bne	.Lb8d7c
.Lb8d94:
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
.Lb8d9c:
	add	sp, #0x5c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8c1c
