	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2009c2c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r2, =0xffb00000
	mov	r3, #0
	mov	r7, r0
	mov	r10, r2
	mov	r8, r3
.Lm964_1c3e:
	mov	r6, r8
	add	r6, #0xa
	cmp	r6, r7
	beq	.Lm964_1ca2
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.Lm964_1ca2
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x10]
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r5, #20
	asr	r3, #20
	cmp	r5, r3
	bne	.Lm964_1ca2
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	cmp	r10, r3
	bgt	.Lm964_1ca2
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r2, r3
	mov	r0, r7
	mov	r10, r2
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r6, [r0]
.Lm964_1ca2:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #4
	bls	.Lm964_1c3e
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, r7
	bl	__MapActor_SetSpeed
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r7
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, r7
	bl	__MapActor_GetActor
	ldr	r1, [r5, #8]
	ldr	r3, [r0, #0x10]
	mov	r2, r10
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__MapActor_WaitMovement
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, r7
	bl	OvlFunc_964_20091e0
	mov	r0, #0x1e
	bl	__CutsceneWait
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009c2c

