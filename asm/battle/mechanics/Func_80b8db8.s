	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8db8  @ 0x080b8db8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	cmp	r3, #0
	bne	.Lb8dd6
	mov	r2, sp
	mov	r3, #0
	strb	r3, [r2]
	strb	r3, [r2, #1]
	strb	r3, [r2, #2]
	strb	r3, [r2, #3]
.Lb8dd6:
	mov	r0, r5
	bl	_GetUnit
	mov	r6, r0
	ldrh	r3, [r6, #0x38]
	sub	r3, r7
	strh	r3, [r6, #0x38]
	lsl	r3, #16
	cmp	r3, #0
	bge	.Lb8dee
	mov	r3, #0
	strh	r3, [r6, #0x38]
.Lb8dee:
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r0, #0
	bl	_Func_801f200
	bl	_Func_80198dc
	cmp	r5, #7
	bhi	.Lb8e2e
	mov	r2, r8
	cmp	r2, #0
	beq	.Lb8e16
	ldr	r0, =0x823
	bl	_Func_80175a0
.Lb8e16:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x827
	bl	_Func_80175a0
	b	.Lb8e58
.Lb8e2e:
	mov	r3, r8
	cmp	r3, #0
	beq	.Lb8e3a
	ldr	r0, =0x822
	bl	_Func_80175a0
.Lb8e3a:
	mov	r0, r7
	mov	r1, #5
	bl	_Func_8019908
	mov	r1, #1
	mov	r0, r5
	bl	_Func_8019908
	ldr	r0, =0x826
	bl	_Func_80175a0
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
.Lb8e58:
	mov	r0, r5
	bl	Func_80b8ec4
	cmp	r5, #7
	bhi	.Lb8e7a
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x825
	bl	_Func_80175a0
	b	.Lb8e90
.Lb8e7a:
	mov	r2, #0x38
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	bgt	.Lb8e90
	mov	r0, r5
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x838
	bl	_Func_80175a0
.Lb8e90:
	mov	r0, r5
	bl	GetBattleActor
	mov	r1, #1
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b8db8
