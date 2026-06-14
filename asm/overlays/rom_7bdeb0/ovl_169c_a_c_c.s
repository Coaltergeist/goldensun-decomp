	.include "macros.inc"

.thumb_func_start OvlFunc_934_2009938
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L197a
	mov	r1, #3
	mov	r0, r6
	bl	__Func_8092b08
	mov	r1, r5
	add	r1, #0x22
	mov	r3, #2
	strb	r3, [r1]
	add	r1, #1
	ldrb	r3, [r1]
	mov	r2, #2
	orr	r2, r3
	strb	r2, [r1]
	mov	r2, #0x80
	lsl	r2, #12
	lsl	r3, r7, #20
	add	r3, r2
	mov	r1, r8
	str	r3, [r5, #8]
	lsl	r3, r1, #20
	add	r3, r2
	str	r3, [r5, #0x10]
.L197a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009938

.thumb_func_start OvlFunc_934_2009984
	push	{r5, r6, lr}
	ldr	r2, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	ldr	r3, =0x5e
	sub	sp, #8
	cmp	r1, r3
	beq	.L199c
	b	.L1acc
.L199c:
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #9
	bls	.L19ae
	b	.L1bc6
.L19ae:
	ldr	r2, =.L19b8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L19b8:
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L19e0
	.word	.L1a02
	.word	.L1a02
	.word	.L1a02
	.word	.L1a64
	.word	.L1a64
	.word	.L1a64
.L19e0:
	mov	r0, #0xf
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xd
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xf0
	mov	r2, #0xe8
	lsl	r0, #15
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_common0_70
	b	.L1bc6
.L1a02:
	mov	r0, #0x70
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a0e
	b	.L1bc6
.L1a0e:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1a1a
	b	.L1bc6
.L1a1a:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #5
	bne	.L1a38
	add	r0, #0x3f
	bl	__SetFlag
.L1a38:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a4a
	b	.L1bc6
.L1a4a:
	mov	r1, #0xc6
	mov	r2, #0x8c
	mov	r0, #8
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_934_2008cf8
	str	r3, [r0, #0x6c]
	b	.L1bc6
.L1a64:
	mov	r2, #0x8a
	lsl	r2, #18
	mov	r1, #0
	mov	r3, #0x14
	ldr	r0, =0x2820000
	bl	OvlFunc_common0_70
	mov	r3, #0
	mov	r2, #0x22
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	bl	__Func_8010704
	bl	OvlFunc_934_2009770
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1aaa
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x17
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1aaa:
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1ab6
	b	.L1bc6
.L1ab6:
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1f
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.L1bc6
.L1acc:
	ldr	r3, =0x5f
	cmp	r1, r3
	bne	.L1bc6
	mov	r0, #0xe1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bgt	.L1bc6
	cmp	r3, #1
	blt	.L1bc6
	add	r0, #0x40
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b14
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0xc
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_934_2008528
	b	.L1b1a
.L1b14:
	mov	r0, #9
	bl	OvlFunc_934_2008ba4
.L1b1a:
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b4a
	mov	r6, #4
	mov	r5, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	mov	r0, #2
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0x10
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	OvlFunc_934_2008528
	b	.L1b50
.L1b4a:
	mov	r0, #0xa
	bl	OvlFunc_934_2008ba4
.L1b50:
	ldr	r0, =0x205
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L1b72
	mov	r3, #2
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0x13
	mov	r3, #4
	bl	OvlFunc_934_2008528
	b	.L1bc6
.L1b72:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1bb8
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xd
	mov	r2, #0xf
	mov	r3, #4
	mov	r0, #0
	str	r5, [sp, #4]
	bl	OvlFunc_934_2008528
	mov	r3, #0x10
	mov	r5, #0xe
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xf
	str	r3, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	b	.L1bc6
.L1bb8:
	mov	r0, #0xb
	bl	OvlFunc_934_2008ba4
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092b08
.L1bc6:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009984

