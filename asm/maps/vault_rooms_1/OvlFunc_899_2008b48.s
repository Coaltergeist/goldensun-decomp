	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_2008b48
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #2
	bl	__MapActor_SetSpeed
	mov	r0, #0x13
	bl	__PlaySound
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #1
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xb8
	mov	r2, #0xcc
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x85
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm899_bc2
	b	.Lm899_d30
.Lm899_bc2:
	mov	r0, #0x85
	lsl	r0, #4
	bl	__SetFlag
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_899_200c684
	ldr	r0, =0x1256
	bl	__MessageID
	mov	r0, #0x3c
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x32
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x14
	bl	OvlFunc_899_200c63c
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xbc
	mov	r2, #0xbc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x32
	bl	OvlFunc_899_200c624
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	mov	r0, #1
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #2
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #2
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm899_d44
.Lm899_d30:
	mov	r0, #0x3c
	bl	__PlaySound
	ldr	r0, =0x125d
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm899_d44:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm899_d8c
	bl	OvlFunc_899_2008de4
	ldr	r0, =0x856
	bl	__SetFlag
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm899_d7a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.Lm899_d7a:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm899_d94
.Lm899_d8c:
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
.Lm899_d94:
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm899_db4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm899_db4:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008b48

