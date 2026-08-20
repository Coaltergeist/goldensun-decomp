	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_20088ec
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_94c
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1e9e
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_936
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_936:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_98e
.Lm945_94c:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_95e
	mov	r2, #0x99
	ldr	r1, =0x1e78
	lsl	r2, #4
	b	.Lm945_97c
.Lm945_95e:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_96e
	ldr	r1, =0x1e78
	ldr	r2, =0x917
	b	.Lm945_97c
.Lm945_96e:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_984
	ldr	r1, =0x1e78
	ldr	r2, =0x935
.Lm945_97c:
	mov	r0, #8
	bl	OvlFunc_945_2009804
	b	.Lm945_98e
.Lm945_984:
	ldr	r1, =0x1e78
	ldr	r2, =0x92c
	mov	r0, #8
	bl	OvlFunc_945_2009804
.Lm945_98e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20088ec

