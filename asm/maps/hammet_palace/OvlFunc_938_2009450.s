	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_938_2009450
	push	{r5, lr}
	mov	r1, #0xc0
	mov	r5, r0
	lsl	r1, #8
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	cmp	r5, #0
	beq	.Lm938_148e
	mov	r0, r5
	bl	__CutsceneWait
.Lm938_148e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_938_2009450

