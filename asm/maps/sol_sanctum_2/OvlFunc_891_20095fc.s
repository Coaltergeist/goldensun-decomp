	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_20095fc
	push	{lr}
	mov	r1, #0xb0
	mov	r2, #0xe0
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #15
	mov	r3, #0
	bl	__Func_8012078
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #7
	bl	OvlFunc_891_2009be8
	cmp	r0, #0
	beq	.Lm891_1620
	bl	OvlFunc_891_200a2f4
.Lm891_1620:
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20095fc

