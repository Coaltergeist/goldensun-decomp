	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_1219c, "ax", %progbits

.thumb_func_start Func_8012204  @ 0x08012204
	push	{r5, lr}
	ldr	r4, [r0, #8]
	ldr	r3, [r0]
	asr	r2, r4, #17
	asr	r1, r3, #17
	mov	r3, r2
	cmp	r2, #0
	bge	.L12216
	add	r3, r2, #7
.L12216:
	asr	r3, #3
	mov	r5, #0x3f
	and	r3, r5
	lsl	r0, r3, #6
	mov	r3, r1
	cmp	r1, #0
	bge	.L12226
	add	r3, r1, #7
.L12226:
	asr	r3, #3
	and	r3, r5
	add	r5, r0, r3
	lsr	r3, r4, #31
	add	r3, r2, r3
	asr	r3, #1
	mov	r2, #3
	and	r3, r2
	lsl	r0, r3, #1
	mov	r3, r1
	cmp	r1, #0
	bge	.L12240
	add	r3, r1, #3
.L12240:
	mov	r2, #1
	asr	r3, #2
	and	r3, r2
	ldr	r2, =0x6005000
	add	r4, r0, r3
	add	r3, r5, r2
	ldrb	r3, [r3]
	ldr	r2, =ewram_202c800
	lsl	r3, #3
	add	r3, r4
	add	r3, r2
	ldrb	r2, [r3]
	cmp	r2, #0
	beq	.L1226e
	mov	r3, #2
	and	r3, r1
	lsr	r0, r2, #4
	cmp	r3, #0
	bne	.L1226a
	mov	r0, #0xf
	and	r0, r2
.L1226a:
	cmp	r0, #0
	bne	.L12296
.L1226e:
	ldr	r2, =0x6004000
	add	r3, r5, r2
	ldrb	r3, [r3]
	ldr	r2, =ewram_202c000
	lsl	r3, #3
	add	r3, r4
	add	r3, r2
	ldrb	r2, [r3]
	cmp	r2, #0
	beq	.L12294
	mov	r3, #2
	and	r3, r1
	lsr	r0, r2, #4
	cmp	r3, #0
	bne	.L12290
	mov	r0, #0xf
	and	r0, r2
.L12290:
	cmp	r0, #0
	bne	.L12296
.L12294:
	mov	r0, #7
.L12296:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8012204
