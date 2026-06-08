	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008594
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r10, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_8079338
	mov	r3, #0xa
	ldrsh	r2, [r5, r3]
	mov	r9, r2
	mov	r2, #0x12
	ldrsh	r1, [r5, r2]
	mov	r8, r0
	mov	r11, r1
	ldr	r6, =REG_IME
	bl	__Func_80916b0
	mov	r0, #0xf4
	bl	__Func_80f9080
	mov	r2, #0
.L5e0:
	mov	r1, #0x80
	lsl	r1, #4
	lsl	r3, r2, #11
	add	r3, r1
	mov	r1, #0x80
	str	r3, [r7, #0x18]
	lsl	r1, #5
	lsl	r3, r2, #12
	add	r3, r1
	str	r3, [r7, #0x1c]
	mov	r3, r8
	cmp	r3, #0
	bne	.L630
	ldr	r1, =gDMATaskCount
	add	r5, r2, #1
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r1]
	cmp	r3, #0x1f
	bgt	.L62c
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r1]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r1
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.L62c:
	strh	r0, [r6]
	b	.L632
.L630:
	add	r5, r2, #1
.L632:
	mov	r0, #1
	bl	__Func_80030f8
	mov	r2, r5
	cmp	r2, #0xf
	ble	.L5e0
	mov	r0, #0xff
	lsl	r0, #1
	add	r0, r10
	bl	__Func_8079358
	mov	r0, #0xd0
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L65e
	b	.L7cc
.L65e:
	ldr	r0, =0x9b6
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L66a
	b	.L7cc
.L66a:
	ldr	r0, =0x9b6
	bl	__Func_8079358
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6a0
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_80923e4
.L6a0:
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_809280c
	mov	r0, #0xd
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, r11
	strb	r3, [r0]
	sub	r2, #0x10
	mov	r1, r9
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, r9
	and	r5, r3
	mov	r2, r11
	add	r1, #8
	sub	r2, #0x28
	strb	r5, [r0]
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__Func_809163c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80924d4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	ldr	r0, =0x262e
	bl	__Func_8092b94
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x101
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L7bc
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__Func_8092128
.L7bc:
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
.L7cc:
	bl	__Func_8091750
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008594

