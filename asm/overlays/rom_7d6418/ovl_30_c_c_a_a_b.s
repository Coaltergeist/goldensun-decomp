	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008104
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	mov	r0, #0x80
	add	r3, r2
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.L128
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	bl	OvlFunc_951_2008880
.L128:
	bl	__CutsceneStart
	mov	r0, r5
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, r5
	bl	__Func_8092adc
	bl	OvlFunc_951_2008ac8
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008104
