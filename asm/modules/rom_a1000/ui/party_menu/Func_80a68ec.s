	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a68ec  @ 0x080a68ec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	mov	r1, r2
	mov	r2, #2
	eor	r2, r1
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r8, r3
	mov	r2, #3
	add	r8, r2
	mov	r3, r10
	ldr	r2, =0
	sub	sp, #8
	mov	r9, r0
	add	r3, #0x3e
	mov	r12, r10
.La691a:
	strh	r2, [r3]
	sub	r3, #2
	cmp	r3, r12
	bge	.La691a
	mov	r4, #0
	cmp	r1, #1
	bne	.La6970
	ldr	r7, =0x3fff
	mov	r1, #0
	mov	r6, #0x58
	mov	r5, r10
	b	.La693c

	.pool_aligned

.La693c:
	mov	r3, r9
	ldrh	r2, [r6, r3]
	mov	r3, r2
	cmp	r3, #0
	beq	.La6966
	mov	r0, r7
	and	r0, r2
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r3, #0
	beq	.La6966
	mov	r2, r9
	ldrh	r3, [r2, r6]
	add	r4, #1
	strh	r3, [r5]
	add	r5, #2
.La6966:
	add	r1, #1
	add	r6, #4
	cmp	r1, #0x1f
	ble	.La693c
	b	.La69ea
.La6970:
	mov	r7, #0
	cmp	r7, r8
	bge	.La69ea
	mov	r3, #0x40
	mov	r11, r3
.La697a:
	lsl	r3, r4, #1
	mov	r2, r10
	mov	r6, r9
	add	r5, r3, r2
	mov	r1, #0x1f
	add	r6, #0x58
.La6986:
	ldrh	r2, [r6]
	mov	r3, r2
	cmp	r3, #0
	beq	.La69dc
	ldr	r0, =0x3fff
	and	r0, r2
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetMoveInfo
	ldr	r1, [sp, #4]
	ldr	r4, [sp]
	cmp	r7, #0
	bne	.La69b8
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.La69d4
	ldrb	r2, [r0, #1]
	mov	r3, r11
	and	r3, r2
	cmp	r3, #0
	bne	.La69d4
	b	.La69b8

	.pool_aligned

.La69b8:
	cmp	r7, #1
	beq	.La69dc
	cmp	r7, #2
	beq	.La69dc
	cmp	r7, #3
	bne	.La69dc
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.La69dc
	ldrb	r2, [r0, #1]
	mov	r3, r11
	and	r3, r2
	cmp	r3, #0
	bne	.La69dc
.La69d4:
	ldrh	r3, [r6]
	add	r4, #1
	strh	r3, [r5]
	add	r5, #2
.La69dc:
	sub	r1, #1
	add	r6, #4
	cmp	r1, #0
	bge	.La6986
	add	r7, #1
	cmp	r7, r8
	blt	.La697a
.La69ea:
	mov	r0, r4
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a68ec

