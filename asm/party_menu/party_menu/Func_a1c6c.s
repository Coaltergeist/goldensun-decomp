	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_a1c6c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	cmp	r6, #0xf
	ble	.La1c7e
	mov	r6, #0
.La1c7e:
	ldr	r1, [sp, #0x14]
	ldr	r5, [r0]
	mov	r0, r6
	bl	__divsi3
	lsl	r0, #4
	add	r0, r7
	strh	r0, [r5, #8]
	ldr	r1, [sp, #0x14]
	mov	r0, r6
	bl	__modsi3
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	add	r3, r8
	strh	r3, [r5, #6]
	mov	r0, r5
	bl	Func_80a17c4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_a1c6c

