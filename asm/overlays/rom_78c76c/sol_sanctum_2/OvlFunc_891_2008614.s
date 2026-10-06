	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2008614
	push	{lr}
	bl	__CutsceneStart
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0x94
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r0, =0x1004
	bl	__MessageID
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	lsl	r1, #2
	mov	r2, #0xd8
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x59999
	ldr	r1, =0xb333
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xb0
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x11f0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	lsl	r2, #16
	neg	r1, r1
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0
	mov	r1, #2
	mov	r0, #5
	bl	__MapActor_Jump
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #5
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #5
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Face
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0xd8
	mov	r2, #0xc8
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xab
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r2, #0xb4
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	ldr	r0, =0x23e0000
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #2
	mov	r2, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xab
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xb8
	lsl	r1, #2
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #5
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #5
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #5
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	b	.Lm891_a4c

	.pool_aligned

.Lm891_a4c:
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm891_a5e
	ldr	r0, =0x1010
	bl	__MessageID
	b	.Lm891_a64
.Lm891_a5e:
	ldr	r0, =0x1011
	bl	__MessageID
.Lm891_a64:
	mov	r1, #6
	mov	r0, #8
	bl	OvlFunc_891_200a3a4
	ldr	r0, =0x1012
	bl	__MessageID
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r2, #0xd8
	lsl	r1, #2
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xbf
	mov	r3, #1
	ldr	r0, =0x23e0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x90
	mov	r2, #0xe8
	lsl	r1, #2
	mov	r0, #8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0xd7
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r0, #8
	ldr	r1, =0x23e
	ldr	r2, =0x143
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x39999
	ldr	r1, =0x7333
	bl	__Func_80933d4
	mov	r0, #0x90
	mov	r1, #1
	mov	r2, #0x88
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #16
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #5
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #5
	mov	r1, #6
	bl	OvlFunc_891_200a3a4
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #5
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm891_bf8
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #5
	bl	__MapActor_TravelTo
.Lm891_bf8:
	mov	r0, #5
	bl	__MapActor_WaitMovement
	mov	r0, #5
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm891_c28
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm891_c28:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x44
	str	r3, [r2]
	sub	r3, #0x3c
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_2008614

