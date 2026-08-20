	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3d24  @ 0x080a3d24
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r1, #0xd
	ldr	r7, [r3]
	sub	sp, #4
	mov	r6, #0x48
	mov	r5, r0
	mov	r8, r1
	mov	r2, #0x1f
.La3d3a:
	ldrh	r3, [r5]
	add	r5, #2
	cmp	r3, #0
	bne	.La3d52
	ldr	r0, [r6, r7]
	str	r2, [sp]
	bl	Func_80a17c4
	ldr	r3, [r6, r7]
	mov	r1, r8
	strb	r1, [r3, #5]
	ldr	r2, [sp]
.La3d52:
	sub	r2, #1
	add	r6, #4
	cmp	r2, #0
	bge	.La3d3a
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3d24

