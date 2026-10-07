	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200a844
	push	{r5, r6, lr}
	ldr	r6, =0x1f
.Lm924_2848:
	ldr	r0, =0x5000050
	mov	r5, #0
	mov	r4, #0
	b	.Lm924_2858

	.pool_aligned

.Lm924_2858:
	ldrh	r3, [r0]
	mov	r1, #0x1f
	and	r1, r3
	ldrh	r3, [r0]
	lsr	r2, r3, #5
	ldrh	r3, [r0]
	lsr	r3, #10
	and	r2, r6
	and	r3, r6
	cmp	r1, #0x1f
	bne	.Lm924_287a
	cmp	r2, #0x1f
	bne	.Lm924_287a
	cmp	r3, #0x1f
	bne	.Lm924_287a
	add	r5, #1
	b	.Lm924_2896
.Lm924_287a:
	cmp	r1, #0x1e
	bgt	.Lm924_2880
	add	r1, #1
.Lm924_2880:
	cmp	r2, #0x1e
	bgt	.Lm924_2886
	add	r2, #1
.Lm924_2886:
	cmp	r3, #0x1e
	bgt	.Lm924_288c
	add	r3, #1
.Lm924_288c:
	lsl	r3, #10
	lsl	r2, #5
	orr	r3, r2
	orr	r3, r1
	strh	r3, [r0]
.Lm924_2896:
	add	r4, #1
	add	r0, #2
	cmp	r4, #7
	bls	.Lm924_2858
	mov	r0, #2
	bl	__WaitFrames
	cmp	r5, #7
	bls	.Lm924_2848
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200a844

