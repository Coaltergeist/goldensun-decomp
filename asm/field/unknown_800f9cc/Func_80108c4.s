	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80108c4  @ 0x080108c4
	ldr	r3, =iwram_3001e70
	ldr	r4, [r3]
	mov	r2, #0xe0
	ldrh	r1, [r4, #0x14]
	ldr	r3, =0xf1ff
	lsl	r2, #4
	and	r2, r0
	and	r3, r1
	orr	r3, r2
	strh	r3, [r4, #0x14]
	bx	lr
.func_end Func_80108c4
