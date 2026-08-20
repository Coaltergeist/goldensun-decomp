	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a738
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	OvlFunc_965_200a660
	ldrh	r3, [r5, #6]
	mov	r1, #0x80
	lsl	r1, #6
	add	r5, r3, r1
	mov	r4, #0xf9
	ldr	r3, =gState
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0xc0
	ldrb	r3, [r3]
	mov	r2, r0
	lsl	r1, #8
	mov	r0, #1
	and	r5, r1
	neg	r0, r0
	cmp	r3, #1
	beq	.Lm965_276c
	cmp	r2, #0
	bne	.Lm965_2780
.Lm965_276c:
	cmp	r5, r1
	bne	.Lm965_2774
	bl	__Func_8093fa0
.Lm965_2774:
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r5, r1
	bne	.Lm965_2780
	bl	__Func_8093e28
.Lm965_2780:
	cmp	r0, #0
	beq	.Lm965_2796
	ldr	r3, =gState
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lm965_2796
	bl	OvlFunc_965_200a6fc
.Lm965_2796:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a738

