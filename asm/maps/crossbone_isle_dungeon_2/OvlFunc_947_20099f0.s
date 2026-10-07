	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_20099f0
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r5, r1
	ldr	r4, [r5, #8]
	ldr	r1, [r6, #8]
	mov	r0, #0
	cmp	r4, r1
	bne	.Lm947_1a10
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	cmp	r2, r3
	bne	.Lm947_1a10
	ldr	r2, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	cmp	r2, r3
	beq	.Lm947_1a96
.Lm947_1a10:
	ldr	r2, =0xfff00000
	add	r3, r1, r2
	cmp	r3, r4
	bge	.Lm947_1a96
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r1, r2
	cmp	r4, r3
	bge	.Lm947_1a96
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.Lm947_1a2c
	ldr	r1, =0xffff
	add	r3, r1
.Lm947_1a2c:
	asr	r2, r3, #16
	ldr	r3, [r6, #0xc]
	cmp	r3, #0
	bge	.Lm947_1a38
	ldr	r1, =0xffff
	add	r3, r1
.Lm947_1a38:
	asr	r3, #16
	cmp	r2, r3
	bne	.Lm947_1a96
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x10]
	cmp	r3, r2
	ble	.Lm947_1a96
	ldr	r1, =0xffe00000
	add	r3, r1
	cmp	r3, r2
	bge	.Lm947_1a96
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r1, r3, #28
	ldr	r3, [r5, #0x50]
	ldrb	r3, [r3, #9]
	lsl	r3, #28
	lsr	r2, r1, #30
	lsr	r3, #30
	cmp	r2, r3
	bls	.Lm947_1a94
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r4, [r5, #0x50]
	mov	r2, #0xd
	ldrb	r0, [r4, #9]
	neg	r2, r2
	mov	r3, r2
	lsr	r1, #30
	lsl	r1, #2
	and	r3, r0
	orr	r3, r1
	strb	r3, [r4, #9]
	ldr	r3, [r6, #0x50]
	ldr	r0, [r5, #0x50]
	ldrb	r1, [r3, #0x15]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #0x15]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #0x15]
.Lm947_1a94:
	mov	r0, #1
.Lm947_1a96:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_947_20099f0

