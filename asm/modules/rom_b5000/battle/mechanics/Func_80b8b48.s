	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8b48  @ 0x080b8b48
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f00
	ldr	r2, [r3]
	mov	r1, #0x80
	ldr	r3, [r2]
	lsl	r1, #6
	sub	sp, #0x54
	mov	r6, r0
	cmp	r3, r1
	bne	.Lb8b66
	str	r1, [r2]
	mov	r0, #0xa
	bl	WaitFrames
	b	.Lb8b6e
.Lb8b66:
	str	r1, [r2]
	mov	r0, #0x1e
	bl	WaitFrames
.Lb8b6e:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	mov	r5, sp
	str	r0, [r5, #8]
	bl	Func_80b8808
	cmp	r0, #0
	blt	.Lb8b8e
	ldrh	r0, [r6, #0xa]
	strh	r0, [r5, #0x24]
	lsl	r0, #16
	asr	r0, #16
	bl	Func_80b8808
	cmp	r0, #0
	bge	.Lb8b94
.Lb8b8e:
	mov	r0, #1
	neg	r0, r0
	b	.Lb8c0a
.Lb8b94:
	ldr	r0, [r5, #8]
	bl	_GetUnit
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	_GetUnit
	bl	Random
	mov	r1, #1
	ldr	r0, [r5, #8]
	bl	_Func_8019908
	ldr	r0, =0x814
	bl	_Func_80175a0
	mov	r2, #0xd
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	mov	r3, #0
	bl	Func_80b82c4
	ldr	r0, [r5, #8]
	bl	GetBattleActor
	mov	r1, #0x10
	ldr	r0, [r0]
	bl	_Actor_SetAnimSpeed
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	GetBattleActor
	ldrh	r3, [r5, #0x24]
	mov	r2, #1
	str	r2, [r5, #0x14]
	cmp	r3, #7
	bhi	.Lb8be6
	str	r2, [r5, #4]
	b	.Lb8bea
.Lb8be6:
	mov	r3, #0
	str	r3, [r5, #4]
.Lb8bea:
	mov	r3, #0
	mov	r0, #4
	str	r3, [r5, #0x1c]
	bl	WaitFrames
	mov	r0, r5
	bl	_Anim_Attack
	mov	r3, #0x24
	ldrsh	r0, [r5, r3]
	bl	Func_80b8000
	ldr	r0, [r5, #8]
	bl	Func_80b8000
	mov	r0, #0
.Lb8c0a:
	add	sp, #0x54
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b8b48
