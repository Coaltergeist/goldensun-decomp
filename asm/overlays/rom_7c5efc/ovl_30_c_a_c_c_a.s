	.include "macros.inc"

.thumb_func_start OvlFunc_941_200807c
	push	{lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L8e
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L8e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_200807c

.thumb_func_start OvlFunc_941_2008094
	push	{lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lb2
	mov	r1, r0
	mov	r2, #1
	add	r1, #0x23
	strb	r2, [r1]
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
.Lb2:
	mov	r3, #8
	mov	r2, #0x20
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x20
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_8010704
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2008094

.thumb_func_start OvlFunc_941_20080d4
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #5
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	cmp	r5, #0
	beq	.Lfc
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.Lfc:
	mov	r3, #0x3b
	str	r3, [sp, #4]
	mov	r6, #0x15
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0x18
	mov	r2, #0x3e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #3
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_80105d4
	mov	r3, #0x37
	str	r3, [sp, #4]
	mov	r0, #1
	mov	r1, #0x5e
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_80105d4
	mov	r5, #0x3a
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x2b
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r1, #0x57
	mov	r2, #2
	mov	r3, #5
	mov	r0, #0x29
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #4
	bl	__WaitFrames
	mov	r0, #4
	bl	__WaitFrames
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #2
	str	r6, [sp]
	bl	__Func_8010704
	mov	r3, #0x16
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x15
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp, #4]
	mov	r0, #0x13
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20080d4

.thumb_func_start OvlFunc_941_20081b0
	push	{r5, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	cmp	r5, #0
	beq	.L1d6
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #1
	strb	r3, [r2]
.L1d6:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1f6
	mov	r0, #0x9d
	bl	__PlaySound
	bl	OvlFunc_941_20080d4
	mov	r0, #0x50
	bl	__PlaySound
	ldr	r0, =0x202
	bl	__SetFlag
.L1f6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_20081b0

