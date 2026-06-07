	.include "macros.inc"

.thumb_func_start OvlFunc_944_20080c0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	cmp	r3, #9
	bne	.Ld6
	mov	r3, #0
	str	r3, [r5, #0x4c]
	b	.L10c
.Ld6:
	cmp	r3, #0
	beq	.Lf2
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	ldr	r2, =0xffff4000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r2
	bge	.L10c
	mov	r3, #0
	b	.L10a
.Lf2:
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	mov	r1, #0xc0
	add	r3, r0
	lsl	r1, #8
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.L10c
	mov	r3, #1
.L10a:
	strh	r3, [r6]
.L10c:
	ldr	r1, =0xffd7ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x117fffe
	cmp	r3, r1
	bhi	.L11e
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.L11e:
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bne	.L130
	mov	r3, #0
	str	r3, [r5, #0xc]
	b	.L16c
.L130:
	cmp	r3, #0
	beq	.L14e
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	lsr	r3, #16
	sub	r2, r3
	str	r2, [r5, #0xc]
	cmp	r2, #0
	bge	.L16c
	mov	r3, #0
	b	.L16a
.L14e:
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	lsr	r3, #16
	add	r2, r3
	mov	r3, #0x80
	lsl	r3, #13
	str	r2, [r5, #0xc]
	cmp	r2, r3
	ble	.L16c
	mov	r3, #1
.L16a:
	strh	r3, [r6]
.L16c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_20080c0

.thumb_func_start OvlFunc_944_2008180
	push	{lr}
	ldr	r1, [r0, #0x50]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	mov	r2, #0x80
	ldr	r3, [r0, #0x18]
	lsl	r2, #5
	cmp	r3, r2
	ble	.L1b0
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	b	.L1be
.L1b0:
	mov	r3, #0
	str	r3, [r0, #8]
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x10]
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x28]
	str	r3, [r0, #0x2c]
.L1be:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_2008180

