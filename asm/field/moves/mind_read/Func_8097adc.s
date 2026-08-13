	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097adc  @ 0x08097adc
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r0, =Func_8097868
	ldr	r5, [r3]
	bl	StopTask
	ldr	r2, =0x50001e2
	ldr	r3, .L97b1c	@ 0x7fff
	ldr	r6, .L97b20	@ 0
	strh	r3, [r2]
	ldr	r3, =0x50001e6
	strh	r6, [r3]
	ldr	r3, .L97b24	@ 0x294a
	add	r2, #0x14
	strh	r3, [r2]
	ldr	r3, .L97b28	@ 0x5294
	add	r2, #2
	strh	r3, [r2]
	ldr	r1, =0x205
	ldr	r3, =gState
	add	r2, r3, r1
	ldrb	r0, [r2]
	ldr	r2, =0x206
	add	r3, r2
	ldrb	r1, [r3]
	bl	_SetUIColor
	ldr	r3, =0xea4
	add	r5, r3
	strb	r6, [r5]
	b	.L97b4c

	.align	2, 0
.L97b1c:
	.word	0x7fff
.L97b20:
	.word	0
.L97b24:
	.word	0x294a
.L97b28:
	.word	0x5294
	.pool

.L97b4c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8097adc
