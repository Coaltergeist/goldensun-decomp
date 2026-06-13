	.include "macros.inc"

.thumb_func_start OvlFunc_969_200b600
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r5, r0
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, r5
	add	r6, #0x64
	ldrh	r1, [r6]
	mov	r8, r1
	mov	r10, r0
	mov	r0, r8
	bl	__cos
	ldr	r3, [r5, #0x30]
	add	r3, #3
	mov	r2, r3
	mul	r2, r0
	mov	r1, r10
	ldr	r3, [r1, #8]
	mov	r0, r8
	add	r3, r2
	str	r3, [r5, #8]
	bl	__sin
	mov	r2, r10
	ldr	r3, [r2, #0x10]
	lsl	r0, #1
	ldr	r2, [r5, #8]
	add	r3, r0
	str	r3, [r5, #0x10]
	str	r2, [r5, #0x38]
	str	r3, [r5, #0x40]
	ldr	r1, =0xfffff800
	ldrh	r3, [r6]
	add	r3, r1
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b600

.thumb_func_start OvlFunc_969_200b660
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, r7
	add	r5, #0x64
	ldrh	r6, [r5]
	mov	r8, r0
	mov	r0, r6
	bl	__cos
	mov	r1, #0x62
	add	r1, r7
	ldrb	r2, [r1]
	ldr	r3, [r7, #0x30]
	add	r3, r2
	add	r3, #6
	mov	r2, r3
	mul	r2, r0
	mov	r10, r1
	mov	r1, r8
	ldr	r3, [r1, #8]
	add	r3, r2
	str	r3, [r7, #8]
	mov	r0, r6
	bl	__sin
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #4
	mov	r2, r3
	mul	r2, r0
	mov	r1, r8
	ldr	r3, [r1, #0x10]
	add	r3, r2
	ldr	r2, [r7, #8]
	str	r3, [r7, #0x10]
	str	r2, [r7, #0x38]
	str	r3, [r7, #0x40]
	ldr	r2, =0xfffff800
	ldrh	r3, [r5]
	add	r3, r2
	strh	r3, [r5]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b660

.thumb_func_start OvlFunc_969_200b6d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x236
	bl	__GetFlag
	cmp	r0, #0
	bne	.L36ee
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L37b8
.L36ee:
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x236
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3714
	bl	__Random
	mov	r2, r0
	lsl	r2, #8
	b	.L371c

	.pool_aligned

.L3714:
	bl	__Random
	mov	r2, r0
	lsl	r2, #6
.L371c:
	ldr	r3, [r5, #0xc]
	lsr	r2, #16
	lsl	r2, #16
	add	r2, r3
	ldr	r3, =0xffe40000
	mov	r0, #0x8e
	add	r2, r3
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r0, #1
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L37b8
	ldr	r1, =gScript_969__0200e16c
	mov	r0, r7
	ldr	r6, [r7, #0x50]
	bl	__Actor_SetScript
	mov	r1, #1
	mov	r0, r7
	bl	__Func_80929d8
	mov	r3, r7
	add	r3, #0x55
	mov	r5, #0
	strb	r5, [r3]
	bl	__Random
	ldr	r3, =0xffff000
	mov	r2, r7
	add	r2, #0x64
	and	r3, r0
	strh	r3, [r2]
	mov	r3, r7
	add	r3, #0x66
	strh	r5, [r3]
	ldr	r3, =OvlFunc_969_200b600
	ldr	r1, .L37a4	@ 0
	str	r3, [r7, #0x6c]
	mov	r8, r1
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #16
	sub	r0, r3
	lsr	r0, #20
	bl	__sin
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	asr	r3, #16
	str	r3, [r7, #0x30]
	mov	r3, r6
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	b	.L37b8

	.align	2, 0
.L37a4:
	.word	0
	.pool

.L37b8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b6d0

.thumb_func_start OvlFunc_969_200b7c4
	push	{r5, r6, lr}
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	mov	r6, r0
	cmp	r3, r2
	bne	.L37e2
	ldr	r2, [r5, #0x3c]
.L37e2:
	mov	r2, #0x80
	ldr	r3, [r6, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L37fa
	ldr	r2, [r6, #0x3c]
	cmp	r2, r3
	bne	.L37fa
	ldr	r3, [r6, #0x40]
	mov	r1, #1
	cmp	r3, r2
	beq	.L37fc
.L37fa:
	mov	r1, #0
.L37fc:
	cmp	r1, #0
	beq	.L38ae
	mov	r3, #0
	strh	r3, [r5, #6]
	ldr	r0, =0x235
	strh	r3, [r6, #6]
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3846
	mov	r0, #0x14
	mov	r1, #7
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #7
	bl	__Func_8092950
	mov	r2, #0xa0
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L3874
	mov	r2, #0x80
	lsl	r2, #2
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #0x18]
	add	r3, r2
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r2
	str	r3, [r6, #0x1c]
	b	.L3874
.L3846:
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L3864
	mov	r0, #0x14
	mov	r1, #0xf
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0
	bl	__Func_8092950
	b	.L3874
.L3864:
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #0xf
	bl	__Func_8092950
.L3874:
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L38ae
	mov	r2, #0x9c
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	bge	.L3898
	mov	r2, #0x80
	lsl	r2, #5
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #8]
	add	r3, r2
	str	r3, [r6, #8]
.L3898:
	mov	r2, #0xb6
	ldr	r3, [r5, #0x10]
	lsl	r2, #16
	cmp	r3, r2
	ble	.L38ae
	ldr	r2, =0xfffff000
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	add	r3, r2
	str	r3, [r6, #0x10]
.L38ae:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_969_200b7c4

