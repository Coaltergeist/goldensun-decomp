	.include "macros.inc"

.thumb_func_start Vault2_MapInit
	push	{r5, r6, lr}
	mov	r0, #0x80
	lsl	r0, #2
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm901_f54
	mov	r3, #0x17
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x37
	mov	r1, #0x1a
	mov	r2, #4
	mov	r3, #2
	bl	__Func_8010704
.Lm901_f54:
	mov	r0, #0x80
	mov	r2, #0xd2
	lsl	r2, #17
	mov	r1, #0
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_common0_70
	mov	r3, #3
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x29
	mov	r2, #8
	mov	r3, #0x2d
	mov	r0, #0x2d
	bl	__CopyMapTiles
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_901_2008400
	str	r5, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x64
	strh	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x64
	strh	r6, [r0]
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm901_fbe
	mov	r1, #0xd8
	mov	r2, #0xc4
	mov	r0, #0x12
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.Lm901_fbe:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bgt	.Lm901_fe8
	mov	r0, #0x34
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm901_fe8
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm901_fe8
	ldr	r0, =0x867
	bl	__ClearFlag
.Lm901_fe8:
	ldr	r0, =0x867
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm901_100a
	mov	r0, #0x34
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm901_100a
	mov	r1, #0xcc
	mov	r2, #0xf0
	mov	r0, #0x15
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.Lm901_100a:
	ldr	r3, =gState
	mov	r1, #0xe1
	lsl	r1, #1
	add	r5, r3, r1
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0xb
	bne	.Lm901_1024
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldrh	r2, [r5]
.Lm901_1024:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.Lm901_1036
	mov	r0, #0x90
	lsl	r0, #1
	bl	__ClearFlag
.Lm901_1036:
	mov	r0, #0
	add	sp, #8
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Vault2_MapInit

