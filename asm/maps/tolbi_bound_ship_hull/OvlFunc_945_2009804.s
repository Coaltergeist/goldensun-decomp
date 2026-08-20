	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009804
	push	{r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	bl	__CutsceneStart
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm945_1870
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, r6
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_1850
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r6
	bl	__MapActor_TravelTo
.Lm945_1850:
	mov	r0, r6
	bl	__MapActor_WaitMovement
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, r7
	bl	__SetFlag
	b	.Lm945_1886
.Lm945_1870:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, r6
	bl	OvlFunc_945_200c86c
.Lm945_1886:
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009804

