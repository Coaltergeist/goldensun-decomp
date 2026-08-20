	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_200a3d4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =0xffb00000
	sub	sp, #4
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
	mov	r1, #0
.Lm968_23e8:
	mov	r6, r1
	add	r6, #8
	cmp	r6, r8
	beq	.Lm968_2430
	mov	r0, r6
	str	r1, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r2, [r5, #8]
	ldr	r3, [r7, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.Lm968_2430
	ldr	r2, [r5, #0x10]
	ldr	r3, [r7, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm968_2430
	ldr	r3, [r5, #0xc]
	mov	r2, #0x80
	lsl	r2, #13
	add	r0, r3, r2
	cmp	r10, r0
	bgt	.Lm968_2430
	mov	r3, r7
	add	r3, #0x64
	strh	r6, [r3]
	mov	r10, r0
.Lm968_2430:
	add	r1, #1
	cmp	r1, #5
	bls	.Lm968_23e8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r2, r10
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r8
	bl	__MapActor_WaitMovement
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, r8
	bl	OvlFunc_968_2008b08
	mov	r0, #0x1e
	bl	__CutsceneWait
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_200a3d4

