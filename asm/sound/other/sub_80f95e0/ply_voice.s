	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_voice  @ 0x080f9b74
	mov	r12, lr
	ldr	r2, [r1, #0x40]
	ldrb	r3, [r2]
	add	r2, #1
	str	r2, [r1, #0x40]
	lsl	r2, r3, #1
	add	r2, r3
	lsl	r2, #2
	ldr	r3, [r0, #0x30]
	add	r2, r3
	ldr	r3, [r2]
	bl	.Lf9a9a
	str	r3, [r1, #0x24]
	ldr	r3, [r2, #4]
	bl	.Lf9a9a
	str	r3, [r1, #0x28]
	ldr	r3, [r2, #8]
	bl	.Lf9a9a
	str	r3, [r1, #0x2c]
	bx	r12
.func_end ply_voice

