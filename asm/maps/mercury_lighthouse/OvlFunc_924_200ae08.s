	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200ae08
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.Lm924_2e0c:
	ldr	r0, =0x50000c2
	mov	r5, #0
	mov	r4, #0
.Lm924_2e12:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0
	ble	.Lm924_2e2a
	sub	r1, #1
.Lm924_2e2a:
	cmp	r2, #0
	ble	.Lm924_2e3c
	sub	r2, #1
	b	.Lm924_2e3c

	.pool_aligned

.Lm924_2e3c:
	cmp	r3, #0
	ble	.Lm924_2e42
	sub	r3, #1
.Lm924_2e42:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
	ldrh	r3, [r0]
	cmp	r3, #0
	bne	.Lm924_2e54
	add	r5, #1
.Lm924_2e54:
	add	r4, #1
	add	r0, #2
	cmp	r4, #6
	bls	.Lm924_2e12
	mov	r0, #5
	bl	__WaitFrames
	cmp	r5, #7
	bne	.Lm924_2e0c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200ae08

