	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_20083a4
	ldr	r0, =.L15c0
	bx	lr
.func_end OvlFunc_960_20083a4

.thumb_func_start OvlFunc_960_20083ac
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa4
	cmp	r2, r3
	bne	.L3c4
	ldr	r0, =.L1610
	b	.L3da
.L3c4:
	ldr	r3, =0xa5
	cmp	r2, r3
	bne	.L3ce
	ldr	r0, =.L16b8
	b	.L3da
.L3ce:
	ldr	r3, =0xa6
	cmp	r2, r3
	bne	.L3d8
	ldr	r0, =.L1790
	b	.L3da
.L3d8:
	ldr	r0, =.L15f8
.L3da:
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_20083ac

.thumb_func_start OvlFunc_960_2008400
	push	{r5, r6, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__Func_8092054
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0x84
	lsl	r0, #2
	bl	__Func_80793b8
	mov	r5, r0
	cmp	r5, #0
	beq	.L448
	cmp	r5, #1
	bne	.L43a
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.L448
.L43a:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L448
	sub	r5, #1
.L448:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, r5
	bl	__Func_80793c8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008400

.thumb_func_start OvlFunc_960_2008464
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =ewram_2000240
	mov	r3, #0xfa
	mov	r9, r2
	lsl	r3, #1
	add	r3, r9
	ldr	r6, [r3]
	mov	r10, r0
	mov	r0, r6
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_8092054
	ldr	r0, =0x20f
	bl	__Func_8079338
	mov	r8, r0
	cmp	r0, #0
	bne	.L536
	bl	__Func_80916b0
	mov	r0, r6
	ldr	r1, =0x101
	bl	__Func_8093874
	mov	r0, r6
	mov	r1, #9
	bl	__Func_80924d4
	mov	r0, r10
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L4c2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__Func_8092128
.L4c2:
	mov	r0, r6
	bl	__Func_80923c4
	mov	r0, #0xf4
	bl	__Func_80f9080
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_960_2008400
	mov	r7, r5
	bl	__Func_80041d8
	add	r7, #0x55
	mov	r2, r8
	strb	r2, [r7]
	mov	r3, #0x80
	ldr	r2, [r5, #0xc]
	lsl	r3, #14
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, r5
	ldr	r3, [r5, #0x10]
	bl	__Func_800d14c
	mov	r0, r6
	bl	__Func_80923c4
	mov	r2, r8
	str	r2, [r5, #0x28]
	mov	r2, #0xf9
	mov	r3, #4
	lsl	r2, #1
	add	r2, r9
	strb	r3, [r7]
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, =0x20f
	bl	__Func_8079358
	mov	r0, #0x86
	lsl	r0, #2
	mov	r1, r10
	bl	__Func_80793c8
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, #0xb4
	bl	__Func_80793c8
	bl	__Func_8091750
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xbe
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r2, r8
	strh	r2, [r3]
.L536:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008464

.thumb_func_start OvlFunc_960_2008558
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_960_2008464
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008558

.thumb_func_start OvlFnuc_564
	push	{lr}
	mov	r0, #9
	bl	OvlFunc_960_2008464
	pop	{r0}
	bx	r0
.func_end OvlFnuc_564

.thumb_func_start OvlFunc_960_2008570
	push	{lr}
	mov	r0, #0xa
	bl	OvlFunc_960_2008464
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008570

.thumb_func_start OvlFunc_960_200857c
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_960_2008464
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_200857c

.thumb_func_start OvlFunc_960_2008588
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_960_2008464
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008588

.thumb_func_start OvlFunc_960_2008594
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r10, r0
	ldr	r0, [r3]
	bl	__Func_8092054
	mov	r5, r0
	mov	r0, r10
	bl	__Func_8092054
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
	ldr	r1, =ewram_2002090
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
	bl	__Func_8092054
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
	bl	__Func_8092054
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
	bl	__Func_8092054
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
	bl	__Func_8092054
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
	bl	__Func_8092054
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

.thumb_func_start OvlFunc_960_20087fc
	push	{lr}
	mov	r0, #8
	bl	OvlFunc_960_2008594
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_20087fc

.thumb_func_start OvlFunc_960_2008808
	push	{lr}
	mov	r0, #9
	bl	OvlFunc_960_2008594
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008808

.thumb_func_start OvlFunc_960_2008814
	push	{lr}
	mov	r0, #0xa
	bl	OvlFunc_960_2008594
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008814

.thumb_func_start OvlFunc_960_2008820
	push	{lr}
	mov	r0, #0xb
	bl	OvlFunc_960_2008594
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008820

.thumb_func_start OvlFunc_960_200882c
	push	{lr}
	mov	r0, #0xc
	bl	OvlFunc_960_2008594
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_200882c

.thumb_func_start OvlFunc_960_2008838
	push	{lr}
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L848
	b	.L9ae
.L848:
	ldr	r0, =0x1b7
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L854
	b	.L9ae
.L854:
	mov	r0, #0x9b
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L862
	b	.L9ae
.L862:
	ldr	r0, =0x9b5
	bl	__Func_8079358
	bl	__Func_80916b0
	ldr	r0, =0x2633
	bl	__Func_8092b94
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L886
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xd
	bl	__Func_80923e4
.L886:
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xdc
	mov	r2, #0x9d
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xde
	mov	r2, #0x9b
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #3
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x28
	bl	__Func_80937b8
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__Func_80937b8
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__Func_80937b8
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092f84
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8093054
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0x83
	mov	r2, #0x3c
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80937b8
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xd
	ldr	r1, =0xb333
	ldr	r2, =0x5999
	bl	__Func_8092064
	mov	r1, #0xdc
	mov	r2, #0x9d
	lsl	r2, #3
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092548
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L99a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xd
	bl	__Func_8092128
.L99a:
	mov	r0, #0xd
	bl	__Func_80923c4
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	bl	__Func_8091750
.L9ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008838

.thumb_func_start OvlFunc_960_20089cc
	push	{r5, r6, r7, lr}
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r6, r0
	ldr	r0, [r3]
	sub	sp, #0x38
	bl	__Func_8092054
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0xc0
	lsl	r3, #9
	mov	r7, r6
	str	r3, [r6, #0x30]
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r1, #0
	mov	r5, r0
	mov	r0, r6
	bl	__Func_800c528
	mov	r1, r6
	add	r1, #0x54
	ldrb	r3, [r1]
	mov	r2, #1
	eor	r3, r2
	mov	r0, #0x82
	strb	r3, [r1]
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.La20
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	b	.La80
.La20:
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0x14]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #0x40]
	ldr	r1, [r6, #8]
	ldr	r3, [r5, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	bge	.La38
	sub	r2, r3, r1
.La38:
	ldr	r0, [r6, #0x10]
	ldr	r1, [r5, #0x10]
	sub	r3, r0, r1
	cmp	r3, #0
	blt	.La4e
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	blt	.La5a
	b	.La82
.La4e:
	sub	r3, r1, r0
	add	r3, r2, r3
	mov	r2, #0x80
	lsl	r2, #12
	cmp	r3, r2
	bge	.La82
.La5a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, r5
	add	r3, #0x55
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.La72
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r3
	mov	r3, #0x37
	strh	r3, [r2]
.La72:
	mov	r3, #3
	strb	r3, [r7]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x38]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r3, [r5, #0x10]
.La80:
	str	r3, [r6, #0x40]
.La82:
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #7
	and	r7, r3
	cmp	r7, #0
	bne	.Labc
	ldr	r3, =0xcccc
	add	r5, sp, #0x10
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
	bl	__Func_8004458
	mov	r2, #0xf8
	lsl	r0, #12
	lsl	r2, #8
	lsr	r0, #16
	add	r0, r2
	strh	r0, [r5, #0x22]
	ldr	r3, =0x880001
	ldr	r0, [r6, #8]
	str	r3, [sp, #8]
	ldr	r1, [r6, #0xc]
	ldr	r2, [r6, #0x10]
	mov	r3, #0
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
.Labc:
	mov	r0, #1
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_960_20089cc

.thumb_func_start OvlFunc_960_2008adc
	push	{lr}
	ldr	r0, =0x9b7
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Lb04
	ldr	r0, =0x20e
	bl	__Func_8079358
	mov	r1, #0xf0
	mov	r2, #0xce
	mov	r0, #0xc
	lsl	r1, #15
	lsl	r2, #18
	bl	__Func_80923e4
	ldr	r1, =.L17a8
	mov	r0, #0xc
	bl	__Func_809207c
.Lb04:
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008adc

