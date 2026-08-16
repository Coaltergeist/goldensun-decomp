	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecodeMetatileset  @ 0x0800f9f4
	push	{r5, r6, r7, lr}
	sub	r3, r0, #1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r4, r3, #1
	mov	r3, #1
	and	r3, r0
	ldr	r6, =ewram_2010002
	ldr	r5, =ewram_2020000
	cmp	r3, #0
	beq	.Lfa7a
	ldr	r3, =ewram_2010001
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.Lfa38
	cmp	r3, #1
	bgt	.Lfa1c
	cmp	r3, #0
	beq	.Lfa22
	b	.Lfa7a
.Lfa1c:
	cmp	r3, #2
	beq	.Lfa60
	b	.Lfa7a
.Lfa22:
	mov	r1, #0
	cmp	r1, r4
	bge	.Lfa7a
.Lfa28:
	ldrh	r3, [r6]
	add	r1, #1
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	cmp	r1, r4
	blt	.Lfa28
	b	.Lfa7a
.Lfa38:
	ldr	r6, =ewram_2010002
	mov	r1, #0
	mov	r7, #0
	add	r0, r4, r6
	cmp	r1, r4
	bge	.Lfa7a
.Lfa44:
	ldrb	r3, [r6]
	ldrb	r2, [r0]
	lsl	r3, #8
	orr	r3, r2
	eor	r3, r7
	add	r1, #1
	strh	r3, [r5]
	add	r0, #1
	add	r6, #1
	add	r5, #2
	mov	r7, r3
	cmp	r1, r4
	blt	.Lfa44
	b	.Lfa7a
.Lfa60:
	mov	r2, #0
	cmp	r4, #0
	ble	.Lfa7a
	mov	r1, r4
.Lfa68:
	ldrh	r3, [r6]
	sub	r1, #1
	eor	r3, r2
	strh	r3, [r5]
	add	r6, #2
	add	r5, #2
	mov	r2, r3
	cmp	r1, #0
	bne	.Lfa68
.Lfa7a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end DecodeMetatileset
