	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3e28  @ 0x080a3e28
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r0
	mov	r5, r3
	mov	r8, r1
	add	r5, #0x48
	mov	r6, r10
	mov	r7, #0xe
.La3e40:
	ldrh	r1, [r6]
	add	r6, #2
	cmp	r1, #0
	beq	.La3e68
	mov	r3, r8
	cmp	r3, #0
	bne	.La3e5c
	ldr	r3, [r5]
	mov	r0, #2
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
	b	.La3e68
.La3e5c:
	ldr	r3, [r5]
	mov	r0, #7
	ldrb	r2, [r3, #0xe]
	mov	r3, #0
	bl	_Func_801bcd4
.La3e68:
	sub	r7, #1
	add	r5, #4
	cmp	r7, #0
	bge	.La3e40
	mov	r0, r10
	bl	Func_80a3d24
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3e28

