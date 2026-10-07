	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f9ab4  @ 0x080f9ab4
	ldr	r2, [r1, #0x40]
.Lf9ab6:
	add	r3, r2, #1
	str	r3, [r1, #0x40]
	ldrb	r3, [r2]
	b	.Lf9a9a
.func_end Func_80f9ab4

