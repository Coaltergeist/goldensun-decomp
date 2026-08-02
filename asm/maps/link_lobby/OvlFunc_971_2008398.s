	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008398
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r2, #0xaa
	lsl	r2, #1
	mov	r8, r2
	mov	r0, r8
	sub	sp, #0x30
	bl	__Func_8004970
	mov	r7, #0xe1
	mov	r3, #0
	mov	r11, r0
	mov	r9, r3
	lsl	r7, #2
	mov	r10, r3
	b	.L474
.L3c2:
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	cmp	r3, r8
	bls	.L3cc
	b	.L4dc
.L3cc:
	mov	r0, #1
	sub	r7, #1
	bl	__WaitFrames
	cmp	r7, #0
	blt	.L3e4
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L3ea
.L3e4:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4a0
.L3ea:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L3c2
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r12, r3
	cmp	r12, r8
	bne	.L4dc
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L40c
	mov	r3, #1
	add	r9, r3
.L40c:
	mov	r0, #2
	bl	__WaitFrames
	ldr	r0, =0x80c
	mov	r1, sp
	bl	__DecompressString2
	mov	r0, #0
	mov	r5, sp
	ldrh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L434
	mov	r2, r5
.L426:
	add	r0, #1
	cmp	r0, #4
	bgt	.L434
	add	r2, #2
	ldrh	r3, [r2]
	cmp	r3, #0
	bne	.L426
.L434:
	mov	r4, r0
	mov	r0, #0xe
	cmp	r0, r4
	blt	.L454
	sub	r3, r6, r4
	mov	r1, r6
	mov	r2, r3
	add	r1, #0xe
	add	r2, #0xe
.L446:
	ldrb	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	sub	r2, #1
	sub	r1, #1
	cmp	r0, r4
	bge	.L446
.L454:
	cmp	r4, #0
	ble	.L46c
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
.L45e:
	ldrh	r3, [r2]
	sub	r0, #1
	strb	r3, [r1]
	add	r2, #2
	add	r1, #1
	cmp	r0, #0
	bne	.L45e
.L46c:
	mov	r3, #0
	mov	r2, #1
	strb	r3, [r6, #0xe]
	add	r10, r2
.L474:
	mov	r3, r10
	cmp	r3, #2
	bgt	.L4ec
	mov	r0, r10
	add	r0, #0x80
	bl	__GetUnit
	mov	r6, r0
	bl	__Func_8006408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L3ea
	b	.L514
.L494:
	ldr	r3, =ewram_2002238
	mov	r2, #0xa0
	ldrh	r3, [r3]
	lsl	r2, #1
	cmp	r3, r2
	ble	.L4a8
.L4a0:
	mov	r3, #1
	neg	r3, r3
	mov	r9, r3
	b	.L516
.L4a8:
	mov	r0, #1
	sub	r7, #1
	bl	__WaitFrames
	cmp	r7, #0
	blt	.L4c0
	ldr	r3, =iwram_3001f64
	ldrh	r2, [r3]
	mov	r3, #3
	and	r3, r2
	cmp	r3, #3
	beq	.L4c6
.L4c0:
	add	r5, #1
	cmp	r5, #0x18
	bgt	.L4dc
.L4c6:
	bl	__Func_80064f4
	cmp	r0, #0
	bne	.L494
	ldr	r3, =ewram_2002238
	ldrh	r3, [r3]
	mov	r12, r3
	mov	r3, #0xa0
	lsl	r3, #1
	cmp	r12, r3
	beq	.L4e4
.L4dc:
	mov	r2, #1
	neg	r2, r2
	mov	r9, r2
	b	.L516
.L4e4:
	mov	r0, #2
	bl	__WaitFrames
	b	.L516
.L4ec:
	mov	r0, r11
	bl	__free
	mov	r3, #0xa0
	lsl	r3, #1
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8004970
	mov	r11, r0
	mov	r0, #1
	bl	__Func_8077330
	bl	__Func_8006408
	mov	r2, #1
	neg	r2, r2
	mov	r5, #0
	cmp	r0, r2
	bne	.L4c6
.L514:
	mov	r9, r0
.L516:
	mov	r0, r11
	bl	__free
	mov	r0, r9
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008398
