	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2008fac
	push	{r5, lr}
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_100c
	bl	OvlFunc_945_20092dc
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	bl	OvlFunc_945_2009190
	ldr	r0, =0x1ea5
	bl	__MessageID
	mov	r0, #0xf
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm945_ff6
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, r5
	bl	__MapActor_TravelTo
.Lm945_ff6:
	mov	r0, r5
	bl	__MapActor_WaitMovement
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lm945_104c
.Lm945_100c:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_101c
	ldr	r1, =0x1e8e
	ldr	r2, =0x997
	b	.Lm945_103a
.Lm945_101c:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_102c
	ldr	r1, =0x1e8e
	ldr	r2, =0x91e
	b	.Lm945_103a
.Lm945_102c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_1042
	ldr	r1, =0x1e8e
	ldr	r2, =0x93c
.Lm945_103a:
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
	b	.Lm945_104c
.Lm945_1042:
	ldr	r1, =0x1e8e
	ldr	r2, =0x933
	mov	r0, #0xf
	bl	OvlFunc_945_2009804
.Lm945_104c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008fac

