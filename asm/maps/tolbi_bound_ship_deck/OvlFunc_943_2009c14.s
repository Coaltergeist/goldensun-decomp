	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_943_2009c14
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r6, r1
	mov	r3, #0xe0
	ldr	r1, =iwram_3001ebc
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	sub	r3, #0xc0
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r5, r0
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xda
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xea
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, r5
	mov	r1, #0xec
	ldr	r2, =0x26a
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, r6
	lsl	r1, #7
	bl	OvlFunc_943_200ba00
	mov	r2, #0x28
	mov	r0, r6
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, r6
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x1e39
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x202
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009c14

