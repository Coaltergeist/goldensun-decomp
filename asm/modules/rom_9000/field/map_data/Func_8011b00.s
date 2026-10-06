	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011b00  @ 0x08011b00
	push	{r5, r6, lr}
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	galloc_ewram
	mov	r5, r0
	mov	r1, r5
	mov	r0, #0
	mov	r4, #0
.L11b12:
	str	r4, [r1]
	strh	r4, [r1, #4]
	strh	r4, [r1, #6]
	strh	r4, [r1, #8]
	strh	r4, [r1, #0xa]
	mov	r3, #0
.L11b1e:
	lsr	r2, r3, #16
	lsl	r3, r2, #1
	mov	r6, #0x80
	add	r2, #1
	add	r3, #0xc
	lsl	r2, #16
	lsl	r6, #13
	strh	r4, [r1, r3]
	mov	r3, r2
	cmp	r2, r6
	bne	.L11b1e
	mov	r2, #0x80
	lsl	r2, #9
	mov	r6, #0x80
	add	r3, r0, r2
	lsl	r6, #11
	add	r1, #0x2c
	mov	r0, r3
	cmp	r3, r6
	bne	.L11b12
	mov	r2, r5
	add	r2, #0xb0
	mov	r3, #0
	strh	r3, [r2]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8011b00
