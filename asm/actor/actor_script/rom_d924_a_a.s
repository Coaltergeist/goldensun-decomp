	.include "macros.inc"

.thumb_func_start Func_800d924  @ 0x0800d924
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld93a:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld96e
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld96e
	cmp	r5, r7
	beq	.Ld96e
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_800eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld96e
	mov	r0, #1
	neg	r0, r0
	b	.Ld97a
.Ld96e:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld93a
	mov	r0, #0
.Ld97a:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800d924

.thumb_func_start Func_800d98c  @ 0x0800d98c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e64
	ldr	r5, [r3]
	mov	r6, r5
	sub	sp, #4
	mov	r7, r0
	mov	r8, r1
	mov	r4, #0
	add	r6, #0x59
.Ld9a2:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.Ld9d4
	ldrb	r2, [r6]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Ld9d4
	cmp	r5, r7
	beq	.Ld9d4
	ldrh	r1, [r5, #0x20]
	ldrh	r3, [r7, #0x20]
	mov	r0, r5
	add	r0, #8
	sub	r1, #2
	sub	r3, #2
	mov	r2, r8
	str	r4, [sp]
	bl	Func_800eba0
	ldr	r4, [sp]
	cmp	r0, #0
	blt	.Ld9d4
	mov	r0, r5
	b	.Ld9e0
.Ld9d4:
	add	r4, #1
	add	r6, #0x70
	add	r5, #0x70
	cmp	r4, #0x3f
	ble	.Ld9a2
	mov	r0, #0
.Ld9e0:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_800d98c

