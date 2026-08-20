	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_920_20084b4
	push	{lr}
	ldr	r0, =0x305
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm920_4de
	mov	r3, #8
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
.Lm920_4de:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20084b4

