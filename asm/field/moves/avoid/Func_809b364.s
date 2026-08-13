	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b364  @ 0x0809b364
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r5, #0xed
	lsl	r5, #1
	ldr	r1, [r0, #0x14]
	mov	r2, #0xa0
	lsl	r2, #12
	add	r3, r5
	add	r4, r1, r2
	mov	r5, #0
	ldrsh	r2, [r3, r5]
	ldr	r3, =1
	ldr	r6, [r0, #0x68]
	cmp	r2, r3
	bne	.L9b388
	mov	r2, #0x80
	lsl	r2, #11
	add	r4, r1, r2
.L9b388:
	ldr	r5, [r0, #0xc]
	cmp	r5, r4
	bgt	.L9b394
	bl	_DeleteActor
	b	.L9b3c6
.L9b394:
	ldr	r3, [r0, #0x18]
	mov	r4, #0xc0
	lsl	r4, #4
	mov	r1, #0x80
	add	r2, r3, r4
	lsl	r1, #9
	cmp	r2, r1
	ble	.L9b3a6
	mov	r2, r1
.L9b3a6:
	str	r2, [r0, #0x18]
	str	r2, [r0, #0x1c]
	ldr	r4, =0xfffe0000
	ldr	r3, [r6, #8]
	str	r3, [r0, #8]
	add	r3, r5, r4
	str	r3, [r0, #0xc]
	sub	r3, r1, r2
	lsl	r2, r3, #2
	add	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r5, #0x90
	add	r3, r2
	lsl	r5, #12
	add	r3, r5
	str	r3, [r0, #0x10]
.L9b3c6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809b364
