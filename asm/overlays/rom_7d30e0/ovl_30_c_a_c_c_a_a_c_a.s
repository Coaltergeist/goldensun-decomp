	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008f40
	push	{r5, r6, lr}
	mov	r3, #0xff
	and	r3, r0
	lsl	r3, #2
	mov	r6, r3
	mov	r5, r3
	mov	r3, #0x80
	lsl	r3, #1
	and	r3, r0
	sub	sp, #8
	add	r6, #0x4d
	add	r5, #0xd
	cmp	r3, #0
	beq	.Lf98
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x4f
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #0x28
	bl	__WaitFrames
.Lf98:
	mov	r3, #0x28
	str	r3, [sp, #4]
	mov	r0, #0x50
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r3, #0x29
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r0, r5
	mov	r1, #0x28
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008f40

.thumb_func_start OvlFunc_948_2008fdc
	push	{r5, lr}
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r3
	sub	sp, #8
	cmp	r0, #0
	beq	.L1028
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r0, #0x3c
	bl	__WaitFrames
.L1028:
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r3, #0x32
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008fdc

.thumb_func_start OvlFunc_948_2009070
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L10ae
	ldr	r0, =0x9c4
	bl	__GetFlag
	cmp	r0, #0
	bne	.L10ae
	mov	r0, #0xf3
	bl	__CheckPartyItem
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L10ae
	ldr	r0, =0x9c4
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #1
	bl	OvlFunc_948_2008fdc
	mov	r0, #0xf3
	bl	__Func_80789dc
.L10ae:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009070

.thumb_func_start OvlFunc_948_20090b8
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	cmp	r3, r2
	bne	.L1100
	mov	r3, #0x9c
	lsl	r3, #4
	add	r5, r6, r3
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1100
	mov	r0, #0xf4
	bl	__CheckPartyItem
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.L1100
	mov	r0, r5
	bl	__SetFlag
	mov	r0, #0x80
	lsl	r0, #1
	orr	r0, r6
	bl	OvlFunc_948_2008f40
	mov	r0, #0xf4
	bl	__Func_80789dc
.L1100:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20090b8

