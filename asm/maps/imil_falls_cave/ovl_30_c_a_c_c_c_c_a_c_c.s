	.include "macros.inc"

.thumb_func_start OvlFunc_922_20097e4
	push	{r5, r6, r7, lr}
	sub	sp, #8
	bl	OvlFunc_922_2009948
	ldr	r6, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_1852
	ldr	r0, =0xf13
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm922_181a
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.Lm922_181a
	bl	OvlFunc_922_2009b1c
.Lm922_181a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r1, #0xc0
	sub	r3, #2
	lsl	r3, #16
	lsl	r1, #10
	cmp	r3, r1
	bhi	.Lm922_191e
	mov	r5, #0xe2
	lsl	r5, #17
	mov	r0, #0x9c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_922_2008ed8
	mov	r0, #0xbc
	lsl	r0, #16
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	bl	OvlFunc_922_2008ed8
	b	.Lm922_191e
.Lm922_1852:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_191e
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r7, =.Lm922_3328
	mov	r3, r0
	add	r3, #0x55
	mov	r5, #0
	str	r5, [r7]
	mov	r1, #1
	strb	r5, [r3]
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_8092b08
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	blt	.Lm922_18b2
	cmp	r3, #2
	ble	.Lm922_1894
	cmp	r3, #5
	beq	.Lm922_18a0
	b	.Lm922_18b2
.Lm922_1894:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	b	.Lm922_18b2
.Lm922_18a0:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	ldr	r3, =iwram_3001ee0
	ldr	r5, [r3]
	mov	r3, #0
	str	r3, [r5, #0x18]
.Lm922_18b2:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #6
	bgt	.Lm922_191e
	mov	r0, #0x82
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_18f4
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	bl	__CopyMapTiles
	mov	r2, #7
	mov	r3, #8
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	str	r3, [sp]
	bl	__CopyMapTiles
	b	.Lm922_191e
.Lm922_18f4:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091220
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
.Lm922_191e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20097e4

.thumb_func_start OvlFunc_922_2009948
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x3e
	sub	sp, #8
	cmp	r2, r3
	bne	.Lm922_1978
	mov	r3, #8
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0x1d
	mov	r2, #0xf
	mov	r3, #5
	bl	__Func_8010704
	bl	OvlFunc_922_2009050
	b	.Lm922_1a18
.Lm922_1978:
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_1998
	mov	r3, #0
	mov	r2, #0x1c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0xa
	mov	r3, #0x12
	bl	__Func_8010704
	bl	OvlFunc_922_2009154
	b	.Lm922_1a18
.Lm922_1998:
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_19c6
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	beq	.Lm922_19c6
	mov	r3, #0xc
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x15
	mov	r2, #9
	mov	r3, #0x10
	bl	__Func_8010704
	bl	OvlFunc_922_20092cc
	b	.Lm922_1a18
.Lm922_19c6:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x41
	cmp	r2, r3
	bne	.Lm922_1a18
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	ldrh	r3, [r3]
	mov	r0, #0x80
	sub	r3, #1
	lsl	r3, #16
	lsl	r0, #9
	cmp	r3, r0
	bhi	.Lm922_1a00
	mov	r3, #0x16
	mov	r2, #0x14
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #0xa
	mov	r2, #9
	mov	r3, #8
	bl	__Func_8010704
	b	.Lm922_1a14
.Lm922_1a00:
	mov	r3, #0x14
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x2d
	mov	r2, #0xb
	mov	r3, #4
	bl	__Func_8010704
.Lm922_1a14:
	bl	OvlFunc_922_20095dc
.Lm922_1a18:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009948

.thumb_func_start OvlFunc_922_2009a34
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb6
	ldr	r3, [r3]
	lsl	r1, #1
	ldr	r5, =gState
	add	r3, r1
	add	r1, #0x54
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	add	r3, r5, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x3f
	cmp	r2, r3
	bne	.Lm922_1a6e
	cmp	r6, #0x11
	bne	.Lm922_1a64
	mov	r1, #0x20
	neg	r1, r1
	mov	r0, #0
	bl	OvlFunc_922_2009ad0
	b	.Lm922_1a6e
.Lm922_1a64:
	mov	r0, #0x20
	neg	r0, r0
	mov	r1, #0
	bl	OvlFunc_922_2009ad0
.Lm922_1a6e:
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_1a94
	cmp	r6, #0x19
	bne	.Lm922_1a94
	ldr	r0, =0x309
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_1a94
	mov	r0, #0
	mov	r1, #0x20
	bl	OvlFunc_922_2009ad0
.Lm922_1a94:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009a34

