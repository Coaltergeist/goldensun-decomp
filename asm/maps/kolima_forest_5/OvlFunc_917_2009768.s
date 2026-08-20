	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2009768
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_917_2009838
	mov	r6, #0
.Lm917_1772:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Lm917_17a0
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Lm917_17a0
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_917_20097d0
	strh	r0, [r5]
.Lm917_17a0:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lm917_1772
	bl	OvlFunc_917_2009878
	bl	OvlFunc_917_2009858
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2009768

