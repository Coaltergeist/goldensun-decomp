	.include "macros.inc"

.thumb_func_start Func_8093168  @ 0x08093168
	push	{r5, r6, lr}
	mov	r0, r2
	ldr	r2, =iwram_3001ebc
	ldr	r6, [r2]
	mov	r2, r3
	mov	r1, r0
	cmp	r2, #0x77
	ble	.L9317c
	add	r2, #0x20
	b	.L9317e
.L9317c:
	sub	r2, #0x20
.L9317e:
	cmp	r0, #8
	bge	.L93184
	mov	r1, #8
.L93184:
	mov	r3, #0x9c
	lsl	r3, #1
	cmp	r1, r3
	ble	.L9318e
	mov	r1, r3
.L9318e:
	cmp	r2, #0x14
	bge	.L93194
	mov	r2, #0x14
.L93194:
	cmp	r2, #0xdc
	ble	.L9319a
	mov	r2, #0xdc
.L9319a:
	mov	r0, #0xec
	lsl	r0, #1
	add	r3, r6, r0
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	bl	_Func_8017658
	mov	r5, r0
	b	.L931b4
.L931ae:
	mov	r0, #1
	bl	WaitFrames
.L931b4:
	mov	r0, r5
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L931ae
	mov	r0, #0xec
	lsl	r0, #1
	add	r2, r6, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8093168

