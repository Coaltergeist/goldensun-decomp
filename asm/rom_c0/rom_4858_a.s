	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8004858
	sub	sp, #4
	ldr	r4, =iwram_3001e50
	mov	r0, sp
	mov	r3, #0
	str	r3, [r0]
	mov	r1, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_3002000
	str	r3, [r4, #4]
	ldr	r3, =ewram_2030000
	add	sp, #4
	str	r3, [r4]
	bx	lr
.func_end Func_8004858

.thumb_func_start Func_800488c
	ldr	r3, =iwram_3001e50
	ldr	r0, =iwram_3007800
	ldr	r3, [r3, #4]
	sub	r0, r3
	bx	lr
.func_end Func_800488c

