	.include "macros.inc"

.thumb_func_start Func_801fe2c  @ 0x0801fe2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r2, [sp, #8]
	str	r1, [sp, #0xc]
	mov	r10, r3
	ldr	r3, =iwram_3001f2c
	mov	r2, #0
	ldr	r1, [r3]
	str	r2, [sp, #4]
	mov	r3, #0x2c
	mov	r2, r10
	ldrsb	r3, [r2, r3]
	mov	r2, #1
	neg	r2, r2
	mov	r9, r0
	cmp	r3, r2
	beq	.L1feee
	mov	r3, r10
	add	r3, #0x33
	mov	r2, #0x9a
	lsl	r2, #1
	str	r3, [sp]
	mov	r3, #0
	add	r7, r1, r2
	mov	r11, r3
	sub	r2, #0x20
	mov	r3, #0x2c
	add	r6, r1, r2
	mov	r8, r3
.L1fe72:
	ldr	r3, [sp]
	mov	r2, r10
	mov	r1, r8
	ldrsb	r0, [r1, r2]
	mov	r1, #0
	ldrsb	r1, [r3, r1]
	bl	_Func_808b3d0
	bl	_CreateSprite
	mov	r5, r0
	cmp	r5, #0
	beq	.L1fea6
	mov	r1, #1
	bl	_Sprite_SetAnim
	mov	r2, r5
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0xd
	ldrb	r3, [r5, #9]
	neg	r1, r1
	mov	r2, r1
	and	r3, r2
	strb	r3, [r5, #9]
.L1fea6:
	str	r5, [r6]
	mov	r2, r9
	ldr	r1, [sp, #0xc]
	ldrh	r3, [r2, #0xc]
	add	r3, r1, r3
	add	r3, r11
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7]
	ldrh	r3, [r2, #0xe]
	ldr	r2, [sp, #8]
	add	r3, r2, r3
	lsl	r3, #3
	add	r3, #0x10
	strh	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x40]
	ldr	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #3
	add	r2, #1
	add	r8, r3
	add	r7, #2
	add	r11, r1
	add	r6, #4
	str	r2, [sp, #4]
	cmp	r2, #3
	bgt	.L1feee
	mov	r1, r8
	mov	r2, r10
	ldrsb	r3, [r1, r2]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L1fe72
.L1feee:
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_801ff58
	bl	StartTask
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801fe2c
