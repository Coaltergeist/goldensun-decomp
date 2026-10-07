	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801908c  @ 0x0801908c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	ldrb	r3, [r6, #5]
	mov	r7, #0x80
	mov	r5, r6
	sub	sp, #8
	lsl	r7, #1
	add	r5, #0x10
	cmp	r3, #9
	beq	.L190b6
	cmp	r3, #9
	blt	.L19106
	cmp	r3, #0xa
	beq	.L190c8
	cmp	r3, #0xb
	beq	.L190da
	cmp	r3, #0xc
	beq	.L190f0
	b	.L19106
.L190b6:
	ldrh	r2, [r6, #0xc]
	add	r3, r2, #1
	strh	r3, [r6, #0xc]
	mov	r3, #0x1f
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r7, [r1, r3]
	b	.L19106
.L190c8:
	ldrh	r2, [r6, #0xc]
	add	r3, r2, #1
	strh	r3, [r6, #0xc]
	mov	r3, #0x1f
	ldr	r1, =Data_366f8
	and	r3, r2
	lsl	r3, #1
	ldrh	r3, [r1, r3]
	b	.L19104
.L190da:
	ldrh	r3, [r6, #0xc]
	mov	r0, r3
	cmp	r0, #7
	bhi	.L19106
	add	r3, #1
	ldr	r2, =Data_366f8
	strh	r3, [r6, #0xc]
	lsl	r3, r0, #2
	add	r3, #0x20
	ldrh	r7, [r2, r3]
	b	.L19106
.L190f0:
	ldrh	r3, [r6, #0xc]
	mov	r1, r3
	cmp	r1, #7
	bhi	.L19106
	add	r3, #1
	ldr	r2, =Data_366f8
	strh	r3, [r6, #0xc]
	lsl	r3, r1, #2
	add	r3, #0x20
	ldrh	r3, [r2, r3]
.L19104:
	lsr	r7, r3, #1
.L19106:
	mov	r3, #0x80
	lsl	r3, #1
	mov	r8, r3
	cmp	r7, r8
	bne	.L19124
	ldrb	r2, [r5, #7]
	mov	r3, #0x3f
	neg	r3, r3
	and	r3, r2
	strb	r3, [r5, #7]
	ldrb	r2, [r5, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	b	.L191a0
.L19124:
	ldr	r3, [sp]
	ldr	r4, =0xffff0000
	ldr	r2, =0xffff
	mov	r1, r7
	and	r3, r4
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp]
	mov	r0, sp
	ldr	r3, [r0, #4]
	and	r3, r4
	str	r3, [r0, #4]
	bl	Func_8003d28
	mov	r3, #0x1f
	and	r0, r3
	ldrb	r2, [r5, #7]
	mov	r3, #0x3f
	neg	r3, r3
	lsl	r0, #1
	and	r3, r2
	orr	r3, r0
	strb	r3, [r5, #7]
	cmp	r7, r8
	ble	.L19194
	ldrb	r3, [r5, #5]
	mov	r2, #3
	orr	r3, r2
	strb	r3, [r5, #5]
	ldr	r3, =0xfff8
	ldrh	r2, [r6, #6]
	add	r2, r3
	ldr	r3, .L1917c	@ 0x1ff
	ldrh	r1, [r5, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldrb	r3, [r6, #8]
	add	r3, #0xf8
	b	.L191b4

	.align	2, 0
.L1917c:
	.word	0x1ff
	.pool

.L19194:
	ldrb	r2, [r5, #5]
	mov	r3, #4
	neg	r3, r3
	and	r3, r2
	mov	r2, #1
	orr	r3, r2
.L191a0:
	strb	r3, [r5, #5]
	ldr	r2, =0x1ff
	ldrh	r3, [r6, #6]
	ldrh	r1, [r5, #6]
	and	r2, r3
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r5, #6]
	ldrh	r3, [r6, #8]
.L191b4:
	strb	r3, [r5, #4]
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801908c
