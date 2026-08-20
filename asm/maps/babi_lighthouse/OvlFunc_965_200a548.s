	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a548
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm965_25ba
	ldr	r0, =0x985
	bl	__ClearFlag
	mov	r0, #0x9d
	bl	__PlaySound
	bl	__CutsceneStart
	mov	r1, #0x94
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0xf0
	bl	__MapActor_TravelTo
	mov	r1, #0x9c
	lsl	r1, #1
	mov	r2, #0xf0
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_WaitMovement
	mov	r3, #0x11
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0xe
	mov	r2, #4
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm965_25b4
	ldr	r0, =0x301
	bl	__ClearFlag
	b	.Lm965_25ba
.Lm965_25b4:
	ldr	r0, =0x301
	bl	__SetFlag
.Lm965_25ba:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a548

