	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_pend  @ 0x080f9afc
	ldrb	r2, [r1, #2]
	cmp	r2, #0
	beq	.Lf9b0e
	sub	r2, #1
	strb	r2, [r1, #2]
	lsl	r2, #2
	add	r3, r1, r2
	ldr	r2, [r3, #0x44]
	str	r2, [r1, #0x40]
.Lf9b0e:
	bx	lr
.func_end ply_pend

