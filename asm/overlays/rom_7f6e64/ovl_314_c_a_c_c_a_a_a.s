	.include "macros.inc"

.thumb_func_start OvlFunc_969_200871c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__Func_8079358
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x88
	lsl	r0, #1
	bl	__Func_8079358
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r6, #0xc
	mov	r7, #0
.L77a:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r6
	mov	r1, #1
	bl	__Func_8092b08
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #8
	add	r6, #1
	str	r3, [r5, #0xc]
	cmp	r6, #0x11
	bls	.L77a
	ldr	r3, =ewram_2000240
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	beq	.L7fe
	cmp	r3, #3
	bgt	.L7d4
	cmp	r3, #1
	beq	.L7e8
	cmp	r3, #2
	beq	.L7f8
	b	.L852
.L7d4:
	cmp	r3, #9
	beq	.L810
	cmp	r3, #9
	bgt	.L7e2
	cmp	r3, #4
	beq	.L80a
	b	.L852
.L7e2:
	cmp	r3, #0x5d
	beq	.L804
	b	.L852
.L7e8:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L852
	bl	OvlFunc_969_20088b4
	b	.L852
.L7f8:
	bl	OvlFunc_969_200a360
	b	.L852
.L7fe:
	bl	OvlFunc_969_200b8c0
	b	.L852
.L804:
	bl	OvlFunc_969_200b8dc
	b	.L852
.L80a:
	bl	OvlFunc_969_200b924
	b	.L852
.L810:
	bl	__Func_80916b0
	ldr	r0, =0x345
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L822
	mov	r0, #0
	b	.L83c
.L822:
	ldr	r0, =0x346
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L830
	mov	r0, #1
	b	.L83c
.L830:
	ldr	r0, =0x347
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L844
	mov	r0, #2
.L83c:
	mov	r1, #0x41
	bl	__Func_8078588
	b	.L84c
.L844:
	mov	r0, #3
	mov	r1, #0x41
	bl	__Func_8078588
.L84c:
	mov	r0, #9
	bl	__Func_8091e9c
.L852:
	ldr	r0, =0x109
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L874
	bl	OvlFunc_969_20084bc
	cmp	r0, #0
	beq	.L874
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L874
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L874:
	mov	r0, #0
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_969_200871c

