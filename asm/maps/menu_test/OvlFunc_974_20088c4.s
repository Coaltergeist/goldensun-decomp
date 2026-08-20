	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_20088c4
	push	{lr}
	ldr	r0, =0xc1d
	mov	r1, #1
	sub	sp, #0x100
	bl	__Func_801776c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #2
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #3
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #4
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #5
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #6
	mov	r0, #0
	bl	__GiveDjinni
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #1
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #2
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #3
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #4
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #5
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #0
	mov	r2, #6
	mov	r0, #0
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #1
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #2
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #3
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #4
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #5
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #6
	mov	r0, #1
	bl	__GiveDjinni
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #1
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #2
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #3
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #4
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #5
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #2
	mov	r2, #6
	mov	r0, #1
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #1
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #2
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #3
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #4
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #5
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #6
	mov	r0, #3
	bl	__GiveDjinni
	mov	r1, #1
	mov	r2, #0
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #1
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #2
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #3
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #4
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #5
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #1
	mov	r2, #6
	mov	r0, #3
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #0
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #1
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #2
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #3
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #4
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #5
	mov	r0, #2
	bl	__GiveDjinni
	mov	r1, #3
	mov	r2, #0
	mov	r0, #2
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #1
	mov	r0, #2
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #2
	mov	r0, #2
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #3
	mov	r0, #2
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #4
	mov	r0, #2
	bl	__SetDjinni
	mov	r1, #3
	mov	r2, #5
	mov	r0, #2
	bl	__SetDjinni
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	add	sp, #0x100
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_20088c4

