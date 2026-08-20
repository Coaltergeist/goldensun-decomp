	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b26cc  @ 0x080b26cc
	push	{r5, r6, lr}
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	add	r6, r5, r3
	mov	r0, r6
	bl	_GetFlag
	cmp	r0, #0
	bne	.Lb2716
	mov	r0, r6
	bl	_SetFlag
	lsl	r3, r5, #5
	add	r3, r5
	lsl	r2, r3, #1
	ldr	r1, =.Lb41ac
	mov	r3, r2
	add	r3, #0x30
	ldrsh	r0, [r1, r3]
	mov	r6, #0
	cmp	r0, #0
	beq	.Lb2716
	add	r3, r2, r1
	mov	r5, r3
	add	r5, #0x30
.Lb2700:
	mov	r1, #1
	add	r6, #1
	bl	_Func_8078ad0
	cmp	r6, #7
	bgt	.Lb2716
	add	r5, #2
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	cmp	r0, #0
	bne	.Lb2700
.Lb2716:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b26cc

