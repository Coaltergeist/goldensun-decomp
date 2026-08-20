	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_tempo  @ 0x080f9b4c
	mov	r12, lr
	bl	Func_80f9ab4
	lsl	r3, #1
	strh	r3, [r0, #0x1c]
	ldrh	r2, [r0, #0x1e]
	mul	r3, r2
	lsr	r3, #8
	strh	r3, [r0, #0x20]
	bx	r12
.func_end ply_tempo

