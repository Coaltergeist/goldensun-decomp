	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_20095a0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r1, =.Lm917_1dcc
	ldr	r3, [r1]
	mov	r0, #0
	mov	r9, r0
	cmp	r3, #0x28
	bls	.Lm917_15b8
	b	.Lm917_16f8
.Lm917_15b8:
	ldr	r2, =.Lm917_15c0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm917_15c0:
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_16f8
	.word	.Lm917_1664
.Lm917_1664:
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r2, #0
	ldr	r6, =.Lm917_1dc0
	mov	r8, r2
	mov	r10, r2
	mov	r7, #0
.Lm917_1674:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm917_16e6
	mov	r1, r9
	ldr	r0, [r5, #0x50]
	bl	__Func_8096c48
	mov	r3, r5
	add	r3, #0x55
	mov	r9, r0
	mov	r0, r10
	strb	r0, [r3]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	mov	r1, #0xb4
	strh	r2, [r3]
	lsl	r1, #1
	mov	r0, r7
	bl	_udivsi3_RAM
	mov	r3, r5
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, [r6]
	str	r3, [r5, #0x38]
	ldr	r3, [r6, #4]
	str	r3, [r5, #0x3c]
	ldr	r3, [r6, #8]
	str	r3, [r5, #0x40]
	ldr	r3, =0x19999
	str	r3, [r5, #0x30]
	ldr	r3, =OvlFunc_917_200952c
	str	r3, [r5, #0x6c]
.Lm917_16e6:
	mov	r0, #1
	mov	r3, #0xf0
	add	r8, r0
	lsl	r3, #14
	mov	r2, r8
	add	r7, r3
	cmp	r2, #5
	bls	.Lm917_1674
	ldr	r1, =.Lm917_1dcc
.Lm917_16f8:
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0x78
	ble	.Lm917_1706
	mov	r3, #0
	str	r3, [r1]
.Lm917_1706:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_20095a0

