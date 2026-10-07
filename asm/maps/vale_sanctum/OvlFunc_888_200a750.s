	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a750
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm888_27c8
	ldr	r2, [r7, #0xc]
	mov	r3, #0xb4
	lsl	r3, #14
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm888_27c8
	ldr	r1, =gScript_888__0200c15c
	ldr	r5, [r6, #0x50]
	bl	__Actor_SetScript
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, =OvlFunc_888_200a6f0
	ldr	r1, .Lm888_27b8	@ 0
	str	r3, [r6, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	strb	r1, [r3]
	ldr	r3, [r7, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	str	r7, [r6, #0x68]
	strb	r3, [r5, #9]
	b	.Lm888_27c8

	.align	2, 0
.Lm888_27b8:
	.word	0
	.pool

.Lm888_27c8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a750

