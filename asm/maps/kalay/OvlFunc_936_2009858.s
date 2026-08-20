	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_2009858
	push	{lr}
	ldr	r0, =0xfd6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm936_186a
	mov	r0, #0xc
	bl	OvlFunc_936_200ba3c
.Lm936_186a:
	ldr	r0, =0x915
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm936_187e
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
.Lm936_187e:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	bne	.Lm936_1892
	bl	OvlFunc_936_200a6c0
.Lm936_1892:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009858

