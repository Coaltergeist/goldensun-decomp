	.include "macros.inc"

.thumb_func_start OvlFunc_958_20091c8
	ldr	r2, [r0, #0x50]
	ldr	r1, =0xfffffc00
	ldrh	r3, [r2, #0x1e]
	add	r3, r1
	strh	r3, [r2, #0x1e]
	bx	lr
.func_end OvlFunc_958_20091c8

