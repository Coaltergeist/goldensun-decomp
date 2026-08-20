	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a2144  @ 0x080a2144
	push	{r5, lr}
	mov	r3, #0xa0
	lsl	r0, #5
	lsl	r3, #19
	add	r5, r0, r3
	mov	r1, r5
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x50001e0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r0, =0x50001e0
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r2, [r5, #8]
	lsl	r3, r2, #16
	lsr	r4, r3, #26
	lsr	r1, r3, #21
	ldr	r3, .La218c	@ 0x1f
	mov	r0, #0x1f
	add	r4, #9
	and	r1, r3
	and	r0, r2
	cmp	r4, #0x1f
	bls	.La217a
	mov	r4, #0x1f
.La217a:
	add	r1, #9
	cmp	r1, #0x1f
	bls	.La2182
	mov	r1, #0x1f
.La2182:
	add	r0, #9
	cmp	r0, #0x1f
	bls	.La21a0
	mov	r0, #0x1f
	b	.La21a0

	.align	2, 0
.La218c:
	.word	0x1f
	.pool

.La21a0:
	lsl	r3, r4, #10
	lsl	r2, r1, #5
	orr	r3, r2
	orr	r3, r0
	strh	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80a2144

