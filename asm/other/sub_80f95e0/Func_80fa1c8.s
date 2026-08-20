	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80fa1c8  @ 0x080fa1c8
	ldr	r2, [r1, #0x40]
	add	r3, r2, #1
	str	r3, [r1, #0x40]
	ldrb	r3, [r2]
	bx	lr
.func_end Func_80fa1c8

