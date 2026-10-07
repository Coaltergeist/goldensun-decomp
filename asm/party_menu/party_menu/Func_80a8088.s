	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a8088  @ 0x080a8088
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	ldr	r5, [r6, #0x24]
	mov	r7, r0
	sub	sp, #8
	mov	r0, #0
	cmp	r5, #0
	bne	.La80b4
	mov	r3, #0xf
	mov	r5, r6
	add	r5, #0x24
	str	r3, [sp]
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0
	mov	r2, #5
	mov	r3, #0x1e
	bl	Func_80a10d0
	ldr	r5, [r5]
.La80b4:
	cmp	r0, #0
	beq	.La80fc
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #0
	mov	r3, r5
	mov	r0, r7
	mov	r1, #0
	bl	_Func_801ec6c
	mov	r2, #0xbe
	lsl	r2, #1
	add	r3, r6, r2
	str	r0, [r3]
	add	r2, #0xa4
	mov	r3, #0xf0
	strb	r3, [r0, #0xf]
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.La80e8
	mov	r0, r6
	mov	r1, r5
	bl	Func_80a33d4
.La80e8:
	mov	r0, r5
	bl	Func_80a9cf8
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	mov	r1, r7
	bl	Func_80a8604
	b	.La8106
.La80fc:
	mov	r0, r5
	mov	r1, r7
	mov	r2, #0
	bl	Func_80a8604
.La8106:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a8088

