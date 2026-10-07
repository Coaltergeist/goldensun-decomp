	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_20084e4
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x201
	sub	sp, #0xc
	bl	__ClearFlag
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.Lm933_590
	mov	r3, #0x16
	mov	r2, #7
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	b	.Lm933_7e6
.Lm933_590:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.Lm933_598
	b	.Lm933_6f8
.Lm933_598:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xe
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r8, r2
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0x18
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0x2c
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r3, #0x19
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2d
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x46
	mov	r1, #0x44
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_80105d4
	b	.Lm933_7e6
.Lm933_6f8:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lm933_7e6
	mov	r3, #0x10
	str	r3, [sp, #4]
	mov	r6, #8
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_8010788
	mov	r1, #6
	mov	r2, #0x14
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r8, r1
	mov	r10, r2
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010788
	mov	r3, #0x17
	str	r3, [sp, #4]
	mov	r5, #0xa
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010788
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x12
	mov	r1, r8
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
	mov	r2, r8
	mov	r3, r10
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r0, #0x45
	mov	r1, #0x63
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r5, #0x20
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r6, #9
	mov	r5, #5
	mov	r0, #6
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #9
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r8
	str	r1, [sp, #4]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_8010704
.Lm933_7e6:
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r5, #0x64
.Lm933_824:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_808edac
	cmp	r5, #0x6b
	ble	.Lm933_824
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.Lm933_866
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r3, #8
	lsl	r1, #7
	mov	r2, #0x80
	str	r3, [sp, #4]
	str	r1, [sp, #8]
	mov	r3, #0x80
	mov	r1, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #11
	lsl	r3, #6
	str	r2, [sp]
	bl	__Func_8094730
.Lm933_866:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_20084e4

