	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_2008f30
	ldr	r3, =iwram_3001ed8
	mov	r2, #0xf0
	ldr	r0, [r3]
	lsl	r2, #4
	add	r3, r0, r2
	ldrb	r2, [r3]
	lsl	r3, r2, #4
	sub	r3, r2
	lsl	r3, #7
	add	r0, r3
	ldr	r3, =REG_DMA0SAD
	ldr	r2, =0xc5ff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r2, =0x7fff
	ldrh	r4, [r3, #0xa]
	and	r2, r4
	strh	r2, [r3, #0xa]
	ldr	r1, =REG_BG3HOFS
	ldrh	r2, [r3, #0xa]
	ldmia	r0!, {r2}
	str	r2, [r1]
	ldr	r2, =0xa6600001
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end OvlFunc_970_2008f30

