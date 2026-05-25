	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80dbb9c
	ldr	r3, =iwram_3001eec
	ldr	r0, [r3]
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r1, [r3, #0xa]
	and	r2, r1
	strh	r2, [r3, #0xa]
	ldrh	r2, [r3, #0xa]
	mov	r2, #0xd3
	lsl	r2, #7
	add	r0, r2
	ldr	r1, =REG_BG2X
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_80dbb9c
