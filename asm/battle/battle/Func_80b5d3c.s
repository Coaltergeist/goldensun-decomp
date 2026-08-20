	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5d3c  @ 0x080b5d3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x20
	add	r1, sp, #8
	mov	r9, r1
	mov	r0, r9
	bl	Func_80b6a60
	mov	r3, #0x1c
	mov	r2, #0
	add	r3, sp
	mov	r4, r0
	mov	r11, r2
	mov	r8, r2
	mov	r10, r3
.Lb5d64:
	mov	r3, #0
	mov	r1, r10
	mov	r2, r8
	strb	r3, [r1, r2]
	cmp	r4, #0
	ble	.Lb5d9e
	mov	r1, #0x8c
	lsl	r1, #1
	mov	r7, r10
	add	r1, r8
	mov	r6, r9
	mov	r5, r4
.Lb5d7c:
	ldrh	r0, [r6]
	str	r1, [sp, #4]
	str	r4, [sp]
	bl	_GetUnit
	ldr	r1, [sp, #4]
	mov	r2, r8
	ldrb	r3, [r7, r2]
	ldrb	r2, [r0, r1]
	sub	r5, #1
	add	r3, r2
	mov	r2, r8
	add	r6, #2
	strb	r3, [r7, r2]
	ldr	r4, [sp]
	cmp	r5, #0
	bne	.Lb5d7c
.Lb5d9e:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #3
	ble	.Lb5d64
	mov	r2, #0
	mov	r8, r2
.Lb5dac:
	mov	r0, r8
	bl	_GetSummonInfo
	cmp	r0, #0
	beq	.Lb5de8
	mov	r3, r10
	add	r0, #4
	ldrb	r2, [r3]
	ldrb	r3, [r0]
	mov	r4, #0
	cmp	r2, r3
	bcc	.Lb5dd8
	mov	r1, r10
.Lb5dc6:
	add	r4, #1
	cmp	r4, #3
	bgt	.Lb5dd8
	add	r1, #1
	add	r0, #1
	ldrb	r2, [r1]
	ldrb	r3, [r0]
	cmp	r2, r3
	bcs	.Lb5dc6
.Lb5dd8:
	cmp	r4, #4
	bne	.Lb5de8
	mov	r3, #1
	mov	r1, r8
	mov	r2, r11
	lsl	r3, r1
	orr	r2, r3
	mov	r11, r2
.Lb5de8:
	mov	r3, #1
	add	r8, r3
	mov	r1, r8
	cmp	r1, #0x1f
	ble	.Lb5dac
	mov	r0, #0
	bl	_Func_8077330
	mov	r2, r11
	str	r2, [r0]
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5d3c

