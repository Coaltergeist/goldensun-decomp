	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8006384  @ 0x08006384
	push	{r5, r6, lr}
	ldr	r1, =iwram_3001f64
	mov	r5, r0
	ldrh	r2, [r1]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	beq	.L63a6
	mov	r6, r1
.L6396:
	mov	r0, #1
	bl	WaitFrames
	ldrh	r2, [r6]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	bne	.L6396
.L63a6:
	ldr	r3, =REG_SIOCNT
	ldr	r0, [r3]
	lsl	r0, #26
	lsr	r0, #30
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8006384

.thumb_func_start Func_80063bc  @ 0x080063bc
	push	{r5, r6, r7, lr}
	ldr	r5, =ewram_2002080
	ldr	r4, [r5]
	mov	r6, r1
	ldr	r7, =ewram_2002220
	cmp	r4, #0
	beq	.L63d0
	mov	r0, #1
	neg	r0, r0
	b	.L63ec
.L63d0:
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	mov	r3, #0x80
	strb	r3, [r7, #1]
	ldr	r3, =ewram_2002008
	strh	r6, [r3]
	ldr	r3, =ewram_20023a4
	strb	r4, [r3]
	mov	r3, #1
	str	r0, [r5]
	strb	r3, [r7]
	strh	r1, [r2]
	mov	r0, #0
.L63ec:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80063bc

.thumb_func_start Func_8006408  @ 0x08006408
	push	{r5, r6, lr}
	ldr	r5, =ewram_20023ac
	ldr	r4, [r5]
	ldr	r6, =ewram_2002220
	cmp	r4, #0
	beq	.L641a
	mov	r0, #1
	neg	r0, r0
	b	.L6438
.L641a:
	ldr	r2, =REG_IME
	ldrh	r1, [r2]
	strh	r2, [r2]
	mov	r3, #0x81
	strb	r3, [r6, #1]
	ldr	r3, =ewram_2002238
	strh	r4, [r3]
	mov	r3, #1
	strb	r3, [r6]
	str	r0, [r5]
	ldr	r3, =ewram_20023a4
	ldr	r0, .L6440	@ 0
	strb	r0, [r3]
	strh	r1, [r2]
	mov	r0, #0
.L6438:
	pop	{r5, r6}
	pop	{r1}
	bx	r1

	.align	2, 0
.L6440:
	.word	0
.func_end Func_8006408

