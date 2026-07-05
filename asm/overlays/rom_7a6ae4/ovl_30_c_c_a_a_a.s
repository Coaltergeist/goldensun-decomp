	.include "macros.inc"

.thumb_func_start OvlFunc_920_200846c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x31
	cmp	r2, r3
	bne	.L486
	bl	OvlFunc_920_20084b4
	b	.L49c
.L486:
	ldr	r3, =0x30
	cmp	r2, r3
	bne	.L492
	bl	OvlFunc_920_20084e8
	b	.L49c
.L492:
	ldr	r3, =0x2f
	cmp	r2, r3
	bne	.L49c
	bl	OvlFunc_920_2008538
.L49c:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_920_200846c

.thumb_func_start OvlFunc_920_20084b4
	push	{lr}
	ldr	r0, =0x305
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4de
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
.L4de:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_920_20084b4

