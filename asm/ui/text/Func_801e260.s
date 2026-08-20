	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801e260  @ 0x0801e260
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r11, r3
	ldr	r3, =iwram_3001e8c
	mov	r7, r2
	ldr	r5, [r3]
	ldr	r2, =0xea2
	lsl	r1, #5
	add	r3, r5, r2
	add	r1, r0
	ldrb	r3, [r3]
	lsl	r1, #1
	mov	r6, #0
	sub	sp, #4
	add	r0, r1, r5
	mov	r8, r3
	cmp	r6, r11
	bcs	.L1e2f0
	mov	r3, #0x20
	sub	r3, r7
	lsl	r3, #1
	str	r3, [sp]
.L1e296:
	mov	r4, #0
	cmp	r4, r7
	bcs	.L1e2e6
	ldr	r3, =0x3ff
	ldr	r2, =0x1ff
	mov	r9, r3
	ldr	r3, =0x27f
	mov	r10, r2
	mov	r2, #0xff
	mov	r14, r3
	mov	r12, r2
.L1e2ac:
	ldrh	r3, [r0]
	mov	r2, r9
	and	r2, r3
	mov	r3, r2
	sub	r3, #0x80
	add	r0, #2
	cmp	r3, #0x7f
	bls	.L1e2ca
	mov	r3, r8
	cmp	r3, #0
	beq	.L1e2e0
	cmp	r2, r10
	bls	.L1e2e0
	cmp	r2, r14
	bhi	.L1e2e0
.L1e2ca:
	mov	r3, r12
	and	r2, r3
	mov	r3, #0x80
	eor	r2, r3
	mov	r3, #0xda
	lsl	r3, #4
	add	r2, r3
	ldrb	r1, [r5, r2]
	mov	r3, #0xfc
	and	r3, r1
	strb	r3, [r5, r2]
.L1e2e0:
	add	r4, #1
	cmp	r4, r7
	bcc	.L1e2ac
.L1e2e6:
	ldr	r2, [sp]
	add	r6, #1
	add	r0, r2
	cmp	r6, r11
	bcc	.L1e296
.L1e2f0:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801e260

