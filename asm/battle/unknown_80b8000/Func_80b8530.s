	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8530  @ 0x080b8530
	push	{r5, lr}
	mov	r5, r0
	bl	_GetUnit
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	GetEnemyHeight
	lsl	r0, #24
	lsr	r3, r0, #8
	cmp	r3, #0
	bne	.Lb856a
	mov	r0, r5
	bl	_GetUnit
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	GetEnemyAttackAnimUnk
	mov	r3, #0xc0
	lsl	r3, #13
	cmp	r0, #0
	bne	.Lb856a
	mov	r3, #0xc0
	lsl	r3, #14
.Lb856a:
	mov	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b8530
