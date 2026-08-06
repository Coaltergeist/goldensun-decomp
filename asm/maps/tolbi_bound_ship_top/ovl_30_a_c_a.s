	.include "macros.inc"

.thumb_func_start OvlFunc_944_20080c0
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	cmp	r3, #9
	bne	.Lm944_d6
	mov	r3, #0
	str	r3, [r5, #0x4c]
	b	.Lm944_10c
.Lm944_d6:
	cmp	r3, #0
	beq	.Lm944_f2
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	ldr	r2, =0xffff4000
	sub	r3, r0
	str	r3, [r5, #0x4c]
	cmp	r3, r2
	bge	.Lm944_10c
	mov	r3, #0
	b	.Lm944_10a
.Lm944_f2:
	bl	__Random
	ldr	r3, [r5, #0x4c]
	lsl	r0, #11
	lsr	r0, #16
	mov	r1, #0xc0
	add	r3, r0
	lsl	r1, #8
	str	r3, [r5, #0x4c]
	cmp	r3, r1
	ble	.Lm944_10c
	mov	r3, #1
.Lm944_10a:
	strh	r3, [r6]
.Lm944_10c:
	ldr	r1, =0xffd7ffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x117fffe
	cmp	r3, r1
	bhi	.Lm944_11e
	ldr	r3, [r5, #0x4c]
	add	r3, r2, r3
	str	r3, [r5, #8]
.Lm944_11e:
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #9
	bne	.Lm944_130
	mov	r3, #0
	str	r3, [r5, #0xc]
	b	.Lm944_16c
.Lm944_130:
	cmp	r3, #0
	beq	.Lm944_14e
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	lsr	r3, #16
	sub	r2, r3
	str	r2, [r5, #0xc]
	cmp	r2, #0
	bge	.Lm944_16c
	mov	r3, #0
	b	.Lm944_16a
.Lm944_14e:
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
	ble	.Lm944_16c
	mov	r3, #1
.Lm944_16a:
	strh	r3, [r6]
.Lm944_16c:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_20080c0

