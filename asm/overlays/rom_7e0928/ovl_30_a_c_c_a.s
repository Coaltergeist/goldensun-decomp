	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_200804c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r5, [r3]
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	ldr	r3, =.L5484
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.Lfc
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r1, #3
	add	r2, #1
	and	r2, r1
	str	r2, [r3]
	ldr	r3, =.L4c20
	mov	r2, #0xb
	mov	r6, #0x12
	mov	r9, r3
	mov	r10, r2
	mov	r7, #0x21
.L8e:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r8, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r3, r6, r3
	sub	r3, #0x12
	mov	r2, r9
	ldrsb	r5, [r2, r3]
	mov	r0, r6
	mov	r1, r5
	bl	__MapActor_SetAnim
	mov	r1, r5
	add	r0, r6, #5
	add	r1, #8
	bl	__MapActor_SetAnim
	mov	r3, r10
	str	r3, [sp, #4]
	mov	r0, #0x20
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #2
	str	r7, [sp]
	bl	__Func_8010704
	cmp	r5, #7
	beq	.Ldc
	mov	r2, r10
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xc
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	bl	__Func_8010704
.Ldc:
	add	r6, #1
	add	r7, #2
	cmp	r6, #0x16
	ble	.L8e
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	lsl	r3, #1
	add	r3, #5
	ldrsb	r1, [r1, r3]
	mov	r0, #0x1c
	bl	__MapActor_SetAnim
	b	.L14c
.Lfc:
	ldr	r3, =.L5480
	ldr	r2, [r3]
	mov	r3, #0xc1
	lsl	r3, #1
	add	r3, r5
	mov	r12, r3
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r1, =.L4c20
	ldr	r2, =0x31ffff
	lsl	r3, #1
	ldr	r7, =0x13fffe
	mov	r6, #0x12
	add	r1, r3, r1
	mov	r14, r2
.L11a:
	ldrb	r3, [r1]
	lsl	r3, #24
	asr	r5, r3, #24
	ldr	r3, [r0, #8]
	lsl	r2, r6, #21
	sub	r3, r2
	add	r3, r14
	add	r1, #1
	cmp	r3, r7
	bhi	.L146
	cmp	r4, #0xb
	bne	.L13a
	cmp	r5, #4
	bne	.L13a
	mov	r3, r12
	strh	r5, [r3]
.L13a:
	cmp	r4, #0xc
	bne	.L146
	cmp	r5, #5
	bne	.L146
	mov	r2, r12
	strh	r5, [r2]
.L146:
	add	r6, #1
	cmp	r6, #0x16
	ble	.L11a
.L14c:
	ldr	r2, =.L5484
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x11
	bls	.L15c
	mov	r3, #0
	str	r3, [r2]
.L15c:
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200804c

.thumb_func_start OvlFunc_956_2008188
	push	{r5, lr}
	ldr	r3, =.L5484
	mov	r2, #0
	str	r2, [r3]
	ldr	r5, =OvlFunc_956_200804c
	ldr	r3, =.L5480
	mov	r0, r5
	str	r2, [r3]
	bl	__StopTask
	bl	_call_via_r5
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008188

.thumb_func_start OvlFunc_956_20081b4
	push	{lr}
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_956_200804c
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20081b4

.thumb_func_start OvlFunc_956_20081c8
	push	{r5, lr}
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r3, =.L5480
	ldr	r3, [r3]
	mov	r5, #0
	b	.L1e8
.L1d8:
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x77
	bgt	.L1f4
	ldr	r3, =.L5480
	ldr	r3, [r3]
.L1e8:
	cmp	r3, #3
	bne	.L1d8
	ldr	r3, =.L5484
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L1d8
.L1f4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20081c8

.thumb_func_start OvlFunc_956_2008204
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r2, r3
	ldr	r5, [r2]
	bl	__MapActor_GetActor
	mov	r1, #0x12
	ldrsh	r3, [r0, r1]
	sub	r3, #0xb7
	cmp	r3, #3
	bhi	.L238
	ldr	r3, [r5, #8]
	ldr	r2, =0xffff3334
	add	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r0, #8]
	add	r3, r2
	str	r3, [r0, #8]
.L238:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008204

.thumb_func_start OvlFunc_956_200824c
	push	{lr}
	mov	r0, #0xd8
	lsl	r0, #2
	sub	sp, #8
	bl	__SetFlag
	mov	r3, #0x31
	mov	r2, #0x3d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x3d
	mov	r2, #1
	mov	r3, #4
	bl	__Func_8010704
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_200824c

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
	bl	__Func_8092128
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
	bl	__Func_800c528
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
	bl	__Func_800c528
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
	bl	__Func_800c528
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

