	.include "macros.inc"

.thumb_func_start OvlFunc_930_2008b2c
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x19cf
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	bl	__CutsceneEnd
	ldr	r0, =0x8b1
	bl	__SetFlag
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008b2c

.thumb_func_start OvlFunc_930_2008c30
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x19da
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #4
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Jump
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x8a
	mov	r0, #8
	mov	r1, #0xb2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x8e
	mov	r1, #0xac
	lsl	r2, #1
	mov	r0, #0xa
	bl	__Func_80921c4
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0xa0
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	ldr	r1, =0x3333
	mov	r0, #8
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x1999
	mov	r0, #0xa
	ldr	r1, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #9
	bl	__MapActor_SetIdle
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8093054
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x7d
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r0, #9
	mov	r1, #4
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xa
	bl	__Func_809228c
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0
	mov	r2, #0x14
	mov	r0, #8
	bl	__Func_8093040
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0xa
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x94
	mov	r0, #0xa
	mov	r1, #0xa8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
	ldr	r0, =0x8b2
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r0, #6
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_2008c30

