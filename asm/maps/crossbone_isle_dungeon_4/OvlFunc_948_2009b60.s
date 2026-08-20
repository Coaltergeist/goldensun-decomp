	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009b60
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm948_1b7a
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_1b7a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm948_1b86
	ldr	r2, =0xfffff
	add	r0, r2
.Lm948_1b86:
	asr	r0, #20
	cmp	r3, #0x26
	bne	.Lm948_1bae
	cmp	r0, #0x26
	beq	.Lm948_1bae
	mov	r3, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r3, #8
	cmp	r0, r3
	bne	.Lm948_1ba0
	bl	__Func_8093fa0
	b	.Lm948_1bba
.Lm948_1ba0:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bne	.Lm948_1bae
	bl	__Func_8093e28
	b	.Lm948_1bba
.Lm948_1bae:
	bl	OvlFunc_948_20099e8
	bl	OvlFunc_948_20080c4
	bl	OvlFunc_948_2009ac8
.Lm948_1bba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009b60

