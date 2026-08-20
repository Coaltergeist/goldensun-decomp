	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_883_2008eb4
	push	{lr}
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm883_f20
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm883_f20
	bl	__CutsceneStart
	ldr	r0, =0x11b6
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x15
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm883_efc
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0x3c
	bl	__ActorMessage_Wait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm883_f1a
.Lm883_efc:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	mov	r0, #0x28
	strh	r3, [r2]
	bl	__CutsceneWait
	mov	r0, #0x15
	mov	r1, #0
	bl	__ActorMessage
.Lm883_f1a:
	bl	__CutsceneEnd
	b	.Lm883_f44
.Lm883_f20:
	mov	r0, #0x9e
	bl	__PlaySound
	ldr	r0, =.Lm883_755a
	mov	r1, #0x32
	mov	r2, #0x2c
	bl	__Func_8010560
	mov	r1, #0xaa
	mov	r2, #0xde
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #7
	bl	__Func_8091e9c
.Lm883_f44:
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2008eb4

