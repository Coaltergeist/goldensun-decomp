	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_200807c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0x83
	lsl	r2, #2
	add	r3, r2
	mov	r2, #2
	strb	r2, [r3]
	mov	r6, r0
	mov	r8, r1
	mov	r0, #0x7d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_8019da8
	mov	r7, #0
	mov	r10, r0
	cmp	r7, r8
	bge	.Lm974_10a
	ldr	r5, =gKeyHeld
.Lm974_aa:
	mov	r0, #1
	mov	r1, #1
	bl	__Func_8019908
	mov	r0, #0x8d
	mov	r1, #2
	bl	__Func_8019908
	ldr	r0, =0x1e240
	mov	r1, #5
	bl	__Func_8019908
	mov	r0, r6
	bl	OvlFunc_974_200804c
	b	.Lm974_d6
.Lm974_ca:
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.Lm974_104
	mov	r0, #1
	bl	__WaitFrames
.Lm974_d6:
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lm974_10a
	ldr	r3, [r5]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	bne	.Lm974_f4
	ldr	r3, [r5]
	mov	r2, #0x80
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_f8
.Lm974_f4:
	add	r6, #1
	b	.Lm974_104
.Lm974_f8:
	ldr	r3, [r5]
	mov	r2, #0x40
	and	r3, r2
	cmp	r3, #0
	beq	.Lm974_ca
	sub	r6, #1
.Lm974_104:
	add	r7, #1
	cmp	r7, r8
	blt	.Lm974_aa
.Lm974_10a:
	bl	__Func_8019a54
	mov	r0, r10
	mov	r1, #2
	bl	__CloseUIBox
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_200807c

