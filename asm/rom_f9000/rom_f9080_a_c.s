	.include "macros.inc"

.thumb_func_start Func_f950c
	push	{r5, lr}
	mov	r2, r0
	lsl	r2, #16
	asr	r5, r2, #16
	ldr	r0, =ewram_4290
	lsr	r2, #16
	mov	r1, #0xff
	bl	Func_fb2cc
	ldr	r3, =ewram_3034
	strh	r5, [r3]
	ldr	r3, =ewram_3008
	strh	r5, [r3]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_f950c

