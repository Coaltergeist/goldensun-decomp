	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_port  @ 0x080f9c2c
	mov	r12, lr
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	add	r2, #1
	ldr	r0, =REG_SOUND1CNT_L
	add	r0, r3
	bl	.Lf9ab6
	strb	r3, [r0]
	bx	r12
.func_end ply_port

