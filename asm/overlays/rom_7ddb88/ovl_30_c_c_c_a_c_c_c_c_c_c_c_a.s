	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_2008714
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r7, #0x16
	mov	r6, r0
.L72a:
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #8]
	ldr	r3, [r6, #8]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L74c
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L754
	b	.L786
.L74c:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L754:
	ldr	r1, [r5, #0x10]
	ldr	r3, [r6, #0x10]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L766
	ldr	r3, =0x9ffff
	cmp	r2, r3
	ble	.L76e
	b	.L786
.L766:
	ldr	r2, =0x9ffff
	sub	r3, r1
	cmp	r3, r2
	bgt	.L786
.L76e:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L77e
	ldr	r3, [r5, #0x10]
	b	.L784
.L77e:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r5, #0x2c]
	add	r3, r2
.L784:
	str	r3, [r6, #0x10]
.L786:
	add	r7, #1
	cmp	r7, #0x19
	ble	.L72a
	ldr	r3, =.L4838
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L7cc
	mov	r2, #0x80
	ldr	r3, [r5, #0x38]
	lsl	r2, #24
	cmp	r3, r2
	bne	.L7cc
	ldr	r3, =.L4834
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L7b6
	mov	r3, #0x3a
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	b	.L7c4
.L7b6:
	mov	r3, #0x3a
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xa
	mov	r2, #1
.L7c4:
	mov	r3, #1
	bl	__Func_8010704
	b	.L7f2
.L7cc:
	mov	r3, #0xb
	mov	r5, #0x3a
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0xe
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L7f2:
	ldr	r5, =.L4838
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L8ba
	ldr	r3, =.L4834
	ldr	r2, [r3]
	mov	r1, #1
	eor	r2, r1
	str	r2, [r3]
	cmp	r2, #0
	beq	.L862
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xea
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0xf2
	mov	r3, #0xf8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0xfa
	mov	r3, #0xb8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0x81
	mov	r3, #0xf8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x1f
	mov	r1, #0xb
	bl	__Func_80924d4
	b	.L8ba
.L862:
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xea
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r1, #0xf2
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0xfa
	mov	r3, #0xd8
	lsl	r1, #18
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0x81
	mov	r3, #0xd8
	lsl	r1, #19
	mov	r2, #0
	lsl	r3, #16
	bl	__Func_800d14c
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
.L8ba:
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x77
	bls	.L8d2
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L8d2
	str	r0, [r5]
.L8d2:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_2008714

.thumb_func_start OvlFunc_955_20088ec
	push	{lr}
	ldr	r3, =.L4838
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, =.L4834
	ldr	r0, =OvlFunc_955_2008714
	str	r2, [r3]
	bl	__StopTask
	mov	r1, #0xea
	mov	r2, #0xd8
	mov	r0, #0x16
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xf2
	mov	r2, #0xd8
	mov	r0, #0x17
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xfa
	mov	r2, #0xd8
	mov	r0, #0x18
	lsl	r1, #18
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0x81
	mov	r2, #0xd8
	mov	r0, #0x19
	lsl	r1, #19
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r0, #0x1f
	mov	r1, #0xa
	bl	__Func_80924d4
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20088ec

