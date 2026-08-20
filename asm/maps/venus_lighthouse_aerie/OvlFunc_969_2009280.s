	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_969_2009280
	push	{r5, lr}
	mov	r5, r0
	cmp	r1, #0
	beq	.Lm969_12a6
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	b	.Lm969_12ba
.Lm969_12a6:
	mov	r1, #0xf
	mov	r0, r5
	bl	__Func_8092950
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.Lm969_12ba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_2009280

