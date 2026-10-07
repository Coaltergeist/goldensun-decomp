	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_2009730
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0x88
	mov	r2, #0xb8
	str	r5, [r0, #0x18]
	lsl	r1, #16
	mov	r0, #3
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x88
	mov	r2, #0x94
	mov	r0, #0
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x88
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0x88
	mov	r1, #1
	mov	r2, #0xb8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #0xfe
	mov	r8, r3
	ldr	r7, =gScript_923__0200a820
	mov	r3, #0
	mov	r10, r3
	mov	r6, #1
	mov	r5, #1
.Lm923_17f6:
	mov	r2, #0xa8
	mov	r1, #0x98
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =gScript_923__0200a8c8
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r7
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xa8
	mov	r1, #0x78
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #5
	bl	__CutsceneWait
	ldr	r1, =gScript_884__0200a874
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r2, #0x1e
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, r8
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xb8
	mov	r1, #0x88
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, r7
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #3
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	sub	r5, #1
	orr	r3, r6
	strb	r3, [r0]
	cmp	r5, #0
	bge	.Lm923_17f6
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Emote
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_923_2008d58
	mov	r1, #1
	str	r3, [r0, #0x6c]
	mov	r0, #0
	bl	__Func_8093500
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x84
	mov	r0, #0
	mov	r1, #0x88
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	bl	__Func_8093530
	mov	r3, #7
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #3
	mov	r3, #3
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2009730

