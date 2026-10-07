	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b9554  @ 0x080b9554
	push	{r5, r6, r7, lr}
	mov	r7, r9
	push	{r7}
	sub	sp, #4
	mov	r3, sp
	mov	r2, r9
	str	r2, [r3]
	mov	r7, r2
	sub	r3, r7, #4
	ldr	r0, [r3]
	mov	r1, #0x14
	bl	Func_80063bc
	mov	r3, #1
	mov	r5, #0x96
	neg	r3, r3
	mov	r6, #0
	lsl	r5, #1
	cmp	r0, r3
	bne	.Lb95a0
	b	.Lb95f4
.Lb957e:
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb959e
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95a0
	b	.Lb95e2
.Lb959e:
	mov	r6, #0
.Lb95a0:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb957e
	mov	r3, r7
	sub	r3, #8
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lb95f2
	sub	r3, #4
	ldr	r0, [r3]
	bl	Func_80063bc
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lb95ea
	b	.Lb95f4
.Lb95c4:
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	blt	.Lb95e2
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.Lb95e8
	add	r6, #1
	cmp	r6, #0x18
	ble	.Lb95ea
.Lb95e2:
	mov	r0, #1
	neg	r0, r0
	b	.Lb95f4
.Lb95e8:
	mov	r6, #0
.Lb95ea:
	bl	Func_80064f4
	cmp	r0, #0
	bne	.Lb95c4
.Lb95f2:
	mov	r0, #0
.Lb95f4:
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b9554
