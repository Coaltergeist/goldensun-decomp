	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009d0c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	ldr	r0, =0x1e41
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x6016
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009d0c

