	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a76d0  @ 0x080a76d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r5, #0
	mov	r2, #0xd
	ldr	r7, [r3]
	mov	r8, r5
	mov	r6, #0
	mov	r10, r2
	b	.La776e
.La76e8:
	cmp	r5, #1
	beq	.La7722
	cmp	r5, #1
	bgt	.La76f6
	cmp	r5, #0
	beq	.La7700
	b	.La776a
.La76f6:
	cmp	r5, #2
	beq	.La773a
	cmp	r5, #3
	beq	.La7754
	b	.La776a
.La7700:
	mov	r2, #0xba
	lsl	r2, #1
	add	r3, r7, r2
	mov	r2, r8
	strh	r2, [r3]
	mov	r0, #0
	bl	Func_80a77a4
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	bne	.La771e
	mov	r2, #1
	mov	r6, r0
	mov	r8, r2
.La771e:
	mov	r5, #1
	b	.La776e
.La7722:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_80a8114
	mov	r6, r0
	mvn	r2, r6
	neg	r3, r2
	orr	r3, r2
	lsr	r5, r3, #31
	lsl	r5, #1
	b	.La776e
.La773a:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_80a90bc
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	mov	r5, #0
	cmp	r6, r3
	beq	.La776e
	mov	r5, #3
	b	.La776e
.La7754:
	ldr	r3, [r7, #0x14]
	mov	r2, r10
	strb	r2, [r3, #5]
	bl	Func_80a96d8
	mov	r6, r0
	mvn	r2, r6
	neg	r3, r2
	orr	r3, r2
	lsr	r5, r3, #31
	b	.La776e
.La776a:
	mov	r3, #1
	mov	r8, r3
.La776e:
	mov	r2, r8
	cmp	r2, #0
	bne	.La7780
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La76e8
.La7780:
	mov	r0, #0xa8
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La7790
	mov	r6, #1
	neg	r6, r6
.La7790:
	mov	r0, r6
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a76d0

