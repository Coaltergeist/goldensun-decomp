	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80798b4  @ 0x080798b4
	push	{lr}
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r3
	ldrb	r0, [r0]
	bl	GetEnemyInfo
	add	r0, #0x34
	ldrb	r1, [r0]
	cmp	r1, #0x2b
	bls	.L798cc
	mov	r1, #0
.L798cc:
	lsl	r2, r1, #1
	ldr	r3, =X88e38
	add	r2, r1
	lsl	r2, #3
	ldr	r0, [r3, r2]
	pop	{r1}
	bx	r1
.func_end Func_80798b4

