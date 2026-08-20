	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_2008490
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r1, =gKeyHeld
	ldr	r3, [r0, #8]
	asr	r7, r3, #20
	ldr	r3, [r1]
	mov	r2, #0x20
	and	r3, r2
	cmp	r3, #0
	beq	.Lm954_4b6
	mov	r5, #1
	neg	r5, r5
.Lm954_4b6:
	ldr	r3, [r1]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.Lm954_4c2
	mov	r5, #1
.Lm954_4c2:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r7, #0x3f
	bne	.Lm954_4d8
	cmp	r6, #0xb
	beq	.Lm954_52e
	mov	r6, #0xa0
	b	.Lm954_4f8
.Lm954_4d8:
	cmp	r7, #0x43
	bne	.Lm954_4ec
	cmp	r6, #0xb
	bne	.Lm954_4e8
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lm954_52e
.Lm954_4e8:
	mov	r6, #0x60
	b	.Lm954_4f8
.Lm954_4ec:
	cmp	r6, #0xb
	bne	.Lm954_4f4
	mov	r6, #0x60
	b	.Lm954_4f6
.Lm954_4f4:
	mov	r6, #0xa0
.Lm954_4f6:
	neg	r6, r6
.Lm954_4f8:
	mov	r3, #3
	mov	r5, #9
	mov	r0, #0x48
	mov	r1, #9
	mov	r2, #1
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r1, r6
	mov	r2, #0
	mov	r0, #0x12
	bl	OvlFunc_954_200833c
	mov	r0, #0x12
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r1, #0x19
	asr	r7, r3, #20
	mov	r0, #0x3f
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm954_52e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_2008490

