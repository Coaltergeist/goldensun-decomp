	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_20095f0
	push	{lr}
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xa
	beq	.Lm948_1680
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm948_1636
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xa
	bl	__MapActor_TravelTo
.Lm948_1636:
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xa
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x84
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xa
	bl	__MapActor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm948_1680:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20095f0

.thumb_func_start OvlFunc_948_2009694
	push	{r5, lr}
	ldr	r2, =0x24a
	ldr	r3, =gState
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xb
	beq	.Lm948_1790
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	mov	r0, #0xb
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_16d2
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_16d2:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_16e4
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_16e4:
	asr	r3, #20
	cmp	r5, r3
	ble	.Lm948_16f4
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_TravelBy
.Lm948_16f4:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_1704
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_1704:
	mov	r0, #0xb
	asr	r5, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_1716
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_1716:
	asr	r3, #20
	cmp	r5, r3
	bge	.Lm948_1728
	mov	r1, #8
	mov	r0, #0xb
	neg	r1, r1
	mov	r2, #0
	bl	__MapActor_TravelBy
.Lm948_1728:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm948_1746
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.Lm948_1746:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xac
	mov	r2, #0xb4
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #0xb
	bl	__MapActor_TravelTo
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__CutsceneEnd
.Lm948_1790:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009694

.thumb_func_start OvlFunc_948_20097ac
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm948_17c2
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_17c2:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	mov	r8, r3
	cmp	r0, #0
	bge	.Lm948_17d0
	ldr	r3, =0xfffff
	add	r0, r3
.Lm948_17d0:
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0x24a
	ldr	r5, =gState
	ldr	r7, [r3]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	asr	r6, r0, #20
	cmp	r3, #0xc
	beq	.Lm948_181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_181e
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm948_181e
	mov	r3, r8
	cmp	r3, #0x13
	bne	.Lm948_181e
	mov	r3, r6
	sub	r3, #0xf
	cmp	r3, #1
	bhi	.Lm948_181e
	mov	r0, #0x88
	lsl	r0, #2
	bl	__SetFlag
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0x60
	strh	r3, [r2]
.Lm948_181e:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20097ac

.thumb_func_start OvlFunc_948_2009838
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0x1b333
	ldr	r2, =0xd999
	bl	__MapActor_SetSpeed
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm948_1870
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__MapActor_TravelTo
.Lm948_1870:
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0x18
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r1, #0
	mov	r2, #0x10
	mov	r0, #0xc
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xe8
	mov	r0, #0xc
	bl	__MapActor_TravelTo
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	bl	__CutsceneEnd
	mov	r0, #0x88
	lsl	r0, #2
	bl	__ClearFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009838

