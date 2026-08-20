	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2009624
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	mov	r0, #0
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #8
	bne	.Lm891_1666
	mov	r3, r5
	sub	r3, #0x11
	cmp	r3, #1
	bhi	.Lm891_1666
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0xff
	bl	__Func_8012078
.Lm891_1666:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2009624

