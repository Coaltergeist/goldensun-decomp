	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801868c  @ 0x0801868c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	str	r2, [sp]
	mov	r5, r3
	ldr	r3, =iwram_3001e8c
	ldr	r2, [sp, #0x24]
	ldr	r3, [r3]
	mov	r8, r2
	mov	r9, r3
	mov	r2, #0x1e
	ldr	r3, [sp]
	mov	r10, r2
	ldr	r2, [sp, #0x2c]
	ldr	r7, [r3]
	mov	r3, #2
	and	r3, r2
	mov	r11, r1
	ldr	r4, [sp, #0x28]
	ldr	r6, [r1]
	cmp	r3, #0
	bne	.L186e0
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L186d6
	mov	r1, r5
	mov	r2, r8
	mov	r3, r4
	bl	Func_8018a50
	b	.L186e0
.L186d6:
	mov	r1, r5
	mov	r2, r8
	mov	r3, r4
	bl	Func_8018850
.L186e0:
	ldr	r1, [r5]
	cmp	r1, #0
	bne	.L186ee
	mov	r0, r8
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L18776
.L186ee:
	ldr	r2, [sp, #0x2c]
	mov	r3, #2
	and	r3, r2
	cmp	r3, #0
	bne	.L18724
	mov	r3, r1
	add	r3, #0x13
	lsr	r3, #3
	str	r3, [r5]
	mov	r0, r8
	ldr	r3, [r0]
	add	r3, #0xf
	lsr	r3, #3
	str	r3, [r0]
	ldr	r3, =0xea4
	add	r3, r9
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L18722
	ldr	r3, [r5]
	mov	r2, #0x1d
	add	r3, #2
	str	r3, [r5]
	mov	r10, r2
	mov	r1, r3
	b	.L18724
.L18722:
	ldr	r1, [r5]
.L18724:
	add	r3, r6, r1
	cmp	r3, r10
	ble	.L18738
	mov	r0, r10
	sub	r3, r0
	sub	r3, r6, r3
	mov	r6, r3
	cmp	r3, #0
	bge	.L18738
	mov	r6, #0
.L18738:
	mov	r3, r8
	ldr	r2, [r3]
	add	r3, r7, r2
	cmp	r3, #0x14
	ble	.L1874e
	sub	r3, #0x14
	sub	r3, r7, r3
	mov	r7, r3
	cmp	r3, #0
	bge	.L1874e
	mov	r7, #0
.L1874e:
	cmp	r6, #0
	bge	.L18754
	mov	r6, #0
.L18754:
	cmp	r7, #0
	bge	.L1875a
	mov	r7, #0
.L1875a:
	mov	r0, r10
	sub	r3, r0, r1
	cmp	r6, r3
	bls	.L18764
	mov	r6, r3
.L18764:
	mov	r3, #0x14
	sub	r2, r3, r2
	cmp	r7, r2
	bls	.L1876e
	mov	r7, r2
.L1876e:
	mov	r2, r11
	str	r6, [r2]
	ldr	r3, [sp]
	str	r7, [r3]
.L18776:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801868c

