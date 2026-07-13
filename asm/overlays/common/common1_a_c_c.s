	.include "macros.inc"
	.include "gba.inc"

	.section .text.between_1578_16cc, "ax", %progbits
.thumb_func_start OvlFunc_common1_15b8
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r2
	bl	__GetFieldActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1600
	mov	r3, #0xa0
	lsl	r3, #9
	str	r3, [r5, #0x30]
	asr	r3, #1
	str	r3, [r5, #0x34]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5b
	strb	r2, [r3]
	bl	__Actor_Stop
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	lsl	r1, r6, #16
	ldr	r2, [r5, #0xc]
	lsl	r3, r7, #16
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
.L1600:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_15b8

.thumb_func_start OvlFunc_common1_1608
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	sub	sp, #4
	mov	r9, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L16bc
	mov	r3, r6
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r10, r3
	cmp	r3, #1
	bne	.L16bc
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	ldr	r7, [r6, #0x50]
	bl	__galloc_iwram
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #3
	mov	r2, #0
	add	r5, r3
	mov	r0, sp
	mov	r8, r2
	str	r2, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r5
	ldr	r2, =0x85000020
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, r9
	bl	__LoadItemIcon
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r7, #0x1c]
	bl	__UploadSpriteGFX
	mov	r5, r0
	mov	r0, #0x11
	bl	__gfree
	mov	r3, r6
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	ldr	r0, [r7, #0x28]
	bl	__DeleteSpriteLayer
	mov	r3, r8
	str	r3, [r7, #0x28]
	mov	r3, r7
	add	r3, #0x27
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r2, [r7, #5]
	mov	r3, #0x21
	neg	r3, r3
	and	r3, r2
	strb	r3, [r7, #5]
	ldr	r3, .L16ac	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r5, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r5
	strh	r3, [r7, #8]
	mov	r3, r7
	add	r3, #0x25
	mov	r2, r8
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	b	.L16bc

	.align	2, 0
.L16ac:
	.word	0x3ff
	.pool

.L16bc:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1608
