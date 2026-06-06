	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80de9bc
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Func_800c300
	mov	r0, r5
	mov	r1, #0x30
	bl	_Func_800c344
	mov	r0, r6
	mov	r1, #5
	bl	Func_80dea70
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_800c344
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80de9bc

.thumb_func_start Func_80de9f0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6, #8]
	bl	_Func_80b7dd0
	ldr	r5, [r0]
	mov	r1, #2
	mov	r0, r5
	bl	_Func_800c300
	mov	r0, r5
	mov	r1, #0x30
	bl	_Func_800c344
	mov	r0, r6
	mov	r1, #6
	bl	Func_80dea70
	mov	r0, r5
	mov	r1, #0x10
	bl	_Func_800c344
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80de9f0

