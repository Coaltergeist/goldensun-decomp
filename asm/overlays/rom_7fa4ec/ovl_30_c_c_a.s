	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_200804c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xb6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	mov	r2, #0
	mov	r3, #0xa0
	lsl	r3, #19
	strh	r2, [r3]
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_200804c

.thumb_func_start OvlFunc_970_2008070
	push	{lr}
	bl	OvlFunc_970_2009188
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008070

.thumb_func_start OvlFunc_970_200807c
	push	{lr}
	mov	r0, #0x80
	sub	sp, #0xc
	lsl	r0, #8
	str	r0, [sp, #4]
	mov	r0, #0x80
	lsl	r0, #7
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r3, #0x80
	lsl	r2, #9
	str	r0, [sp, #8]
	lsl	r1, #11
	lsl	r3, #6
	mov	r0, #0
	str	r2, [sp]
	bl	OvlFunc_970_20090d4
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_200807c

