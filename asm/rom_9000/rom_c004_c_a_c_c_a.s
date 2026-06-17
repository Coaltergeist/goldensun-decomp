	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_800c5b4  @ 0x0800c5b4
	push	{lr}
	ldr	r0, =Func_800c62c
	bl	Func_80042c8
	ldr	r0, =Func_800c880
	bl	Func_80042c8
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	_Func_8091200
	mov	r0, #1
	bl	_Func_8091254
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x80
	lsl	r1, #19
	ldrh	r2, [r1]
	ldr	r3, =0xf1ff
	and	r3, r2
	ldr	r2, .Lc5ec	@ 0x1000
	orr	r3, r2
	strh	r3, [r1]
	pop	{r0}
	bx	r0

	.align	2, 0
.Lc5ec:
	.word	0x1000
.func_end Func_800c5b4

