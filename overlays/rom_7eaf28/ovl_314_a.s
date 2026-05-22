	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_314
	push	{lr}
	mov	r0, #0xf
	mov	r1, #0x2d
	bl	__Func_91f14
	pop	{r0}
	bx	r0
.func_end OvlFunc_314

.thumb_func_start OvlFunc_324
	push	{r5, lr}
	mov	r1, #0
	mov	r5, r0
	bl	__Func_c528
	add	r5, #0x59
	mov	r3, #0
	strb	r3, [r5]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_324

.thumb_func_start OvlFunc_33c
	add	r0, #0x54
	ldrb	r3, [r0]
	mov	r2, #1
	eor	r3, r2
	strb	r3, [r0]
	mov	r0, #1
	bx	lr
.func_end OvlFunc_33c

.thumb_func_start OvlFunc_34c
	push	{lr}
	ldr	r3, =ewram_240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.L364
	ldr	r0, =.L1488
	b	.L37a
.L364:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.L36e
	ldr	r0, =.L14d0
	b	.L37a
.L36e:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.L378
	ldr	r0, =.L1548
	b	.L37a
.L378:
	ldr	r0, =.L1458
.L37a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_34c

