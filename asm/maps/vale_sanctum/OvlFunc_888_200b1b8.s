	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200b1b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm888_3264
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	ldr	r5, [r6, #8]
	ldr	r2, =0xfff60000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Random
	mov	r3, #0xf
	and	r3, r0
	ldr	r2, [r6, #0xc]
	lsl	r3, #16
	add	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8f
	add	r2, r3
	lsl	r0, #1
	ldr	r3, [r6, #0x10]
	mov	r1, r5
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm888_3264
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	ldr	r5, [r7, #0x50]
	strb	r3, [r2]
	bl	__Random
	mov	r1, #0xa
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x64
	ldr	r2, .Lm888_3254	@ 0
	add	r0, #5
	strh	r0, [r3]
	mov	r8, r2
	bl	__Random
	mov	r1, #0x3c
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x66
	add	r0, #0x1e
	strh	r0, [r3]
	ldr	r3, =OvlFunc_888_200b144
	str	r3, [r7, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
	b	.Lm888_3264

	.align	2, 0
.Lm888_3254:
	.word	0
	.pool

.Lm888_3264:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b1b8

