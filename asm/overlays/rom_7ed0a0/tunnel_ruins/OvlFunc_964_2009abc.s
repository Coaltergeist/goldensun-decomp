	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2009abc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r9, r0
	lsl	r1, #8
	mov	r0, #0xa
	lsl	r2, #7
	sub	sp, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #7
	mov	r0, #0xb
	lsl	r1, #8
	bl	__MapActor_SetSpeed
	mov	r2, r9
	cmp	r2, #0
	beq	.Lm964_1af2
	mov	r0, #0xb4
	bl	__PlaySound
.Lm964_1af2:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =.Lm964_3350
	mov	r6, r0
	mov	r0, #0xa
	mov	r8, r3
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Actor_TravelTo
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r5, [r0, r2]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	lsl	r5, #2
	mov	r3, r8
	ldr	r2, [r3, r5]
	ldr	r1, [r6, #8]
	ldr	r3, [r0, #0x10]
	mov	r0, r10
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	mov	r0, #0xb
	str	r3, [r5, #0xc]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	mov	r2, r8
	lsl	r3, #2
	ldr	r3, [r2, r3]
	str	r3, [r5, #0xc]
	mov	r3, r9
	cmp	r3, #0
	beq	.Lm964_1baa
	ldr	r0, =0x121
	bl	__PlaySound
.Lm964_1baa:
	mov	r7, #0
.Lm964_1bac:
	mov	r6, r7
	add	r6, #0xa
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm964_1bc0
	ldr	r2, =0xffff
	add	r3, r2
.Lm964_1bc0:
	cmp	r3, #0
	bge	.Lm964_1c02
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm964_1bd4
	ldr	r2, =0xffff
	add	r3, r2
.Lm964_1bd4:
	mov	r2, #0x1e
	asr	r3, #16
	neg	r2, r2
	cmp	r3, r2
	ble	.Lm964_1c02
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	asr	r5, #20
	str	r3, [sp, #4]
	mov	r0, #4
	mov	r1, #9
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.Lm964_1c02:
	add	r7, #1
	cmp	r7, #4
	bls	.Lm964_1bac
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
.func_end OvlFunc_964_2009abc

