	.include "macros.inc"

	.section .text.after_99e8, "ax", %progbits


	.section .text.after_9ab0, "ax", %progbits

.thumb_func_start OvlFunc_959_2009b24
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__CutsceneStart
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #1
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r2, #0
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r0, r5
	mov	r1, #0
	bl	__Func_809228c
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, r5
	bl	__MapActor_SetIdle
	mov	r0, r5
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r6, =0x240d
	mov	r0, r6
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0
	add	r6, #1
	bl	__MapActor_Emote
	mov	r0, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	bl	__MapTransitionOut
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x3c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009b24

.section .text.after_9e2c, "ax", %progbits

.thumb_func_start OvlFunc_959_2009e94
	push	{r5, lr}
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0x71
	bl	__PlaySound
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_809280c
	ldr	r5, =0x2438
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x41
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xe
	bl	__Func_8092adc
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r0, r5, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	bl	__ActorMessage
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	add	r0, r5, #5
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xe
	bl	__Func_809280c
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #0xa8
	lsl	r1, #2
	mov	r2, #0x58
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r5, #6
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	ldr	r0, =0xa1
	mov	r1, #0x1f
	bl	__Func_8091f90
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x62
	mov	r1, #3
	bl	__Func_8091eb0
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	ldr	r0, =0x94a
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009e94

.section .text.after_a0cc, "ax", %progbits

