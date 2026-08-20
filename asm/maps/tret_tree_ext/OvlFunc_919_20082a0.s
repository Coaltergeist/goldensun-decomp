	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_919_20082a0
	ldr	r3, =iwram_3001e70
	mov	r1, #0x82
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	mov	r3, #6
	ldrsh	r1, [r2, r3]
	ldr	r0, =.Lm919_610
	mov	r3, #0xc0
	sub	r3, r1
	str	r3, [r0]
	ldr	r3, =.Lm919_614
	mov	r1, #2
	ldrsh	r2, [r2, r1]
	strh	r2, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r1, =.Lm919_616
	lsr	r3, #2
	sub	r2, r3
	strh	r2, [r1]
	bx	lr
.func_end OvlFunc_919_20082a0

