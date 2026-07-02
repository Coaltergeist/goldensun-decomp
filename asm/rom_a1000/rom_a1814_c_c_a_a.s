	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3ef0  @ 0x080a3ef0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r3
	ldr	r3, =iwram_3001f2c
	mov	r9, r1
	mov	r1, #0
	sub	sp, #4
	mov	r5, r2
	ldr	r7, [r3]
	mov	r8, r0
	mov	r10, r1
	bl	_GetUnit
	mov	r2, r9
	lsl	r3, r2, #1
	add	r3, #0xd8
	ldrh	r3, [r0, r3]
	mov	r11, r0
	str	r3, [sp]
	cmp	r5, #1
	bne	.La3f2a
	mov	r3, #0x80
	lsl	r3, #1
	mov	r10, r3
.La3f2a:
	ldr	r1, [sp]
	ldr	r0, =0x1ff
	and	r0, r1
	bl	_GetItemInfo
	ldrb	r3, [r0, #2]
	cmp	r3, #9
	bls	.La3f3c
	b	.La4086
.La3f3c:
	ldr	r2, =.La3f44
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.La3f44:
	.word	.La4000
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3ff4
	.word	.La3f6c
	.word	.La3f6c
	.word	.La3f6c
.La3f6c:
	cmp	r8, r6
	bne	.La3f74
	mov	r3, #2
	b	.La3ffa
.La3f74:
	mov	r0, r6
	bl	_GetUnit
	mov	r5, #0xa6
	lsl	r5, #1
	mov	r11, r0
	mov	r0, r5
	bl	Func_8004938
	mov	r2, r5
	ldr	r3, =Func_8001af8
	mov	r1, r11
	mov	r8, r0
	bl	_call_via_r3
	mov	r0, r6
	bl	Func_80a40ac
	mov	r2, r0
	cmp	r2, #0
	beq	.La3fd2
	ldr	r3, =0xfffffdff
	ldr	r1, [sp]
	mov	r0, r6
	and	r1, r3
	str	r1, [sp]
	bl	_GiveItemTo
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.La3fc4
	mov	r3, #2
	mov	r1, r10
	orr	r1, r3
	mov	r10, r1
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	b	.La3fca
.La3fc4:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
.La3fca:
	mov	r3, r10
	bl	Func_80a112c
	b	.La3fde
.La3fd2:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_80a112c
.La3fde:
	mov	r2, #0xa6
	ldr	r3, =Func_8001af8
	mov	r0, r11
	mov	r1, r8
	lsl	r2, #1
	bl	_call_via_r3
	mov	r0, r8
	bl	free
	b	.La4086
.La3ff4:
	cmp	r6, r8
	bne	.La400e
	mov	r3, #4
.La3ffa:
	mov	r2, r10
	orr	r2, r3
	mov	r10, r2
.La4000:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_80a112c
	b	.La4086
.La400e:
	mov	r0, r6
	bl	_GetUnit
	mov	r5, #0xa6
	lsl	r5, #1
	mov	r11, r0
	mov	r0, r5
	bl	Func_8004938
	mov	r2, r5
	ldr	r3, =Func_8001af8
	mov	r1, r11
	mov	r8, r0
	bl	_call_via_r3
	mov	r0, r6
	bl	Func_80a40ac
	mov	r2, r0
	cmp	r2, #0
	beq	.La4066
	mov	r0, r6
	ldr	r1, [sp]
	bl	_GiveItemTo
	mov	r3, #1
	mov	r2, r0
	neg	r3, r3
	cmp	r2, r3
	beq	.La4058
	mov	r3, #4
	mov	r1, r10
	orr	r1, r3
	mov	r10, r1
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	b	.La405e
.La4058:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
.La405e:
	mov	r3, r10
	bl	Func_80a112c
	b	.La4072
.La4066:
	ldr	r0, [r7, #0x24]
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_80a112c
.La4072:
	mov	r2, #0xa6
	ldr	r3, =Func_8001af8
	mov	r0, r11
	mov	r1, r8
	lsl	r2, #1
	bl	_call_via_r3
	mov	r0, r8
	bl	free
.La4086:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3ef0

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

