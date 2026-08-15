	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800615c  @ 0x0800615c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #8
	mov	r3, #0
	mov	r4, r0
	str	r3, [sp, #4]
	ldr	r2, =REG_IME
	strh	r3, [r2]
	ldr	r3, =ewram_2002240
	mov	r1, r3
	add	r1, #0x40
	mov	r7, #3
.L617a:
	ldr	r2, [r1, #0x10]
	ldr	r3, [r1]
	sub	r7, #1
	str	r3, [r1, #0x10]
	stmia	r1!, {r2}
	cmp	r7, #0
	bge	.L617a
	ldr	r1, =ewram_2002244
	ldr	r3, [r1]
	mov	r0, #0
	mov	r14, sp
	str	r3, [sp]
	str	r0, [r1]
	mov	r2, #1
	ldr	r3, =REG_IME
	strh	r2, [r3]
	sub	r3, r1, #4
	mov	r9, r3
	sub	r2, #2
	mov	r6, r1
	strb	r0, [r3, #3]
	mov	r7, #0
	mov	r10, r9
	mov	r8, r2
	add	r6, #0x4c
	mov	r12, r4
.L61ae:
	ldr	r2, [r6]
	mov	r0, #0
	mov	r1, #0
.L61b4:
	ldrh	r3, [r2]
	add	r1, #1
	add	r2, #2
	add	r0, r3
	cmp	r1, #0xd
	bls	.L61b4
	mov	r3, r14
	ldrb	r4, [r3, r7]
	cmp	r4, #1
	bne	.L61ee
	lsl	r5, r0, #16
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r0, [r6]
	ldr	r3, =REG_DMA3SAD
	add	r0, #4
	mov	r1, r12
	ldr	r2, =0x84000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r1, r10
	ldrb	r3, [r1, #3]
	lsl	r4, r7
	ldr	r2, =ewram_2002240
	orr	r4, r3
	strb	r4, [r1, #3]
	mov	r9, r2
	b	.L61f0
.L61ee:
	lsl	r5, r0, #16
.L61f0:
	asr	r3, r5, #16
	cmp	r3, r8
	bne	.L6202
	ldr	r2, [r6]
	ldrh	r3, [r2, #2]
	mvn	r3, r3
	strh	r3, [r2, #2]
	ldr	r3, =ewram_2002240
	mov	r9, r3
.L6202:
	mov	r1, #0x18
	add	r7, #1
	add	r6, #4
	add	r12, r1
	cmp	r7, #1
	ble	.L61ae
	mov	r2, r9
	ldrb	r3, [r2, #2]
	ldrb	r2, [r2, #3]
	mov	r1, r9
	ldrb	r0, [r1, #3]
	orr	r3, r2
	strb	r3, [r1, #2]
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800615c
