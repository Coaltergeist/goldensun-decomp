	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80e291c
	push	{lr}
	mov	r1, #0
	bl	Func_80e2974
	pop	{r0}
	bx	r0
.func_end Func_80e291c

.thumb_func_start Func_80e2928
	push	{lr}
	mov	r1, #0
	bl	Func_80e2974
	pop	{r0}
	bx	r0
.func_end Func_80e2928

.thumb_func_start Func_80e2934
	push	{lr}
	mov	r1, #1
	bl	Func_80e2974
	pop	{r0}
	bx	r0
.func_end Func_80e2934

.thumb_func_start Func_80e2940
	push	{lr}
	mov	r1, #2
	bl	Func_80e2974
	pop	{r0}
	bx	r0
.func_end Func_80e2940

