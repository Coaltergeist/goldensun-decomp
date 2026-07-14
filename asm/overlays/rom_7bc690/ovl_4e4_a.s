	.include "macros.inc"

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
	bne	.L590
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
	b	.L7e6
.L590:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L598
	b	.L6f8
.L598:
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
	b	.L7e6
.L6f8:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.L7e6
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
.L7e6:
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
.L824:
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	add	r5, #1
	bl	__Func_808edac
	cmp	r5, #0x6b
	ble	.L824
	ldr	r3, =gState
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.L866
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
.L866:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_20084e4

.thumb_func_start OvlFunc_933_200888c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__ClearFlag
	ldr	r0, =0x201
	bl	__SetFlag
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x59
	cmp	r2, r3
	bne	.L948
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r6, #0x16
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x15
	str	r3, [sp, #4]
	mov	r5, #0x17
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x10
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x24
	mov	r2, #0x2c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0xe
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r1, #0xc8
	mov	r2, #0xb6
	mov	r0, #9
	lsl	r1, #17
	b	.Laee
.L948:
	ldr	r3, =0x5a
	cmp	r2, r3
	beq	.L950
	b	.Laf6
.L950:
	mov	r3, #0x2a
	mov	r2, #5
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r5, #0x14
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0xc
	mov	r0, #0x44
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x48
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r2, #0x38
	mov	r3, #0x12
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r10, r2
	mov	r0, #0x4c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x16
	str	r3, [sp, #4]
	mov	r5, #7
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_80105d4
	mov	r6, #0x17
	mov	r0, #0x50
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r8, r3
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r1, r8
	str	r1, [sp]
	mov	r5, #0x18
	mov	r0, #0x54
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x26
	str	r3, [sp]
	mov	r0, #0x58
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x1a
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x11
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x60
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x32
	mov	r2, #0x24
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x64
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r5, #0x22
	mov	r6, #0x2b
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_80105d4
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x68
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #6
	mov	r2, #0x2e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x6c
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, #0x1b
	mov	r2, #0x37
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x70
	mov	r1, #0x7e
	mov	r2, #4
	mov	r3, #2
	bl	__Func_80105d4
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x74
	mov	r3, #2
	mov	r1, #0x7e
	mov	r2, #4
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r1, #0xb0
	mov	r2, #0xcc
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xb8
	mov	r2, #0xc6
	mov	r0, #0xa
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r2, #0xbe
	mov	r0, #0xb
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r2, #0xb3
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xa2
	mov	r2, #0xcc
	mov	r0, #0xd
	lsl	r1, #18
.Laee:
	lsl	r2, #17
	bl	__MapActor_SetPos
	b	.Lbde
.Laf6:
	ldr	r3, =0x5b
	cmp	r2, r3
	bne	.Lbde
	mov	r1, #8
	mov	r3, #0xe
	str	r1, [sp]
	str	r3, [sp, #4]
	mov	r8, r1
	mov	r0, #0x40
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_80105d4
	mov	r3, #0x12
	str	r3, [sp, #4]
	mov	r6, #6
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #0x14
	str	r3, [sp, #4]
	mov	r0, #0x44
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0xa
	mov	r2, #0x15
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0x7c
	mov	r2, #4
	mov	r3, #4
	bl	__Func_80105d4
	mov	r2, r8
	str	r2, [sp]
	mov	r5, #0x20
	mov	r0, #0xa
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2b
	str	r3, [sp]
	mov	r0, #5
	mov	r1, #0x79
	mov	r2, #5
	mov	r3, #7
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r5, #9
	mov	r7, #5
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_80105d4
	mov	r3, #0x2c
	str	r3, [sp]
	mov	r0, #3
	mov	r3, #1
	mov	r1, #0x78
	mov	r2, #3
	str	r7, [sp, #4]
	bl	__Func_80105d4
	mov	r1, #0xa8
	mov	r2, #0xb8
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r0, #6
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x90a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lbde
	mov	r0, #0
	mov	r1, #0x77
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r7, [sp, #4]
	bl	__Func_80105d4
.Lbde:
	mov	r5, #0x64
.Lbe0:
	mov	r1, #1
	mov	r2, #1
	mov	r0, r5
	neg	r1, r1
	neg	r2, r2
	add	r5, #1
	bl	__Func_808edac
	cmp	r5, #0x6b
	ble	.Lbe0
	bl	__Func_808ee0c
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5c
	cmp	r2, r3
	beq	.Lc0e
	bl	__Func_80947e4
.Lc0e:
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_933_200888c

	.section .text.after_8c38, "ax", %progbits

	.section .text.after_8c6c, "ax", %progbits

.thumb_func_start OvlFunc_933_2008cd0
	push	{r5, r6, lr}
	ldr	r0, =0x232
	ldr	r3, =iwram_3001ebc
	ldr	r2, =gState
	ldr	r6, [r3]
	add	r3, r2, r0
	mov	r0, #0
	ldrsh	r1, [r3, r0]
	mov	r3, #0x64
	mov	r0, r1
	mul	r0, r3
	mov	r1, #0x8b
	lsl	r1, #2
	add	r2, r1
	mov	r3, #0
	ldrsh	r1, [r2, r3]
	bl	_divsi3_RAM
	mov	r5, r0
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldda
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld28
	cmp	r5, #0x4a
	bgt	.Ld28
	ldr	r0, =0x302
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Ld28:
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld50
	cmp	r5, #0x31
	bgt	.Ld50
	ldr	r0, =0x301
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Ld50:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld7c
	cmp	r5, #0x18
	bgt	.Ld7c
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x303
	bl	__ClearFlag
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x305
	bl	__ClearFlag
.Ld7c:
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ld9e
	cmp	r5, #0x18
	ble	.Ld9e
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xc1
	lsl	r0, #1
	add	r2, r6, r0
	mov	r3, #1
	strh	r3, [r2]
.Ld9e:
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldbc
	cmp	r5, #0x31
	ble	.Ldbc
	ldr	r0, =0x301
	bl	__SetFlag
	mov	r1, #0xc1
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #2
	strh	r3, [r2]
.Ldbc:
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ldda
	cmp	r5, #0x4a
	ble	.Ldda
	ldr	r0, =0x302
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #3
	strh	r3, [r2]
.Ldda:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2008cd0
