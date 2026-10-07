	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008128
	ldr	r3, =.L1940
	ldr	r2, =CHAR_ARRAY_ARRAY_971__02009928
	lsl	r1, r0, #2
	ldrb	r3, [r3, r0]
	ldr	r4, =ewram_2002224
	ldr	r2, [r1, r2]
	lsl	r3, #2
	str	r2, [r3, r4]
	bx	lr
.func_end OvlFunc_971_2008128
