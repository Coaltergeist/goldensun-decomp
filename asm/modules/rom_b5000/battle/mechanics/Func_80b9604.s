	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9604  @ 0x080b9604
	push	{r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r1, r9
	sub	sp, #4
	mov	r8, r1
	mov	r3, sp
	mov	r7, r8
	str	r1, [r3]
	sub	r7, #4
	ldr	r0, [r7]
	bl	Func_8006408
	mov	r2, #1
	mov	r5, #0x96
	neg	r2, r2
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r2
	bne	.Lb965a
	b	.Lb970c
.Lb9630:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb9658
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb965a
	b	.Lb9704
.Lb9658:
	mov	r6, #0
.Lb965a:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb9630
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, #0x14
	bne	.Lb9704
	mov	r3, #0x10
	neg	r3, r3
	add	r3, r8
	mov	r9, r3
	ldr	r3, [r7]
	ldr	r2, [r3]
	mov	r1, r9
	str	r2, [r1]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lb970a
	mov	r3, r8
	mov	r2, r8
	sub	r3, #0x14
	sub	r2, #0xc
	ldr	r3, [r3]
	ldr	r0, [r2]
	lsl	r3, #4
	add	r0, r3
	bl	Func_8006408
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb96de
	b	.Lb970c
.Lb969e:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r8, r3
	mov	r3, r9
	ldr	r0, [r3]
	lsl	r0, #4
	add	r0, #0x13
	mov	r1, #0x14
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	bhi	.Lb9704
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb9704
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb96dc
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb96de
	b	.Lb9704
.Lb96dc:
	mov	r6, #0
.Lb96de:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb969e
	mov	r1, r9
	ldr	r0, [r1]
	ldr	r3, =ewram_2002238
	lsl	r0, #4
	ldrh	r3, [r3]
	add	r0, #0x13
	mov	r1, #0x14
	mov	r8, r3
	bl	__udivsi3
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #2
	cmp	r8, r3
	beq	.Lb970a
.Lb9704:
	mov	r0, #1
	neg	r0, r0
	b	.Lb970c
.Lb970a:
	mov	r0, #0
.Lb970c:
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r9, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9604
