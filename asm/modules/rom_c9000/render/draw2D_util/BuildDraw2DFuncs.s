	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start BuildDraw2DFuncs  @ 0x080cef64
	push	{r5, r6, lr}
	sub	sp, #4
	mov	r6, r1
	cmp	r0, #0
	bne	.Lcef96
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	mov	r0, #0x2f
	str	r3, [r6]
	mov	r1, #7
	mov	r3, #3
	mov	r2, #7
	add	r5, #0xbc
	str	r3, [sp]
	b	.Lcefbe
.Lcef96:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	BuildDraw2DFuncEx
	ldr	r5, =gPtrs
	mov	r3, r5
	add	r3, #0xb8
	ldr	r3, [r3]
	str	r3, [r6]
	mov	r3, #3
	str	r3, [sp]
	mov	r0, #0x2f
	mov	r3, #7
	mov	r1, #7
	mov	r2, #7
	add	r5, #0xbc
.Lcefbe:
	bl	BuildDraw2DFuncEx
	ldr	r3, [r5]
	str	r3, [r6, #4]
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end BuildDraw2DFuncs
