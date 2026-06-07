	.include "macros.inc"

.thumb_func_start OvlFunc_883_200d75c
	push	{r5, r6, lr}
	mov	r6, r0
	sub	sp, #0xc
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	bl	__Random
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xfff80000
	lsl	r0, #4
	sub	r3, r0
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #8]
	bl	__Random
	mov	r6, r0
	bl	__Random
	mov	r1, r0
	lsl	r0, r6, #1
	add	r0, r6
	mov	r2, r5
	lsl	r0, #4
	bl	__Func_800447c
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	ldr	r0, =0x11d
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L57de
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x1999
	add	r2, #9
	str	r3, [r5, #0x48]
	mov	r3, #0xc
	strh	r3, [r2]
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0
	bl	__Func_800c300
	ldr	r1, =.L66e0
	mov	r0, r5
	bl	__Func_800c2d8
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
.L57de:
	mov	r0, #0x8a
	bl	__Func_80f9080
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d75c

.thumb_func_start OvlFunc_883_200d7fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0x9a
	bl	__Func_80f9080
	ldr	r5, =0xfffff800
	mov	r2, #0x1e
	mov	r8, r2
.L5810:
	ldr	r3, [r7, #0xc]
	mov	r2, #0x80
	lsl	r2, #9
	add	r3, r2
	str	r3, [r7, #0xc]
	mov	r2, #0x80
	ldrh	r3, [r7, #6]
	lsl	r2, #6
	add	r3, r2
	strh	r3, [r7, #6]
	ldr	r3, [r7, #0x18]
	add	r3, r5
	str	r3, [r7, #0x18]
	ldr	r3, [r7, #0x1c]
	add	r3, r5
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L5810
	mov	r3, #7
	mov	r8, r3
.L5846:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x11d
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.L58ac
	mov	r1, #0
	bl	__Func_800c528
	ldr	r1, =.L66e4
	mov	r0, r6
	bl	__Func_800c2d8
	bl	__Random
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r6
	add	r2, #0x55
	add	r0, r3
	str	r3, [r6, #0x34]
	mov	r3, #2
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	ldr	r3, =0xa3d
	str	r3, [r6, #0x48]
	bl	__Random
	mov	r5, r0
	bl	__Random
	sub	r5, r0
	str	r5, [r6, #0x28]
	bl	__Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r5, #3
	add	r5, r2
	bl	__Random
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	OvlFunc_883_200d8f0
.L58ac:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0
	bge	.L5846
	mov	r0, #0x83
	bl	__Func_80f9080
	mov	r3, #0x80
	mov	r2, #0
	lsl	r3, #24
	str	r2, [r7, #8]
	str	r2, [r7, #0xc]
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	str	r2, [r7, #0x24]
	str	r2, [r7, #0x28]
	str	r2, [r7, #0x2c]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_200d7fc

