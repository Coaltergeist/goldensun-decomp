	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a2c8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r0
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #8
	lsl	r2, #7
	mov	r10, r0
	mov	r0, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, r9
	cmp	r0, #0
	beq	.Lm968_230e
	mov	r0, #0xb4
	bl	__PlaySound
.Lm968_230e:
	mov	r1, #0x64
	add	r1, r7
	mov	r2, #0
	ldrsh	r3, [r1, r2]
	ldr	r5, =.Lm968_5148
	lsl	r3, #2
	mov	r6, r10
	ldr	r2, [r5, r3]
	mov	r0, r7
	mov	r8, r1
	ldr	r3, [r7, #0x10]
	ldr	r1, [r7, #8]
	add	r6, #0x64
	bl	__Actor_TravelTo
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	mov	r2, r10
	mov	r0, r10
	lsl	r3, #2
	ldr	r1, [r2, #8]
	ldr	r2, [r5, r3]
	ldr	r3, [r0, #0x10]
	bl	__Actor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	lsl	r3, #2
	ldr	r3, [r5, r3]
	str	r3, [r7, #0xc]
	mov	r0, #0
	ldrsh	r3, [r6, r0]
	lsl	r3, #2
	ldr	r3, [r5, r3]
	mov	r1, r10
	mov	r2, r9
	str	r3, [r1, #0xc]
	cmp	r2, #0
	beq	.Lm968_2370
	ldr	r0, =0x121
	bl	__PlaySound
.Lm968_2370:
	mov	r5, #0
.Lm968_2372:
	mov	r0, r5
	add	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	mov	r2, r3
	cmp	r3, #0
	bge	.Lm968_2386
	ldr	r1, =0xffff
	add	r2, r3, r1
.Lm968_2386:
	asr	r2, #16
	cmp	r2, #0
	bge	.Lm968_23ac
	mov	r3, #0x1e
	neg	r3, r3
	cmp	r2, r3
	ble	.Lm968_23ac
	ldr	r2, [r0, #8]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #0x13
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm968_23ac:
	add	r5, #1
	cmp	r5, #4
	bls	.Lm968_2372
	mov	r0, r9
	bl	__CutsceneWait
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a2c8

