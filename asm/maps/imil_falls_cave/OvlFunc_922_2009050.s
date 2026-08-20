	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009050
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x1d
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r5, #8
	mov	r1, #0x2a
	mov	r2, #0xf
	mov	r3, #5
	str	r5, [sp]
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1090
	mov	r0, #8
	mov	r1, #0x16
	mov	r2, #0x1f
	bl	OvlFunc_922_2009004
	mov	r3, #0x1e
	str	r3, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp]
	bl	__Func_8010704
	b	.Lm922_10ae
.Lm922_1090:
	mov	r0, #8
	mov	r1, #8
	mov	r2, #0x1f
	bl	OvlFunc_922_2009004
	mov	r3, #0x16
	mov	r2, #0x1e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x1e
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.Lm922_10ae:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_10d8
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0x1d
	bl	OvlFunc_922_2009004
	mov	r3, #0xb
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x21
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm922_10f6
.Lm922_10d8:
	mov	r0, #9
	mov	r1, #0xc
	mov	r2, #0x21
	bl	OvlFunc_922_2009004
	mov	r3, #0xb
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.Lm922_10f6:
	ldr	r0, =0x303
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1120
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0x1d
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x21
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm922_113e
.Lm922_1120:
	mov	r0, #0xa
	mov	r1, #0x12
	mov	r2, #0x21
	bl	OvlFunc_922_2009004
	mov	r3, #0x11
	mov	r2, #0x1d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x1d
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.Lm922_113e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009050

