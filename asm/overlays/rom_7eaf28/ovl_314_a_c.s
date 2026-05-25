	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_7eaf28_34c
	push	{lr}
	ldr	r3, =ewram_2000240
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
.func_end OvlFunc_7eaf28_34c

