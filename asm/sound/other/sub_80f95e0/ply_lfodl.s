	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_lfodl  @ 0x080f9bf4
	mov	r12, lr
	bl	Func_80f9ab4
	strb	r3, [r1, #0x1b]
	bx	r12
.func_end ply_lfodl

