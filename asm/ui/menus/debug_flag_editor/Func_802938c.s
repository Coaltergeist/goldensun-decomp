	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_802938c  @ 0x0802938c
	push    {r5, r6, lr}
	ldr	r6, =gKeyRepeat
	ldr	r3, [r6]
	mov	r5, r2
	mov	r2, #1
	and	r3, r2
	add	r4, r5, #4
	cmp	r3, #0
	beq	.L293c6
	ldr	r3, [r1]
	ldr	r2, [r4]
	lsl	r3, #4
	add	r3, r2
	ldr	r2, [r5]
	lsl	r3, #4
	add	r5, r3, r2
	mov	r0, r5
	bl	_GetFlag
	cmp	r0, #0
	beq	.L293be
	mov	r0, r5
	bl	_ClearFlag
	b	.L294bc
.L293be:
	mov	r0, r5
	bl	_SetFlag
	b	.L294bc
.L293c6:
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L293dc
	ldr	r3, [r6]
	mov	r2, #4
	and	r3, r2
	cmp	r3, #0
	beq	.L293e2
.L293dc:
	mov	r0, #1
	neg	r0, r0
	b	.L294c2
.L293e2:
	ldr	r0, [r6]
	mov	r3, #0x40
	and	r0, r3
	cmp	r0, #0
	beq	.L293fc
	ldr	r3, [r4]
	sub	r3, #1
	str	r3, [r4]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r4]
	b	.L294c0
.L293fc:
	ldr	r3, [r6]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.L29414
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r4]
	b	.L294c0
.L29414:
	ldr	r0, [r6]
	mov	r3, #0x20
	and	r0, r3
	cmp	r0, #0
	beq	.L2942e
	ldr	r3, [r5]
	sub	r3, #1
	str	r3, [r5]
	cmp	r3, #0
	bge	.L294c0
	mov	r3, #0xf
	str	r3, [r5]
	b	.L294c0
.L2942e:
	ldr	r3, [r6]
	mov	r2, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L29446
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0xf
	ble	.L294c0
	str	r0, [r5]
	b	.L294c0
.L29446:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29462
	ldr	r3, [r1]
	sub	r3, #0xa
	b	.L29498
.L29462:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r6]
	mov	r2, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L29488
	ldr	r3, [r1]
	add	r3, #0xa
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	mov	r3, #0
	str	r3, [r1]
	b	.L294bc
.L29488:
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #2
	and	r0, r3
	cmp	r0, #0
	beq	.L294a4
	ldr	r3, [r1]
	sub	r3, #1
.L29498:
	str	r3, [r1]
	cmp	r3, #0
	bge	.L294bc
	mov	r3, #0xf
	str	r3, [r1]
	b	.L294bc
.L294a4:
	ldr	r3, [r6]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L294c0
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xf
	ble	.L294bc
	str	r0, [r1]
.L294bc:
	mov	r0, #1
	b	.L294c2
.L294c0:
	mov	r0, #0
.L294c2:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_802938c
