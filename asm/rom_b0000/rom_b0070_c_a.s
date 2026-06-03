	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b26cc
	push	{r5, r6, lr}
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	add	r6, r5, r3
	mov	r0, r6
	bl	_Func_8079338
	cmp	r0, #0
	bne	.Lb2716
	mov	r0, r6
	bl	_Func_8079358
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

.thumb_func_start Func_80b2720
	push	{r5, lr}
	lsl	r3, r0, #5
	add	r3, r0
	mov	r5, r1
	ldr	r1, =.Lb41ac
	lsl	r2, r3, #1
	ldrsh	r3, [r1, r2]
	mov	r4, #0
	cmp	r3, #0
	beq	.Lb274e
	mov	r0, r5
	add	r2, r1
.Lb2738:
	ldrh	r3, [r2]
	add	r4, #1
	strh	r3, [r0]
	add	r2, #2
	add	r0, #2
	cmp	r4, #0x17
	bgt	.Lb274e
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #0
	bne	.Lb2738
.Lb274e:
	ldr	r3, .Lb275c	@ 0
	lsl	r2, r4, #1
	strh	r3, [r2, r5]
	mov	r0, r4
	pop	{r5}
	pop	{r1}
	bx	r1

	.align	2, 0
.Lb275c:
	.word	0
.func_end Func_80b2720

.thumb_func_start Func_80b2764
	lsl	r3, r0, #5
	add	r3, r0
	ldr	r2, =.Lb41ac
	lsl	r3, #1
	add	r3, #0x40
	ldrsh	r0, [r2, r3]
	bx	lr
.func_end Func_80b2764

