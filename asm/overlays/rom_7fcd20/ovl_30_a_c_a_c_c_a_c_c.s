	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008198
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd4c
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008198

.thumb_func_start OvlFunc_974_20081b8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xd77
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20081b8

.thumb_func_start OvlFunc_974_20081d8
	push	{lr}
	ldr	r3, =0xc9b
	ldr	r1, =0xcc6
	ldr	r0, =0xda2
	sub	r1, r3
	bl	OvlFunc_974_200807c
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20081d8
