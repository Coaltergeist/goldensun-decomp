	.include "macros.inc"

.thumb_func_start OvlFunc_7d0e88_1440
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x73
	cmp	r2, r3
	bne	.L1458
	ldr	r0, =.L2eac
	b	.L1482
.L1458:
	ldr	r3, =0x74
	cmp	r2, r3
	bne	.L1462
	ldr	r0, =.L2ef4
	b	.L1482
.L1462:
	ldr	r3, =0x77
	cmp	r2, r3
	bne	.L146c
	ldr	r0, =.L2f3c
	b	.L1482
.L146c:
	ldr	r3, =0x79
	cmp	r2, r3
	bne	.L1476
	ldr	r0, =.L2f84
	b	.L1482
.L1476:
	ldr	r3, =0x7a
	cmp	r2, r3
	bne	.L1480
	ldr	r0, =.L2fcc
	b	.L1482
.L1480:
	ldr	r0, =.L2e7c
.L1482:
	pop	{r1}
	bx	r1
.func_end OvlFunc_7d0e88_1440

