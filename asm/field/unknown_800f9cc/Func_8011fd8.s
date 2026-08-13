	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011fd8  @ 0x08011fd8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r5, [r3]
	mov	r4, r2
	mov	r6, r0
	asr	r1, #16
	asr	r4, #16
	ldr	r0, =gBuffer
	cmp	r5, #0
	beq	.L11ffe
	mov	r2, #3
	and	r2, r6
	lsl	r3, r2, #1
	add	r3, r2
	mov	r2, #0x98
	lsl	r3, #4
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r5, r3]
.L11ffe:
	cmp	r1, #0
	bge	.L12004
	add	r1, #0xf
.L12004:
	mov	r2, r4
	asr	r1, #4
	cmp	r2, #0
	bge	.L1200e
	add	r2, #0xf
.L1200e:
	asr	r3, r2, #4
	lsl	r3, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r0, r3
	ldrb	r3, [r0, #3]
	ldr	r2, =ewram_202c000
	lsl	r3, #2
	add	r3, r2
	ldrb	r3, [r3]
	mov	r0, #0xf
	and	r0, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8011fd8
