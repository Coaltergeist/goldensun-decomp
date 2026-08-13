	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8097a7c  @ 0x08097a7c
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea4
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
	ldr	r2, .L97ac4	@ 0x739c
	ldr	r3, =0x50001e2
	strh	r2, [r3]
	add	r3, #4
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, #0x90
	add	r3, #2
	strh	r2, [r3]
	lsl	r1, #3
	ldr	r0, =Func_8097868
	bl	StartTask
	b	.L97ad8

	.align	2, 0
.L97ac4:
	.word	0x739c
	.pool

.L97ad8:
	pop	{r0}
	bx	r0
.func_end Func_8097a7c
