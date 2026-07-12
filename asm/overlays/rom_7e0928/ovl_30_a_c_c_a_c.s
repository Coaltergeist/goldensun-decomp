	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_2008274
	push	{r5, r6, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r6, =0x6666
	ldr	r5, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #14
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #11
	bl	__Actor_TravelTo
	ldr	r0, =0x362
	bl	__SetFlag
	mov	r3, #0xd
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #9
	str	r3, [sp]
	mov	r0, #0xe
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008274

.thumb_func_start OvlFunc_956_20082f8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, =0x362
	sub	sp, #8
	ldr	r6, [r3]
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	bne	.L3e0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L332
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__MapActor_TravelTo
.L332:
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	ldr	r2, =0x6666
	add	r3, #0x55
	strb	r7, [r3]
	ldr	r3, =0xcccc
	mov	r8, r2
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	mov	r10, r3
	str	r3, [r0, #0x30]
	lsl	r2, #14
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x55
	strb	r7, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r3, r10
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x30]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	strb	r7, [r2]
	mov	r9, r2
	mov	r2, r10
	mov	r3, r8
	str	r2, [r5, #0x30]
	mov	r2, #0x80
	lsl	r2, #11
	str	r3, [r5, #0x34]
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	bl	__Actor_TravelTo
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r1, #0x18
	mov	r0, #0
	bl	__Func_8010704
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r3, #3
	mov	r2, r9
	strb	r3, [r2]
	ldr	r3, [r5, #0xc]
	ldr	r0, =0x367
	str	r3, [r5, #0x14]
	bl	__SetFlag
.L3e0:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20082f8

.thumb_func_start OvlFunc_956_2008404
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #1
	sub	sp, #8
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r2, #0
	mov	r3, r0
	mov	r8, r2
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r6, =0x6666
	ldr	r5, =0xcccc
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #11
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r0
	mov	r2, r8
	add	r3, #0x55
	strb	r2, [r3]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x34]
	str	r5, [r0, #0x30]
	lsl	r2, #14
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r3, #9
	mov	r2, #0xc
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	bl	__Func_8010704
	mov	r0, #2
	bl	__WaitFrames
	ldr	r0, =0x367
	bl	__ClearFlag
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008404

.thumb_func_start OvlFunc_956_20084a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	mov	r9, r3
	cmp	r3, #9
	bne	.L564
	ldr	r3, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r7, #0xc
	bne	.L564
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r5, r0
	bl	__Actor_SetSpriteFlags
	mov	r1, #2
	mov	r10, r1
	mov	r2, r5
	add	r2, #0x23
	mov	r1, r10
	strb	r1, [r2]
	mov	r3, #0
	add	r2, #0x32
	strb	r3, [r2]
	ldr	r2, =0x6666
	ldr	r6, =0xcccc
	mov	r8, r2
	str	r2, [r5, #0x34]
	mov	r2, #0x80
	ldr	r1, [r5, #8]
	ldr	r3, [r5, #0x10]
	lsl	r2, #11
	mov	r0, r5
	str	r6, [r5, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x23
	mov	r1, r10
	strb	r1, [r3]
	mov	r2, r8
	str	r2, [r0, #0x34]
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	ldr	r3, [r0, #0x10]
	lsl	r2, #14
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r2, #0x80
	ldr	r1, [r0, #8]
	str	r3, [r0, #0x34]
	lsl	r2, #11
	ldr	r3, [r0, #0x10]
	str	r6, [r0, #0x30]
	bl	__Actor_TravelTo
	mov	r0, #0xda
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xd
	str	r3, [sp]
	mov	r0, #0xf
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
	mov	r1, r9
	str	r1, [sp]
	mov	r0, #1
	mov	r1, #0x19
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp, #4]
	bl	__Func_8010704
.L564:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20084a4
