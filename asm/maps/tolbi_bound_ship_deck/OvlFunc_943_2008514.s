	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2008514
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.Lm943_542
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	ldr	r2, =0xffff8000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.Lm943_562
	mov	r3, #0
	b	.Lm943_560
.Lm943_542:
	bl	__Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #15
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r0
	add	r3, r2
	mov	r2, #0xc0
	lsl	r2, #12
	str	r3, [r5, #0xc]
	cmp	r3, r2
	ble	.Lm943_562
	mov	r3, #1
.Lm943_560:
	strh	r3, [r6]
.Lm943_562:
	mov	r0, #1
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_2008514

