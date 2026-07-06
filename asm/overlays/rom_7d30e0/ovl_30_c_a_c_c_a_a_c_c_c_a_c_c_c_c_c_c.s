	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009308
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L131a
	ldr	r1, =0xfffff
	add	r3, r1
.L131a:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1326
	ldr	r2, =0xfffff
	add	r0, r2
.L1326:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r7, [r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1376
	ldr	r2, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1376
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #8
	beq	.L1376
	mov	r3, r6
	sub	r3, #0x15
	cmp	r3, #2
	bhi	.L1376
	cmp	r5, #9
	ble	.L1376
	cmp	r5, #0xb
	bgt	.L1376
	mov	r0, #0x88
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x5b
	strh	r3, [r2]
.L1376:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009308

.thumb_func_start OvlFunc_948_200938c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0x1e666
	ldr	r2, =0xf333
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L13c4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #8
	bl	__MapActor_TravelTo
.L13c4:
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #8
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xb4
	lsl	r1, #1
	mov	r2, #0x98
	mov	r0, #8
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	mov	r0, #0x88
	lsl	r0, #2
	bl	__ClearFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200938c

.thumb_func_start OvlFunc_948_200941c
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L142e
	ldr	r1, =0xfffff
	add	r3, r1
.L142e:
	ldr	r0, [r0, #0x10]
	asr	r7, r3, #20
	cmp	r0, #0
	bge	.L143a
	ldr	r2, =0xfffff
	add	r0, r2
.L143a:
	asr	r5, r0, #20
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x88
	lsl	r0, #2
	ldr	r6, [r3]
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1486
	ldr	r2, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0
	bne	.L1486
	ldr	r1, =0x24a
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #9
	beq	.L1486
	cmp	r7, #0xa
	bne	.L1486
	mov	r3, r5
	sub	r3, #0x10
	cmp	r3, #2
	bhi	.L1486
	mov	r0, #0x88
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x5c
	strh	r3, [r2]
.L1486:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200941c

.thumb_func_start OvlFunc_948_200949c
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L14d4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #9
	bl	__MapActor_TravelTo
.L14d4:
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #9
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0x84
	mov	r1, #0xa8
	lsl	r2, #1
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #9
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	mov	r0, #0x88
	lsl	r0, #2
	bl	__ClearFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200949c

.thumb_func_start OvlFunc_948_200952c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #8]
	cmp	r1, #0
	bge	.L1546
	ldr	r2, =0xfffff
	add	r1, r2
.L1546:
	ldr	r0, [r0, #0x10]
	asr	r6, r1, #20
	cmp	r0, #0
	bge	.L1552
	ldr	r3, =0xfffff
	add	r0, r3
.L1552:
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r5, r7
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r0, #20
	add	r5, #0xa
	mov	r10, r0
	cmp	r3, r5
	beq	.L15b0
	ldr	r3, =.L2f74
	lsl	r7, #2
	mov	r8, r3
	ldr	r3, [r3, r7]
	cmp	r6, r3
	beq	.L15b0
	mov	r1, #0x90
	mov	r2, #0x90
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r5
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	lsl	r1, r6, #4
	mov	r2, #0xb4
	lsl	r2, #1
	add	r1, #8
	mov	r0, r5
	bl	__MapActor_TravelTo
	mov	r2, r8
	mov	r3, r10
	str	r6, [r2, r7]
	cmp	r3, #0x16
	bgt	.L15aa
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_809228c
.L15aa:
	mov	r0, #0
	bl	__MapActor_WaitMovement
.L15b0:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_200952c

