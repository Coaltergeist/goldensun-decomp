	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2008ee0
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f40
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea4
	bl	__MessageID
	mov	r0, #0xe
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_f2a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_f2a:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_f80
.Lm945_f40:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f50
	ldr	r1, =0x1e8b
	ldr	r2, =0x996
	b	.Lm945_f6e
.Lm945_f50:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f60
	ldr	r1, =0x1e8b
	ldr	r2, =0x91d
	b	.Lm945_f6e
.Lm945_f60:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_f76
	ldr	r1, =0x1e8b
	ldr	r2, =0x93b
.Lm945_f6e:
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
	b	.Lm945_f80
.Lm945_f76:
	ldr	r1, =0x1e8b
	ldr	r2, =0x932
	mov	r0, #0xe
	bl	OvlFunc_945_2009804
.Lm945_f80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008ee0

