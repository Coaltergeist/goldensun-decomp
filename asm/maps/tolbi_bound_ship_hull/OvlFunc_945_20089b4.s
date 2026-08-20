	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_20089b4
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_a14
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1e9f
	bl	__MessageID
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_9fe
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_9fe:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_a54
.Lm945_a14:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_a24
	ldr	r1, =0x1e7b
	ldr	r2, =0x992
	b	.Lm945_a42
.Lm945_a24:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_a34
	ldr	r1, =0x1e7b
	ldr	r2, =0x919
	b	.Lm945_a42
.Lm945_a34:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_a4a
	ldr	r1, =0x1e7b
	ldr	r2, =0x937
.Lm945_a42:
	mov	r0, #0xa
	bl	OvlFunc_945_2009804
	b	.Lm945_a54
.Lm945_a4a:
	ldr	r1, =0x1e7b
	ldr	r2, =0x92e
	mov	r0, #0xa
	bl	OvlFunc_945_2009804
.Lm945_a54:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_20089b4

