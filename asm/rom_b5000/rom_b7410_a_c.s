	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7e24
	push	{r5, r6, lr}
	cmp	r0, #0
	beq	.Lb7e5a
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, #0xf
	and	r2, r3
	cmp	r2, #1
	beq	.Lb7e3e
	cmp	r2, #2
	beq	.Lb7e46
	b	.Lb7e5a
.Lb7e3e:
	ldr	r0, [r0, #0x50]
	bl	Func_80b7e04
	b	.Lb7e5a
.Lb7e46:
	ldr	r5, [r0, #0x50]
	mov	r6, #3
.Lb7e4a:
	ldmia	r5!, {r0}
	cmp	r0, #0
	beq	.Lb7e54
	bl	Func_80b7e04
.Lb7e54:
	sub	r6, #1
	cmp	r6, #0
	bge	.Lb7e4a
.Lb7e5a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b7e24

.thumb_func_start Func_80b7e60
	push	{r5, lr}
	mov	r5, r0
	bl	Func_80b6e30
	mov	r0, r5
	bl	Func_80b7dd0
	mov	r3, #1
	strh	r3, [r0, #0x28]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b7e60

.thumb_func_start Func_80b7e7c
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0
.Lb7e82:
	mov	r0, r6
	add	r0, #0x78
	cmp	r6, #7
	bgt	.Lb7e8c
	mov	r0, r6
.Lb7e8c:
	bl	Func_80b7dd0
	mov	r5, r0
	cmp	r5, #0
	beq	.Lb7ea8
	mov	r2, #0x28
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.Lb7ea8
	ldr	r0, [r5]
	bl	_Func_800c0f4
	str	r7, [r5]
	strh	r7, [r5, #0x28]
.Lb7ea8:
	add	r6, #1
	cmp	r6, #0xd
	ble	.Lb7e82
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b7e7c

