	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadMoveRangeIcons  @ 0x080a8c2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.Laf23c
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.La8c3e:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6005000
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.La8c4a:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.La8c58:
	mov	r1, r6
	cmp	r7, #1
	bne	.La8c62
	cmp	r4, #1
	ble	.La8c8c
.La8c62:
	cmp	r7, #0
	bne	.La8c74
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.La8c74
	mov	r1, r3
	cmp	r1, #0
	bge	.La8c74
	mov	r1, #0
.La8c74:
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
.La8c8c:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.La8c58
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.La8c4a
	add	r7, #1
	cmp	r7, #1
	ble	.La8c3e
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadMoveRangeIcons

