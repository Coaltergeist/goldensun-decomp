	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008880
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r0, #0xd8
	ldr	r5, [r3]
	bl	__PlaySound
	mov	r2, #0xb2
	lsl	r2, #1
	add	r5, r2
	mov	r6, #0xf
.Lm951_89a:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm951_89a
	ldr	r3, =0x3f42
	ldr	r2, =REG_BLDCNT
	ldr	r5, =.Lm951_1fc0
	ldr	r7, =REG_BLDALPHA
	mov	r10, r3
	mov	r8, r2
	mov	r6, #7
.Lm951_8bc:
	mov	r3, r10
	mov	r2, r8
	strh	r3, [r2]
	ldrh	r3, [r5]
	add	r5, #2
	strh	r3, [r7]
	mov	r0, #8
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm951_8bc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008880

