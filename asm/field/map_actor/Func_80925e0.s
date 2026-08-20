	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80925e0  @ 0x080925e0
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, [r6, #0x30]
	ldr	r3, [r6, #8]
	add	r3, r5
	str	r3, [r6, #8]
	str	r3, [r6, #0x38]
	ldr	r7, [r6, #0x34]
	ldr	r3, [r6, #0x10]
	add	r3, r7
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x40]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #3
	add	r3, r2
	mov	r0, r5
	mov	r1, #0x12
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	bl	__divsi3
	sub	r5, r0
	str	r5, [r6, #0x30]
	mov	r3, r7
	cmp	r7, #0
	bge	.L92618
	add	r3, #0xf
.L92618:
	asr	r3, #4
	sub	r3, r7, r3
	str	r3, [r6, #0x34]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80925e0

