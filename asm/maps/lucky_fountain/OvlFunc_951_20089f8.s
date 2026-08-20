	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_20089f8
	push	{r5, lr}
	bl	__Func_8077348
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r5, r3, #1
	bl	__CutsceneStart
	ldr	r3, =gState
	ldr	r2, [r3, #0x10]
	cmp	r2, r5
	bcs	.Lm951_a20
	ldr	r0, =0xe12
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm951_aa6
.Lm951_a20:
	ldr	r3, =ewram_2001000
	str	r2, [r3]
	bl	__Func_808ba38
	ldr	r0, =0xe0e
	bl	__MessageID
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_a8a
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x80
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1fd
	mov	r1, #0
	bl	__SetDestMap2
	ldr	r0, =0x89
	mov	r1, #0xd
	bl	__Func_8091f90
	b	.Lm951_aa2
.Lm951_a8a:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm951_aa2:
	bl	__CutsceneEnd
.Lm951_aa6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20089f8

