	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_c01bc, "ax", %progbits

.thumb_func_start Func_80c0228  @ 0x080c0228
	push	{r5, lr}
	ldr	r3, =iwram_3001ef8
	ldr	r3, [r3]
	ldr	r0, [r3]
	cmp	r0, #0x4f
	bhi	.Lc0286
	mov	r3, #7
	ldr	r2, =0xf081
	and	r3, r0
	add	r4, r3, r2
	mov	r3, r0
	cmp	r0, #0
	bge	.Lc0244
	add	r3, r0, #7
.Lc0244:
	asr	r3, #3
	mov	r2, #0xd
	sub	r2, r3
	ldr	r5, =0x6006000
	lsl	r3, r2, #6
	mov	r1, #0
	add	r2, r3, r5
.Lc0252:
	add	r1, #1
	strh	r4, [r2]
	add	r2, #2
	cmp	r1, #0x20
	bne	.Lc0252
	mov	r3, #0x80
	lsl	r3, #4
	orr	r4, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc026a
	add	r3, #7
.Lc026a:
	asr	r3, #3
	mov	r2, r3
	add	r2, #0xd
	cmp	r2, #0x14
	bhi	.Lc0286
	ldr	r0, =0x6006000
	lsl	r3, r2, #6
	mov	r1, #0
	add	r2, r3, r0
.Lc027c:
	add	r1, #1
	strh	r4, [r2]
	add	r2, #2
	cmp	r1, #0x20
	bne	.Lc027c
.Lc0286:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80c0228
