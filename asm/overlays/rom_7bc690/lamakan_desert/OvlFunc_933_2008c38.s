	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2008c38
	push	{lr}
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	ldr	r0, =0x5b
	mov	r1, #5
	bl	__Func_8091f90
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x35
	mov	r1, #5
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008c38

