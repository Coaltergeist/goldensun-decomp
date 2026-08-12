	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80217a4  @ 0x080217a4
	push	{r5, lr}
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #7
	lsr	r3, #1
	ldr	r1, =.L37230
	and	r3, r2
	lsl	r3, #2
	ldr	r1, [r1, r3]
	sub	sp, #8
	mov	r5, r0
	cmp	r1, #0
	bge	.L217c0
	add	r1, #0xff
.L217c0:
	asr	r1, #8
	cmp	r5, #0
	beq	.L21840
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	lsl	r1, #16
	ldr	r2, =0xffff
	lsr	r1, #16
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	ldrb	r2, [r5, #0x17]
	and	r0, r3
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	orr	r3, r0
	strb	r3, [r5, #0x17]
	ldrb	r3, [r5, #0x15]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #0x15]
	ldrh	r2, [r5, #6]
	ldr	r3, =0xfff0
	add	r2, r3
	ldr	r3, .L21824	@ 0x1ff
	ldrh	r1, [r5, #0x16]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #0x16]
	ldrb	r3, [r5, #8]
	add	r3, #0xf0
	strb	r3, [r5, #0x14]
	mov	r3, #0xfc
	strb	r3, [r5, #0xf]
	b	.L21840

	.align	2, 0
.L21824:
	.word	0x1ff
	.pool

.L21840:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80217a4

.thumb_func_start Func_8021848  @ 0x08021848
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =.L37250
	ldr	r3, =Func_80008d8
	mov	r7, #0
	mov	r8, r2
	mov	r10, r3
.L2185a:
	lsl	r3, r7, #1
	add	r3, r7
	ldr	r2, =0x6006280
	lsl	r3, #7
	mov	r6, #0
	add	r5, r3, r2
.L21866:
	mov	r0, r5
	mov	r1, #0x40
	ldr	r2, =0x44444444
	bl	_call_via_r10
	mov	r4, #1
	add	r0, r5, #4
.L21874:
	mov	r1, r6
	cmp	r7, #1
	bne	.L2187e
	cmp	r4, #1
	ble	.L218a8
.L2187e:
	cmp	r7, #0
	bne	.L21890
	sub	r3, r4, #2
	cmp	r6, r3
	ble	.L21890
	mov	r1, r3
	cmp	r1, #0
	bge	.L21890
	mov	r1, #0
.L21890:
	lsl	r1, #3
	mov	r3, r8
	ldr	r3, [r3, r1]
	ldr	r2, [r0]
	eor	r2, r3
	str	r2, [r0]
	add	r1, #4
	mov	r3, r8
	ldr	r2, [r0, #0x20]
	ldr	r1, [r3, r1]
	eor	r2, r1
	str	r2, [r0, #0x20]
.L218a8:
	add	r4, #1
	add	r0, #4
	cmp	r4, #7
	ble	.L21874
	add	r6, #1
	add	r5, #0x40
	cmp	r6, #5
	ble	.L21866
	add	r7, #1
	cmp	r7, #1
	ble	.L2185a
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8021848

