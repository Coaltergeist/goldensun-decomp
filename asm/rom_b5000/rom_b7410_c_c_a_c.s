	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b80b8  @ 0x080b80b8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r5, [r0]
	ldr	r6, [r1]
	mov	r10, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r5, #8]
	sub	r3, r2
	mov	r0, r10
	mul	r0, r3
	mov	r1, #0x64
	mov	r8, r2
	bl	__divsi3
	ldr	r3, [r6, #0x10]
	ldr	r6, [r5, #0x10]
	sub	r3, r6
	add	r8, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	bl	__divsi3
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lb812c	@ 0
	strh	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	ldr	r3, =0xab85
	mov	r2, r5
	str	r3, [r5, #0x48]
	mov	r3, #0
	str	r3, [r5, #0x44]
	add	r6, r0
	add	r2, #0x5a
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Actor_TravelTo
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
	b	.Lb8138

	.align	2, 0
.Lb812c:
	.word	0
	.pool

.Lb8138:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b80b8
