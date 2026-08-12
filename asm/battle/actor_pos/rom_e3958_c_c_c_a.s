	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e3994  @ 0x080e3994
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e80
	sub	sp, #0xc
	ldr	r6, [r3]
	mov	r8, r1
	mov	r9, r0
	bl	_GetBattleActor
	ldr	r5, [r0]
	mov	r1, #0
	mov	r0, r5
	bl	_Func_80b7f70
	mov	r10, r0
	bl	InitMatrixStack
	mov	r1, r6
	mov	r0, r6
	add	r1, #0xc
	add	r5, #8
	bl	MatrixSetLook
	mov	r1, r8
	mov	r0, r5
	bl	PhysMove
	mov	r2, r10
	ldr	r5, =Func_8000888
	ldr	r1, [r2, #0x18]
	.align	2, 0
	mov	r12, pc
	bx	r5
	mov	r6, r0
	mov	r0, r9
	bl	_Func_80b8530
	mov	r1, r0
	asr	r1, #17
	mov	r0, r6
	.align	2, 0
	mov	r12, pc
	bx	r5
	mov	r2, r8
	ldr	r3, [r2, #4]
	sub	r3, r0
	str	r3, [r2, #4]
	mov	r0, #0
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80e3994

