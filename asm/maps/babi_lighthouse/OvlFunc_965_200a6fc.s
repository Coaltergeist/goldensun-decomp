	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a6fc
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	OvlFunc_965_200a660
	cmp	r0, #0
	beq	.Lm965_2730
	ldr	r3, [r0, #0xc]
	ldr	r0, [r5, #0xc]
	sub	r2, r3, r0
	cmp	r2, #0
	blt	.Lm965_2722
	mov	r3, #0x80
	lsl	r3, #12
	cmp	r2, r3
	bge	.Lm965_2730
	b	.Lm965_272c
.Lm965_2722:
	mov	r2, #0x80
	sub	r3, r0, r3
	lsl	r2, #12
	cmp	r3, r2
	bge	.Lm965_2730
.Lm965_272c:
	bl	OvlFunc_965_20080c4
.Lm965_2730:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a6fc

