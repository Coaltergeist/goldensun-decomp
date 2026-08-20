	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_2008dd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm951_e0a
	ldmia	r6!, {r3}
	str	r3, [r5, #8]
	ldmia	r6!, {r3}
	str	r3, [r5, #0xc]
	ldr	r3, [r6]
	str	r3, [r5, #0x10]
	mov	r3, r8
	strh	r3, [r5, #6]
	ldr	r2, =0
	mov	r3, r5
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r3, [r5, #0x50]
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r1, [sp, #0x14]
	bl	__Actor_SetAnimSpeed
.Lm951_e0a:
	ldr	r0, [r5, #0x50]
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm951_e3a
	mov	r4, #0xff
	add	r0, #0x28
	mov	r1, r3
	b	.Lm951_e24

	.pool_aligned

.Lm951_e24:
	ldmia	r0!, {r2}
	ldrb	r3, [r2, #5]
	cmp	r3, r7
	beq	.Lm951_e34
	ldrb	r3, [r2, #0x16]
	orr	r3, r4
	strb	r7, [r2, #5]
	strb	r3, [r2, #0x16]
.Lm951_e34:
	sub	r1, #1
	cmp	r1, #0
	bne	.Lm951_e24
.Lm951_e3a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008dd0

