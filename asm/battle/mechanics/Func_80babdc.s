	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80babdc  @ 0x080babdc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	sub	sp, #4
	bl	_GetUnit
	mov	r0, r7
	bl	GetBattleActor
	mov	r1, #5
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r3, #1
	mov	r6, sp
	mov	r8, r3
.Lbabfe:
	mov	r3, #0xff
	mov	r0, r6
	strh	r3, [r6, #2]
	strh	r7, [r6]
	bl	_Func_802281c
	mov	r0, r7
	bl	GetBattleActor
	mov	r1, #7
	ldr	r0, [r0]
	bl	Func_80ba918
	mov	r0, #2
	bl	WaitFrames
	mov	r0, r6
	strh	r7, [r6]
	bl	_Func_802281c
	mov	r0, r7
	bl	GetBattleActor
	mov	r5, r0
	mov	r0, r7
	bl	GetUnitDefaultColor
	mov	r1, r0
	ldr	r0, [r5]
	bl	Func_80ba918
	mov	r0, #2
	bl	WaitFrames
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r3, r8
	cmp	r3, #0
	bge	.Lbabfe
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_801f200
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80babdc
