	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e3908  @ 0x080e3908
	push	{r5, lr}
	mov	r4, r0
	ldr	r3, [r4]
	ldr	r0, [r4, #0xc]
	add	r3, r0
	mov	r5, r1
	str	r3, [r4]
	ldr	r1, [r4, #0x10]
	ldr	r3, [r4, #4]
	add	r3, r1
	str	r3, [r4, #4]
	mov	r3, r5
	mul	r3, r0
	add	r1, r2
	str	r1, [r4, #0x10]
	cmp	r3, #0
	bge	.Le392c
	add	r3, #0x3f
.Le392c:
	mul	r1, r5
	asr	r3, #6
	str	r3, [r4, #0xc]
	cmp	r1, #0
	bge	.Le3938
	add	r1, #0x3f
.Le3938:
	asr	r3, r1, #6
	str	r3, [r4, #0x10]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80e3908
