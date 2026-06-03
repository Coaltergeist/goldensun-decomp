	.include "macros.inc"

.thumb_func_start OvlFunc_913_200a7c8
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #7
	and	r6, r3
	cmp	r6, #0
	bne	.L284c
	ldr	r3, =.L3398
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L27e4
	mov	r0, #0xc8
	bl	__Func_80f9080
.L27e4:
	mov	r1, #0xe7
	mov	r3, #0xe6
	mov	r0, #0x1a
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #17
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L284c
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Func_800c300
	mov	r1, #0xe7
	mov	r3, #0x9c
	mov	r0, r5
	lsl	r1, #16
	mov	r2, #0
	lsl	r3, #18
	bl	__Func_800d14c
	ldr	r1, =.L32d0
	mov	r0, r5
	bl	__Func_800c2d8
.L284c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a7c8

