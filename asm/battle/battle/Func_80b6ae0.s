	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6ae0  @ 0x080b6ae0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r2, #0
	mov	r8, r2
	mov	r7, #6
	mov	r0, #0
	cmp	r6, #0
	beq	.Lb6b30
	mov	r0, #0xb6
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.Lb6b02
	mov	r7, #3
.Lb6b02:
	mov	r5, #0x80
	add	r7, #0x80
	cmp	r5, r7
	bge	.Lb6b2a
.Lb6b0a:
	mov	r0, r5
	bl	_GetUnit
	mov	r2, #0x95
	lsl	r2, #1
	add	r3, r0, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lb6b24
	mov	r3, #1
	strh	r5, [r6]
	add	r8, r3
	add	r6, #2
.Lb6b24:
	add	r5, #1
	cmp	r5, r7
	blt	.Lb6b0a
.Lb6b2a:
	ldr	r3, =0xff
	strh	r3, [r6]
	mov	r0, r8
.Lb6b30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b6ae0

