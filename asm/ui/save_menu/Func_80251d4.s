	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80251d4  @ 0x080251d4
	mov	r3, r0
	ldr	r0, =0x3ff
	mov	r2, #0xc0
	and	r1, r0
	and	r0, r3
	lsl	r2, #19
	lsl	r0, #5
	lsl	r1, #5
	add	r0, r2
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x84000008
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	bx	lr
.func_end Func_80251d4
