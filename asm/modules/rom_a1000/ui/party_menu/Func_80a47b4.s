	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a47b4  @ 0x080a47b4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	ldr	r6, [r3]
	sub	sp, #8
	mov	r3, #0xa
	mov	r7, r6
	str	r3, [sp]
	add	r7, #0x30
	mov	r3, #2
	str	r3, [sp, #4]
	mov	r5, r0
	mov	r3, #0xd
	mov	r1, #0
	mov	r2, #0
	mov	r0, r7
	bl	Func_80a10d0
	bl	Func_80a22f4
	mov	r3, #0xbc
	lsl	r3, #1
	lsl	r5, #1
	add	r5, r3
	ldrh	r3, [r6, r5]
	cmp	r3, #0
	beq	.La47f0
	ldr	r0, [r7]
	mov	r1, r3
	bl	Func_80a4924
.La47f0:
	mov	r0, #1
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a47b4

