	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808f498  @ 0x0808f498
	ldr	r3, =iwram_3001ecc
	ldr	r2, =0x539
	ldr	r0, [r3]
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #5
	add	r3, r2
	lsl	r3, #2
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	mov	r4, #0x80
	lsl	r4, #19
	ldrh	r2, [r3, #0xa]
	ldr	r1, .L8f4f8	@ 0x6000
	ldrh	r2, [r4]
	orr	r2, r1
	strh	r2, [r4]
	ldrh	r1, [r0]
	ldr	r2, =REG_WININ
	strh	r1, [r2]
	add	r0, #2
	ldrh	r1, [r0]
	add	r2, #2
	strh	r1, [r2]
	add	r0, #2
	ldrh	r2, [r0]
	ldr	r1, =REG_WIN0H
	strh	r2, [r1]
	add	r0, #2
	ldrh	r4, [r0]
	ldr	r2, =REG_WIN1H
	strh	r4, [r2]
	mov	r4, #0xa0
	add	r2, #2
	strh	r4, [r2]
	add	r2, #2
	strh	r4, [r2]
	b	.L8f51c

	.align	2, 0
.L8f4f8:
	.word	0x6000
	.pool

.L8f51c:
	add	r0, #2
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_808f498

