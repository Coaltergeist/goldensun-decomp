	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80992f0  @ 0x080992f0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	lsl	r0, #9
	bl	sin
	mov	r1, r0
	mov	r0, #0x80
	ldr	r3, =Func_8000888
	lsl	r0, #11
	.call_via r3
	ldr	r3, [r5, #0x38]
	add	r3, r0
	str	r3, [r5, #8]
	ldrh	r3, [r6]
	add	r3, #1
	strh	r3, [r6]
	lsl	r3, #16
	asr	r1, r3, #16
	mov	r2, r1
	add	r2, #0x80
	mov	r3, r2
	cmp	r2, #0
	bge	.L9932e
	mov	r3, r1
	add	r3, #0xff
.L9932e:
	asr	r3, #7
	lsl	r3, #7
	sub	r3, r2, r3
	strh	r3, [r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80992f0
