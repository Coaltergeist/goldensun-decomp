	.include "macros.inc"
	.include "gba.inc"

	.section .text.after, "ax", %progbits

	.section .text.after_b06ec, "ax", %progbits

.thumb_func_start Func_80b0744  @ 0x080b0744
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r8, r1
	mov	r1, #0x80
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0xe
	mov	r10, r2
	mov	r7, r3
	sub	sp, #4
	bl	galloc_ewram
	mov	r3, #0
	mov	r6, r0
	mov	r9, r3
	ldr	r0, =.Lb3e80
	ldr	r3, =REG_DMA3SAD
	mov	r1, r6
	ldr	r2, =0x84000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r5
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #0
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #1
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #2
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #3
	bl	Func_80b06ec
	mov	r0, r5
	mov	r1, #0xa
	bl	__divsi3
	cmp	r0, #0
	beq	.Lb07f2
	mov	r1, #0xa
	bl	__modsi3
	mov	r1, r6
	mov	r2, #4
	bl	Func_80b06ec
.Lb07f2:
	bl	AllocSpriteSlot
	mov	r5, r0
	cmp	r5, #0x60
	beq	.Lb0816
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, r6
	bl	UploadSpriteGFX
	ldr	r1, =0x80008000
	mov	r0, r5
	mov	r2, r8
	mov	r3, r10
	str	r7, [sp]
	bl	_Func_801eadc
	mov	r9, r0
.Lb0816:
	mov	r0, #0xe
	bl	gfree
	mov	r0, r9
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b0744
