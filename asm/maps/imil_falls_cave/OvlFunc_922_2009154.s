	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009154
	push	{r5, r6, r7, lr}
	sub	sp, #8
	mov	r3, #0xc
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0x1c
	mov	r2, #0xa
	mov	r3, #0x12
	bl	__Func_8010704
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1198
	mov	r0, #8
	mov	r1, #0x15
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r3, #0xd
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
	b	.Lm922_11b6
.Lm922_1198:
	mov	r0, #8
	mov	r1, #0xd
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r3, #0x15
	mov	r2, #0x13
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	bl	__Func_8010704
.Lm922_11b6:
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1226
	mov	r0, #8
	mov	r1, #0xc
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r5, #0x13
	mov	r0, #5
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	mov	r7, #0xc
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r6, #0xd
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1226
	mov	r0, #8
	mov	r1, #0x15
	mov	r2, #0x14
	bl	OvlFunc_922_2009004
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x14
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #3
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
.Lm922_1226:
	ldr	r0, =0x306
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1250
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0x15
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm922_126e
.Lm922_1250:
	mov	r0, #9
	mov	r1, #0xf
	mov	r2, #0x11
	bl	OvlFunc_922_2009004
	mov	r3, #0xe
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.Lm922_126e:
	ldr	r0, =0x307
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1298
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #8
	bl	OvlFunc_922_2009004
	mov	r3, #0x12
	mov	r2, #0x19
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm922_12b6
.Lm922_1298:
	mov	r0, #0xa
	mov	r1, #0x13
	mov	r2, #0x19
	bl	OvlFunc_922_2009004
	mov	r3, #0x12
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0x12
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
.Lm922_12b6:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009154

