	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start ply_goto  @ 0x080f9ac0
	push	{lr}
.Lf9ac2:
	ldr	r2, [r1, #0x40]
	ldrb	r0, [r2, #3]
	lsl	r0, #8
	ldrb	r3, [r2, #2]
	orr	r0, r3
	lsl	r0, #8
	ldrb	r3, [r2, #1]
	orr	r0, r3
	lsl	r0, #8
	bl	Func_80f9a98
	orr	r0, r3
	str	r0, [r1, #0x40]
	pop	{r0}
	bx	r0
.func_end ply_goto

