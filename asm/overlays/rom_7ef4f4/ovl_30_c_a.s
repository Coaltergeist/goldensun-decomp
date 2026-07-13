	.include "macros.inc"

.thumb_func_start OvlFunc_965_200a6b8
	push	{lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r4, r3, #20
	cmp	r4, #0x14
	bne	.L26f6
	ldr	r3, [r0, #0x10]
	asr	r1, r3, #20
	cmp	r1, #0xc
	bne	.L26f6
	mov	r2, r0
	mov	r3, #2
	add	r2, #0x55
	strb	r3, [r2]
	mov	r2, #0xc0
	lsl	r2, #14
	str	r2, [r0, #0x14]
	mov	r2, r0
	add	r2, #0x23
	strb	r3, [r2]
	mov	r0, #0x26
	str	r1, [sp, #4]
	mov	r2, #1
	mov	r1, #0xc
	mov	r3, #1
	str	r4, [sp]
	bl	__Func_8010704
.L26f6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a6b8

.section .text.after_a738, "ax", %progbits

.thumb_func_start OvlFunc_965_200a738
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	OvlFunc_965_200a660
	ldrh	r3, [r5, #6]
	mov	r1, #0x80
	lsl	r1, #6
	add	r5, r3, r1
	mov	r4, #0xf9
	ldr	r3, =gState
	lsl	r4, #1
	add	r3, r4
	mov	r1, #0xc0
	ldrb	r3, [r3]
	mov	r2, r0
	lsl	r1, #8
	mov	r0, #1
	and	r5, r1
	neg	r0, r0
	cmp	r3, #1
	beq	.L276c
	cmp	r2, #0
	bne	.L2780
.L276c:
	cmp	r5, r1
	bne	.L2774
	bl	__Func_8093fa0
.L2774:
	mov	r1, #0x80
	lsl	r1, #7
	cmp	r5, r1
	bne	.L2780
	bl	__Func_8093e28
.L2780:
	cmp	r0, #0
	beq	.L2796
	ldr	r3, =gState
	mov	r2, #0xf9
	lsl	r2, #1
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L2796
	bl	OvlFunc_965_200a6fc
.L2796:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a738
