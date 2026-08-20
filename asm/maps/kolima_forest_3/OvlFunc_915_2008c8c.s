	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_915_2008c8c
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	OvlFunc_915_2008d5c
	mov	r6, #0
.Lm915_c96:
	ldr	r2, =0xffef0000
	add	r3, r6, r2
	mov	r2, #0xc0
	lsl	r2, #11
	lsr	r5, r6, #16
	cmp	r3, r2
	bls	.Lm915_cc4
	ldr	r2, =0xff3f
	add	r3, r5, r2
	mov	r2, #0xe0
	lsl	r3, #16
	lsl	r2, #11
	cmp	r3, r2
	bls	.Lm915_cc4
	mov	r3, #0xa0
	lsl	r3, #19
	lsl	r5, #1
	add	r5, r3
	ldrh	r0, [r5]
	mov	r1, r7
	bl	OvlFunc_915_2008cf4
	strh	r0, [r5]
.Lm915_cc4:
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r6, r2
	mov	r2, #0xdf
	lsl	r2, #16
	mov	r6, r3
	cmp	r3, r2
	bls	.Lm915_c96
	bl	OvlFunc_915_2008d9c
	bl	OvlFunc_915_2008d7c
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_915_2008c8c

