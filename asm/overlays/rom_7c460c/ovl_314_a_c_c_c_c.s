	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008d30
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld46
	b	.Le98
.Ld46:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld52
	b	.Le98
.Ld52:
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x13
	bl	__MapActor_SetPos
	mov	r0, #0xd2
	bl	__PlaySound
	mov	r0, #1
	bl	__WaitFrames
	mov	r6, #1
	mov	r5, #0xe
	mov	r0, #0x20
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x21
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x23
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2e
	str	r3, [sp, #4]
	mov	r10, r3
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x29
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x2f
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x32
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x35
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x2d
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x38
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x20
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x23
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	mov	r0, #0x26
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__WaitFrames
	mov	r0, #0x29
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0x2c
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x31
	mov	r2, #3
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r0, =0x202
	bl	__SetFlag
.Le98:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008d30

