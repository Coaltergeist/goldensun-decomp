	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ece7c
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0xc3333
	mov	r2, #0x18
	bl	_Func_80b82c4
	mov	r0, #0x1d
	bl	Func_80030f8
	mov	r3, #4
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	Func_80d4604
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80ece7c

.thumb_func_start Func_80eceac
	push	{r5, lr}
	mov	r5, r0
	mov	r3, #0x24
	ldrsh	r1, [r5, r3]
	ldr	r0, [r5, #8]
	ldr	r3, =0x73333
	mov	r2, #0x18
	bl	_Func_80b82c4
	mov	r0, #0xc
	bl	Func_80030f8
	mov	r3, #3
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x18]
	bl	Func_80d4604
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80eceac

