	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ebd8  @ 0x0801ebd8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r5, r0
	mov	r7, r1
	mov	r8, r2
	mov	r6, r3
	bl	AllocSpriteSlot
	str	r0, [sp, #8]
	cmp	r0, #0x60
	bne	.L1ebf6
	mov	r0, #0
	b	.L1ec18
.L1ebf6:
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #1
	mov	r0, r5
	str	r1, [sp]
	bl	LoadOldUIIcon
	mov	r1, #0x80
	mov	r3, r8
	ldr	r0, [sp, #8]
	lsl	r1, #23
	mov	r2, r7
	str	r6, [sp]
	bl	Func_801eadc
	mov	r3, #0xfb
	strb	r3, [r0, #0xf]
.L1ec18:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801ebd8

