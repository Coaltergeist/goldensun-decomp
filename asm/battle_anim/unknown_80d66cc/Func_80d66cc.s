	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80d66cc  @ 0x080d66cc
	push	{r5, r6, lr}
	ldr	r6, =gBuffer
	ldr	r5, .Ld66f8	@ 0xfff1
	ldr	r1, =ewram_2010082
	ldr	r4, =ewram_200fffa
	mov	r0, #0
.Ld66d8:
	mov	r3, r0
	sub	r3, #8
	cmp	r3, #0x7f
	bhi	.Ld6708
	ldrh	r2, [r6]
	ldrb	r3, [r4]
	sub	r2, r3
	cmp	r2, #0
	bge	.Ld66ec
	mov	r2, #0
.Ld66ec:
	cmp	r2, #0xf0
	ble	.Ld66f2
	mov	r2, #0xf0
.Ld66f2:
	strh	r2, [r1]
	b	.Ld670a

	.align	2, 0
.Ld66f8:
	.word	0xfff1
	.pool

.Ld6708:
	strh	r5, [r1]
.Ld670a:
	add	r0, #1
	add	r1, #2
	add	r4, #1
	cmp	r0, #0xa0
	bne	.Ld66d8
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r0, =ewram_2010082
	ldrh	r2, [r3, #0xa]
	ldr	r1, =REG_WIN0H
	ldr	r2, =0xa2600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80d66cc
