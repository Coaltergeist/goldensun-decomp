	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_20095dc
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #1
	lsl	r3, #16
	lsl	r2, #9
	sub	sp, #8
	cmp	r3, r2
	bhi	.Lm922_160c
	mov	r3, #0xe
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x16
	mov	r1, #0x14
	mov	r2, #9
	mov	r3, #8
	bl	__Func_8010704
	b	.Lm922_1620
.Lm922_160c:
	mov	r3, #7
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010704
.Lm922_1620:
	ldr	r0, =0x313
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_164a
	mov	r0, #8
	mov	r1, #0x14
	mov	r2, #0x11
	bl	OvlFunc_922_2009004
	mov	r3, #0x13
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm922_1668
.Lm922_164a:
	mov	r0, #8
	mov	r1, #0x14
	mov	r2, #0xa
	bl	OvlFunc_922_2009004
	mov	r3, #0x13
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.Lm922_1668:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1694
	mov	r0, #9
	mov	r1, #0xe
	mov	r2, #0x10
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.Lm922_16b2
.Lm922_1694:
	mov	r0, #9
	mov	r1, #0x16
	mov	r2, #0x10
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x10
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.Lm922_16b2:
	ldr	r0, =0x315
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_16dc
	mov	r0, #0xa
	mov	r1, #0x11
	mov	r2, #0x2e
	bl	OvlFunc_922_2009004
	mov	r3, #7
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.Lm922_16fa
.Lm922_16dc:
	mov	r0, #0xa
	mov	r1, #7
	mov	r2, #0x2e
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0xf
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.Lm922_16fa:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20095dc

