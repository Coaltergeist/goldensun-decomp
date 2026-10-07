	.include "macros.inc"

.thumb_func_start Lalivero_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r0, #0xe1
	lsl	r0, #1
	add	r0, r3
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	sub	sp, #8
	mov	r9, r0
	ldrh	r2, [r0]
	cmp	r3, #0x5a
	bne	.Lm966_123c
	ldr	r0, =0x9a7
	bl	__SetFlag
	ldr	r0, =0x9bf
	bl	__SetFlag
	mov	r3, r9
	ldrh	r2, [r3]
.Lm966_123c:
	mov	r0, #0xb6
	lsl	r3, r2, #16
	lsl	r0, #15
	cmp	r3, r0
	bne	.Lm966_124c
	ldr	r0, =0x9a7
	bl	__SetFlag
.Lm966_124c:
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	mov	r0, #0xe4
	add	r2, r1, r3
	lsl	r0, #1
	sub	r3, #0xc0
	str	r3, [r2]
	add	r2, r1, r0
	mov	r3, #0x18
	str	r3, [r2]
	mov	r1, #3
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r7, #0
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #3
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r7, [r0]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #1
	mov	r3, r0
	mov	r10, r1
	add	r3, #0x5c
	mov	r2, r10
	strb	r2, [r3]
	sub	r3, #7
	strb	r7, [r3]
	mov	r3, #0xa0
	ldr	r6, [r0, #0x50]
	lsl	r3, #12
	str	r3, [r0, #0xc]
	mov	r3, r6
	add	r3, #0x27
	strb	r7, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	mov	r8, r3
	mov	r1, #0xc1
	and	r3, r2
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xf2
	bl	__LoadItemIcon
	mov	r1, #0x80
	lsl	r1, #3
	add	r5, r1
	mov	r2, r5
	mov	r1, #0x80
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	ldr	r0, =0x9a7
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm966_13b8
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r3, #0xe
	add	r0, #0x59
	strb	r7, [r0]
	mov	r5, #4
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r8
	str	r2, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x10
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x9bb
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm966_1392
	b	.Lm966_14c0
.Lm966_1392:
	mov	r1, #0xe0
	mov	r2, #0xb8
	mov	r0, #0x12
	lsl	r1, #14
	lsl	r2, #16
	bl	__MapActor_SetPos
	b	.Lm966_14c0

	.pool_aligned

.Lm966_13b8:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x59
	strb	r6, [r3]
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #2
	orr	r3, r5
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xc0
	ldr	r2, [r0, #0x50]
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r6, =0
	mov	r3, r0
	add	r3, #0x59
	strb	r6, [r3]
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	ldr	r3, [r0, #0x50]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0x80
	ldr	r2, [r0, #0x50]
	lsl	r3, #7
	strh	r3, [r2, #0x1e]
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0x17
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xe
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	b	.Lm966_1428

	.pool_aligned

.Lm966_1428:
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x4e
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x11
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x12
	str	r3, [sp]
	mov	r0, #0x14
	mov	r1, #0x17
	mov	r3, #1
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, r9
	ldrh	r3, [r0]
	mov	r1, #0x80
	sub	r3, #0x14
	lsl	r3, #16
	lsl	r1, #9
	cmp	r3, r1
	bhi	.Lm966_14c0
	ldr	r0, =0x9b8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm966_14c0
	ldr	r0, =0x9b8
	bl	__SetFlag
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r2, r10
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	mov	r0, r10
	strb	r0, [r3]
	bl	OvlFunc_966_2008218
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	strb	r6, [r3]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x5b
	strb	r6, [r3]
.Lm966_14c0:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Lalivero_MapInit

