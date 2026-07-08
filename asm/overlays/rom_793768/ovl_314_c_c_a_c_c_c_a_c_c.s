	.include "macros.inc"

.thumb_func_start OvlFunc_898_2008bec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1342
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0x13
	bl	__MapActor_SetAnim
	mov	r0, #0xe7
	bl	__CheckPartyItem
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lc40
	ldr	r0, =0x858
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lc40
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xb9
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	mov	r3, #1
	strh	r3, [r2]
.Lc40:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008bec

