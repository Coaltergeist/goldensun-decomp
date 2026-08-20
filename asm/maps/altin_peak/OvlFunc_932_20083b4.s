	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20083b4
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4f
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20083b4

