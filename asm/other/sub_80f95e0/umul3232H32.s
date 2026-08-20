	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start umul3232H32  @ 0x080f95e0
	adr	r2, .Lf95e4
	bx	r2

	.align	2, 0
	.arm
.Lf95e4:
	umull	r2, r3, r0, r1
	add	r0, r3, #0
	bx	lr
.func_end umul3232H32

