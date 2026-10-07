	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7aac  @ 0x080b7aac
	push	{r5, r6, lr}
	mov	r6, r0
	bl	_GetUnit
	mov	r2, r0
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	mov	r5, #1
	cmp	r3, #0
	beq	.Lb7af6
	mov	r1, #0x9e
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7ae0
	sub	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lb7ae0
	add	r1, #0xa
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb7b0a
.Lb7ae0:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	mov	r2, #1
	eor	r3, r2
	neg	r2, r3
	orr	r2, r3
	lsr	r5, r2, #31
	lsl	r5, #2
	b	.Lb7b0a
.Lb7af6:
	mov	r1, #0x95
	lsl	r1, #1
	add	r3, r2, r1
	ldrb	r3, [r3]
	eor	r3, r5
	neg	r2, r3
	orr	r2, r3
	lsr	r5, r2, #31
	mov	r3, #5
	sub	r5, r3, r5
.Lb7b0a:
	mov	r0, r6
	bl	GetBattleActor
	mov	r1, r5
	ldr	r0, [r0]
	bl	_Actor_SetAnim
	mov	r0, r6
	bl	GetBattleActor
	mov	r1, #3
	and	r1, r6
	ldr	r0, [r0]
	add	r1, #0xe
	bl	_Actor_SetAnimSpeed
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80b7aac

