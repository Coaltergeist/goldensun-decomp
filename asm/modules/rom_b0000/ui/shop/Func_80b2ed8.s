	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2ed8  @ 0x080b2ed8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r2, =0x3aa
	ldr	r3, [r3]
	add	r3, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r7, r1
	mov	r6, r0
	mov	r1, r5
	mov	r0, r7
	bl	Func_80b2778
	mov	r8, r0
	cmp	r6, #0
	beq	.Lb2f30
	mov	r0, r6
	bl	_Func_8016478
	mov	r0, r7
	mov	r1, r5
	bl	Func_80b27b0
	cmp	r0, #0
	beq	.Lb2f12
	ldr	r5, =0xd2c
	b	.Lb2f14
.Lb2f12:
	ldr	r5, =0xd2d
.Lb2f14:
	mov	r0, r5
	bl	Func_80b2884
	mov	r1, #5
	mov	r5, r0
	mov	r0, r8
	bl	_Func_8019908
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0
	mov	r3, #0
	bl	_DrawSmallText
.Lb2f30:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ed8

