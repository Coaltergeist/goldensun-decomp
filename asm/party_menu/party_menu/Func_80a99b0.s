	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a99b0  @ 0x080a99b0
	push	{lr}
	ldr	r3, [r0]
	ldr	r4, [r1]
	cmp	r2, #0x20
	beq	.La9a10
	cmp	r2, #0x20
	bgt	.La99c4
	cmp	r2, #0x10
	beq	.La9a2e
	b	.La9a48
.La99c4:
	cmp	r2, #0x40
	beq	.La99ce
	cmp	r2, #0x80
	beq	.La99f8
	b	.La9a48
.La99ce:
	sub	r4, #1
	cmp	r4, #0
	bge	.La99d6
	mov	r4, #5
.La99d6:
	cmp	r4, #3
	bgt	.La9a48
	cmp	r4, #3
	bne	.La99e6
	cmp	r3, #4
	bgt	.La99ea
	mov	r3, #0
	b	.La99ec
.La99e6:
	cmp	r3, #1
	ble	.La99ec
.La99ea:
	mov	r3, #1
.La99ec:
	cmp	r4, #3
	bne	.La9a48
	cmp	r3, #1
	bne	.La9a48
	mov	r4, #2
	b	.La9a48
.La99f8:
	add	r4, #1
	cmp	r4, #5
	ble	.La9a00
	mov	r4, #0
.La9a00:
	cmp	r4, #3
	bne	.La9a0a
	cmp	r3, #1
	bne	.La9a0a
	mov	r4, #4
.La9a0a:
	cmp	r4, #4
	bne	.La9a48
	b	.La9a46
.La9a10:
	sub	r3, #1
	cmp	r4, #3
	bne	.La9a1a
	add	r3, #1
	b	.La9a48
.La9a1a:
	cmp	r4, #3
	ble	.La9a26
	cmp	r3, #0
	bge	.La9a48
	mov	r3, #7
	b	.La9a48
.La9a26:
	cmp	r3, #0
	bge	.La9a48
	mov	r3, #1
	b	.La9a48
.La9a2e:
	add	r3, #1
	cmp	r4, #3
	bne	.La9a38
	sub	r3, #1
	b	.La9a48
.La9a38:
	cmp	r4, #3
	ble	.La9a42
	cmp	r3, #7
	ble	.La9a48
	b	.La9a46
.La9a42:
	cmp	r3, #1
	ble	.La9a48
.La9a46:
	mov	r3, #0
.La9a48:
	str	r3, [r0]
	lsl	r0, r4, #3
	add	r0, r4
	add	r0, r3
	str	r4, [r1]
	pop	{r1}
	bx	r1
.func_end Func_80a99b0

