	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008fa0
	push	{r5, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm907_1010
	ldr	r3, [r5, #0x10]
	asr	r2, r3, #20
	cmp	r2, #6
	bne	.Lm907_fcc
	mov	r3, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm907_fe0
.Lm907_fcc:
	mov	r3, #0xe
	mov	r2, #6
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm907_fe0:
	ldr	r3, [r5, #0x10]
	asr	r0, r3, #20
	cmp	r0, #9
	bne	.Lm907_ffc
	mov	r3, #0xe
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r1, #0
	mov	r0, #2
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm907_1010
.Lm907_ffc:
	mov	r3, #0xe
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #1
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm907_1010:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008fa0

