	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2008728
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_768
	ldr	r0, =0x1eb2
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	b	.Lm945_7cc
.Lm945_768:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_782
	ldr	r0, =0x1e06
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm945_7cc
.Lm945_782:
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_7be
	ldr	r0, =0x1dcd
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_7cc
	ldr	r0, =0x924
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_7cc
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
	b	.Lm945_7cc
.Lm945_7be:
	ldr	r0, =0x1d30
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm945_7cc:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2008728

