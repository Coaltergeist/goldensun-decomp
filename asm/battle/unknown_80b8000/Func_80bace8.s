	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bace8  @ 0x080bace8
	push	{r5, r6, r7, lr}
	sub	sp, #0x10
	mov	r6, r0
	bl	_GetUnit
	mov	r5, #0
	mov	r7, r0
	b	.Lbad14
.Lbacf8:
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lbad0c
	mov	r1, #4
	bl	_Sprite_SetAnim
	b	.Lbad12
.Lbad0c:
	mov	r1, #5
	bl	_Sprite_SetAnim
.Lbad12:
	add	r5, #1
.Lbad14:
	mov	r0, r6
	bl	GetBattleActor
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_80b7f70
	cmp	r0, #0
	bne	.Lbacf8
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r7, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.Lbad74
	mov	r5, #0
	mov	r7, sp
	b	.Lbad48
.Lbad38:
	lsl	r3, r5, #2
	ldr	r2, [r0, #0x28]
	str	r0, [r7, r3]
	mov	r3, #6
	strb	r3, [r2, #5]
	mov	r3, #0xff
	strb	r3, [r2, #0x16]
	add	r5, #1
.Lbad48:
	mov	r0, r6
	bl	GetBattleActor
	mov	r1, r5
	ldr	r0, [r0]
	bl	Func_80b7f70
	cmp	r0, #0
	bne	.Lbad38
	mov	r0, #4
	bl	WaitFrames
	mov	r0, r6
	bl	Func_80bac6c
	mov	r0, r7
	mov	r1, r5
	bl	_Func_800bf34
	mov	r0, r6
	bl	Func_80b7e60
.Lbad74:
	add	sp, #0x10
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80bace8
