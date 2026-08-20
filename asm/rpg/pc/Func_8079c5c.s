	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079c5c  @ 0x08079c5c
	push	{r5, r6, lr}
	lsl	r1, #1
	sub	r1, #0xc8
	mov	r6, r0
	mov	r0, r1
	mov	r1, #0
	mov	r5, r2
	bl	Func_8079b24
	mov	r3, r6
	mul	r3, r0
	mov	r0, r5
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c7e
	ldr	r3, =0xffff
	add	r0, r3
.L79c7e:
	asr	r0, #16
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079c5c

