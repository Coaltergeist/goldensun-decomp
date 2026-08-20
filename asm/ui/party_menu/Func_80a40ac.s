	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a40ac  @ 0x080a40ac
	push	{r5, r6, r7, lr}
	mov	r7, r0
	bl	_GetUnit
	mov	r3, #0xd8
	ldrh	r3, [r0, r3]
	mov	r1, #0
	mov	r6, #0
	add	r0, #0xd8
	b	.La4102
.La40c0:
	ldrh	r2, [r0]
	ldr	r3, =0x200
	and	r3, r2
	cmp	r3, #0
	bne	.La40f8
	lsr	r3, r2, #11
	add	r2, r3, #1
	cmp	r3, #0
	bne	.La40d4
	mov	r2, #1
.La40d4:
	cmp	r2, #0
	beq	.La40f0
	mov	r5, r2
.La40da:
	mov	r1, r6
	mov	r0, r7
	bl	_Func_80788c4
	sub	r5, #1
	mov	r1, r0
	cmp	r5, #0
	bne	.La40da
	b	.La40f0

	.pool_aligned

.La40f0:
	mov	r0, #0
	cmp	r1, #2
	bne	.La410a
	b	.La4106
.La40f8:
	add	r6, #1
	add	r0, #2
	cmp	r6, #0xe
	bgt	.La4108
	ldrh	r3, [r0]
.La4102:
	cmp	r3, #0
	bne	.La40c0
.La4106:
	mov	r1, #1
.La4108:
	mov	r0, r1
.La410a:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a40ac

