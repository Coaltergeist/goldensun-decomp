	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801c8a0  @ 0x0801c8a0
	push	{r5, r6, r7, lr}
	mov	r3, #0
	mov	r6, r0
	str	r3, [r6]
	mov	r7, r2
	str	r3, [r1]
	mov	r2, #0x88
	ldr	r3, =gState
	lsl	r2, #2
	add	r3, r2
	ldrh	r3, [r3]
	ldr	r2, =0x3ff
	ldr	r5, =0x1bf
	mov	r14, r1
	and	r2, r3
	mov	r1, #0
	lsr	r0, r3, #10
	mov	r4, r7
.L1c8c4:
	ldrh	r3, [r4, #2]
	cmp	r3, r2
	bne	.L1c8d4
	ldrh	r3, [r4]
	cmp	r3, r0
	bne	.L1c8d4
	str	r1, [r6]
	b	.L1c8dc
.L1c8d4:
	add	r1, #1
	add	r4, #4
	cmp	r1, r5
	ble	.L1c8c4
.L1c8dc:
	ldr	r3, =ewram_2000462
	ldr	r6, =0x3ff
	ldr	r5, =0x1bf
	mov	r1, #0
	mov	r12, r3
	mov	r0, r7
.L1c8e8:
	mov	r2, r12
	ldrh	r4, [r2]
	mov	r3, r6
	ldrh	r2, [r0, #2]
	and	r3, r4
	cmp	r2, r3
	bne	.L1c904
	ldrh	r2, [r0]
	lsr	r3, r4, #10
	cmp	r2, r3
	bne	.L1c904
	mov	r3, r14
	str	r1, [r3]
	b	.L1c90c
.L1c904:
	add	r1, #1
	add	r0, #4
	cmp	r1, r5
	ble	.L1c8e8
.L1c90c:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801c8a0

