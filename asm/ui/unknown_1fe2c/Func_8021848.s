	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8021848  @ 0x08021848
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.L37250
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.L2185a:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6006280
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.L21866:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.L21874:
	mov	r1, r6
	cmp	r7, #1
	bne	.L2187e
	cmp	r4, #1
	ble	.L218a8
.L2187e:
	cmp	r7, #0
	bne	.L21890
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.L21890
	mov	r1, r3
	cmp	r1, #0
	bge	.L21890
	mov	r1, #0
.L21890:
	lsl	r1, #3
	mov	r3, r8
	ldr	r3, [r3, r1]
	ldr	r2, [r0]
	eor	r2, r3
	str	r2, [r0]
	add	r1, #4
	mov	r3, r8
	ldr	r2, [r0, #0x20]
	ldr	r1, [r3, r1]
	eor	r2, r1
	str	r2, [r0, #0x20]
.L218a8:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.L21874
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.L21866
	add	r7, #1
	cmp	r7, #1
	ble	.L2185a
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021848
