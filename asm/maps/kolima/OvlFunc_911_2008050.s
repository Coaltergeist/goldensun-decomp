	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_911_2008050
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Random
	mov	r3, #0x64
	mov	r2, r0
	mul	r2, r3
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	lsr	r2, #16
	add	r3, r2
	mov	r2, #0xfa
	strh	r3, [r6]
	lsl	r2, #18
	lsl	r3, #16
	cmp	r3, r2
	ble	.Lm911_7e
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	b	.Lm911_86
.Lm911_7e:
	mov	r0, r5
	mov	r1, #0xa
	bl	__Func_80929d8
.Lm911_86:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	mov	r2, #0x96
	lsl	r2, #3
	cmp	r3, r2
	ble	.Lm911_96
	mov	r3, #0
	strh	r3, [r6]
.Lm911_96:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_2008050

