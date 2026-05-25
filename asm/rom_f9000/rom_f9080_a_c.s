	.include "macros.inc"

.thumb_func_start Func_80f950c
	push	{r5, lr}
	mov	r2, r0
	lsl	r2, #16
	asr	r5, r2, #16
	ldr	r0, =ewram_2004290
	lsr	r2, #16
	mov	r1, #0xff
	bl	Func_80fb2cc
	ldr	r3, =ewram_2003034
	strh	r5, [r3]
	ldr	r3, =ewram_2003008
	strh	r5, [r3]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80f950c

