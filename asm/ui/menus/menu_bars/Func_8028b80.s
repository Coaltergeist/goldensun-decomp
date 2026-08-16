	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8028b80  @ 0x08028b80
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f38
	ldr	r6, [r3]
	mov	r0, r6
	mov	r5, r6
	add	r5, #0x8c
	add	r0, #0x96
	mov	r3, #0
	ldrsh	r2, [r0, r3]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	ldrh	r1, [r5]
	cmp	r2, r3
	beq	.L28bf2
	strh	r1, [r0]
	ldr	r0, [r6, #0x7c]
	bl	Func_8016478
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L28bca
	ldr	r5, =0xc71
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #4
	add	r5, #1
	bl	DrawSmallText
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0x10
	bl	DrawSmallText
	b	.L28bf2
.L28bca:
	ldr	r5, =0xc73
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #4
	bl	DrawSmallText
	add	r0, r5, #1
	ldr	r1, [r6, #0x7c]
	mov	r2, #0
	mov	r3, #0x10
	add	r5, #2
	bl	DrawSmallText
	ldr	r1, [r6, #0x7c]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0x1c
	bl	DrawSmallText
.L28bf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8028b80
