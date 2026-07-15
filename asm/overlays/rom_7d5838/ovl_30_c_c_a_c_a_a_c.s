.include "macros.inc"

.thumb_func_start OvlFunc_950_200813c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x2394
	bl	__MessageID
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x8e
	mov	r1, #0x96
	mov	r3, #0xce
	lsl	r3, #18
	mov	r2, #0
	lsl	r1, #18
	lsl	r0, #1
	bl	__CreateActor
	mov	r1, #0
	mov	r5, r0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, r5
	bl	__DeleteActor
	mov	r0, #2
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #1
	mov	r2, #0x32
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x19
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x96
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x8e
	mov	r2, #0xd4
	mov	r0, #0x19
	lsl	r1, #2
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0x32
	mov	r0, #0x19
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x10
	mov	r1, #0
	neg	r2, r2
	mov	r0, #0
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x19
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x19
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x32
	ldr	r1, =0x101
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x19
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x32
	mov	r0, #0x19
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x19
	ldr	r1, =0x16666
	ldr	r2, =0xb333
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r2, #0x20
	mov	r1, #0
	mov	r0, #0x19
	bl	__Func_8092304
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0x10
	mov	r2, #0
	bl	__Func_8092304
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x19
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0x30
	bl	__Func_8092304
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_950_200813c

	.section .text.after_8328, "ax", %progbits

.thumb_func_start OvlFunc_950_20083dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x95
	add	r2, #0x49
	str	r2, [r3]
	lsl	r0, #4
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4e2
	mov	r3, #0x33
	mov	r2, #0x2d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2f
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x33
	bl	__Func_8010704
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	mov	r2, #0
	mov	r3, r0
	mov	r8, r2
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	ldr	r1, [r0, #0x50]
	mov	r5, #0xd
	ldrb	r2, [r1, #9]
	neg	r5, r5
	mov	r3, r5
	and	r3, r2
	mov	r6, #8
	orr	r3, r6
	strb	r3, [r1, #9]
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x23
	mov	r2, r8
	strb	r2, [r3]
	ldr	r2, [r0, #0x50]
	ldrb	r3, [r2, #9]
	and	r5, r3
	orr	r5, r6
	strb	r5, [r2, #9]
	ldr	r0, =0x8bc
	bl	__GetFlag
	cmp	r0, #0
	beq	.L472
	mov	r1, #0x8c
	mov	r2, #0xaa
	mov	r0, #0x19
	lsl	r1, #18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x19
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
.L472:
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L49a
	ldr	r0, =0x8bc
	bl	__GetFlag
	cmp	r0, #0
	bne	.L49a
	ldr	r0, =0x8bc
	bl	__SetFlag
	bl	__MapTransitionIn
	bl	OvlFunc_950_200813c
.L49a:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x10
	bne	.L4c4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4c4
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
	bl	__MapTransitionIn
	bl	OvlFunc_950_2008328
.L4c4:
	ldr	r0, =0x8ab
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4e2
	mov	r0, #0x23
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x24
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L4e2:
	mov	r0, #0
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_950_20083dc

	.section .text.after_8500, "ax", %progbits
