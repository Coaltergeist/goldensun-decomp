	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a10d0  @ 0x080a10d0
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, [r6]
	sub	sp, #4
	mov	r5, r3
	ldr	r4, [sp, #0x14]
	cmp	r0, #0
	beq	.La10f6
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r4
	cmp	r3, #0
	beq	.La10ee
	mov	r0, #0
	b	.La110c
.La10ee:
	bl	_Func_8016498
	mov	r0, #0
	b	.La110c
.La10f6:
	mov	r3, #0xff
	and	r4, r3
	mov	r0, r1
	ldr	r3, [sp, #0x10]
	mov	r1, r2
	mov	r2, r5
	str	r4, [sp]
	bl	_CreateUIBox
	str	r0, [r6]
	mov	r0, #1
.La110c:
	add	sp, #4
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80a10d0

