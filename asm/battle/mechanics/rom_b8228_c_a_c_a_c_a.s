	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8824  @ 0x080b8824
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	bl	Random
	lsl	r0, #4
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lb886e
	mov	r5, sp
	mov	r0, #1
	mov	r1, r5
	bl	Func_80b6b40
	mov	r6, r0
	mov	r7, #0
	cmp	r6, #0
	beq	.Lb8864
	mov	r8, r5
	mov	r5, #0
.Lb884e:
	mov	r2, r8
	ldrsh	r0, [r5, r2]
	bl	Func_80b8064
	add	r7, #1
	mov	r0, #8
	bl	WaitFrames
	add	r5, #2
	cmp	r7, r6
	bne	.Lb884e
.Lb8864:
	mov	r0, #0x16
	bl	WaitFrames
	mov	r0, #1
	b	.Lb8876
.Lb886e:
	ldr	r0, =0x844
	bl	_Func_80175a0
	mov	r0, #0
.Lb8876:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b8824

