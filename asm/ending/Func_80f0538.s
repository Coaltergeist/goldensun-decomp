	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f0538  @ 0x080f0538
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =ewram_2004c00
	ldrh	r3, [r3]
	mov	r4, #7
	and	r4, r3
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	bge	.Lf0552
	add	r2, #7
.Lf0552:
	ldr	r3, .Lf0588	@ 0x1f
	asr	r2, #3
	and	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r1, r3, #3
	ldr	r3, =ewram_2004c0c
	ldr	r3, [r3]
	mov	r0, r3
	neg	r3, r4
	add	r3, #0x10
	ldr	r2, =0x40004000
	mov	r14, r3
	mov	r3, #0xc0
	lsl	r3, #2
	mov	r7, #0x80
	add	r0, #0xc0
	mov	r6, #0
	mov	r10, r2
	mov	r8, r3
	lsl	r7, #14
.Lf057c:
	mov	r5, #0xc0
	mov	r12, r14
	lsl	r5, #13
	mov	r4, #5
	b	.Lf0598

	.align	2, 0
.Lf0588:
	.word	0x1f
	.pool

.Lf0598:
	mov	r3, r12
	mov	r2, r10
	orr	r3, r5
	orr	r3, r2
	mov	r2, r0
	stmia	r2!, {r3}
	str	r1, [r2]
	add	r1, #4
	add	r0, #8
	cmp	r1, r8
	bne	.Lf05b0
	mov	r1, #0
.Lf05b0:
	sub	r4, #1
	add	r5, r7
	cmp	r4, #0
	bge	.Lf0598
	mov	r3, #8
	add	r6, #1
	add	r14, r3
	cmp	r6, #0xf
	ble	.Lf057c
	ldr	r2, =ewram_2004c0c
	mov	r1, #0xe0
	ldr	r0, [r2]
	ldr	r3, =REG_DMA3SAD
	lsl	r1, #19
	ldr	r2, =0x84000100
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =ewram_2004c04
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lf05f0
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.Lf05f0
	ldr	r2, =ewram_2004c00
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.Lf05f0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f0538

