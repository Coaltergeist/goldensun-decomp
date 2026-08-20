	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8079bf8  @ 0x08079bf8
	push	{r5, r6, lr}
	mov	r5, r0
	sub	r5, r1
	mov	r6, r2
	mov	r0, r3
	cmp	r5, #0
	bge	.L79c08
	mov	r5, #0
.L79c08:
	mov	r1, #1
	bl	Func_8079b24
	lsl	r3, r6, #1
	add	r3, r5, r3
	mul	r0, r3
	cmp	r0, #0
	bge	.L79c1c
	ldr	r3, =0x1ff
	add	r0, r3
.L79c1c:
	asr	r0, #9
	cmp	r0, #0
	bge	.L79c24
	mov	r0, #0
.L79c24:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8079bf8

