	.include "macros.inc"

.thumb_func_start OvlFunc_905_2008a68
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r0, #0
	mov	r6, r1
	sub	sp, #0xc
	mov	r8, r2
	mov	r9, r3
	bl	__MapActor_GetActor
	ldr	r3, =.L160c
	mov	r10, sp
	mov	r2, r10
	mov	r11, r0
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r2, r6
	mov	r0, #0xde
	mov	r1, r5
	mov	r3, r8
	bl	__Func_800c150
	mov	r6, r0
	cmp	r6, #0
	beq	.Lb34
	ldr	r1, [sp, #0x30]
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	ldr	r7, [r6, #0x50]
	bl	__Func_800c300
	ldr	r3, [sp, #0x30]
	and	r3, r5
	lsl	r3, #2
	mov	r0, r10
	ldr	r1, [r0, r3]
	mov	r0, r6
	bl	__Func_800c2d8
	ldr	r2, [sp, #0x30]
	lsr	r1, r2, #16
	mov	r0, r6
	and	r1, r5
	bl	__Func_80929d8
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, r7
	add	r2, #0x26
	strb	r3, [r2]
	ldr	r3, =OvlFunc_905_2008a00
	str	r3, [r6, #0x6c]
	mov	r3, r9
	str	r3, [r6, #0x30]
	ldr	r3, [sp, #0x2c]
	str	r3, [r6, #0x34]
	add	r4, sp, #0x34
	ldrh	r4, [r4]
	mov	r3, r6
	add	r3, #0x66
	strh	r4, [r3]
	ldr	r0, [sp, #0x34]
	lsr	r4, r0, #16
	cmp	r4, #0
	beq	.Lb00
	cmp	r4, #3
	bhi	.Lb34
	b	.Lb16
.Lb00:
	mov	r1, r11
	ldr	r3, [r1, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r7, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	b	.Lb32
.Lb16:
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #3
	and	r4, r3
	ldrb	r2, [r7, #9]
	mov	r3, #0xd
	neg	r3, r3
	lsl	r1, r4, #2
	and	r3, r2
	orr	r3, r1
.Lb32:
	strb	r3, [r7, #9]
.Lb34:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008a68

