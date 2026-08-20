	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801d94c  @ 0x0801d94c
	push	{r5, lr}
	ldr	r3, =iwram_3001ea0
	ldr	r2, =0x5a4
	ldr	r5, [r3]
	add	r0, r5, r2
	bl	_Func_80b08b8
	ldr	r2, =0x574
	add	r3, r5, r2
	ldrh	r3, [r3]
	add	r2, #0x9c
	lsl	r3, #2
	add	r3, r2
	ldr	r0, [r5, r3]
	bl	Func_80217a4
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_801d94c

