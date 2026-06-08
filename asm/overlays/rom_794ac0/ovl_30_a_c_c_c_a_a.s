	.include "macros.inc"

.thumb_func_start OvlFunc_899_2008b48
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	mov	r0, #2
	bl	__Func_8092064
	mov	r0, #0x13
	bl	__PlaySound
	mov	r1, #0xc0
	mov	r2, #0xcc
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
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
	bl	__Func_80921c4
	mov	r1, #0xd0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x85
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lbc2
	b	.Ld30
.Lbc2:
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
	bl	__Func_8092b94
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
	bl	__Func_80921c4
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
	bl	__Func_8092c40
	b	.Ld44
.Ld30:
	mov	r0, #0x3c
	bl	__PlaySound
	ldr	r0, =0x125d
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092c40
.Ld44:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Ld8c
	bl	OvlFunc_899_2008de4
	ldr	r0, =0x856
	bl	__SetFlag
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ld7a
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__Func_8092128
.Ld7a:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Ld94
.Ld8c:
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
.Ld94:
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Ldb4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__Func_8092128
.Ldb4:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__Func_808acc4
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008b48

.thumb_func_start OvlFunc_899_2008de4
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x5b
	mov	r2, #0
	mov	r1, #4
	strb	r3, [r0]
	mov	r0, #2
	bl	__Func_8092560
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x125f
	mov	r8, r3
	mov	r0, r8
	bl	__Func_8092b94
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xbc
	mov	r2, #0xc4
	lsl	r2, #1
	mov	r0, #2
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_899_200c658
	mov	r0, #0x28
	bl	__CutsceneWait
	bl	OvlFunc_899_200c684
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0xd4
	lsl	r2, #1
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #2
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #3
	mov	r2, #0xa
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r2, #0xcc
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #1
	add	r0, #5
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #6
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xb0
	and	r5, r3
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xcc
	lsl	r1, #1
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #1
	bl	OvlFunc_899_200c658
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_899_200c684
	mov	r2, #0x1e
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c624
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x103
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #1
	add	r0, #0xd
	bl	__Func_801776c
	mov	r0, r8
	add	r0, #0xe
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_899_200c658
	bl	__Func_8097adc
	mov	r0, #1
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	bl	OvlFunc_899_200c684
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0x14
	mov	r0, #0
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #1
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #1
	mov	r1, #0x1e
	b	.L1214

	.pool_aligned

.L1214:
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	bl	OvlFunc_899_200c624
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x83
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0xa
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
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0xa
	mov	r0, #2
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80917d0
	mov	r3, #0x16
	add	r8, r3
	mov	r0, r8
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2008de4

.thumb_func_start OvlFunc_899_2009348
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	ldr	r2, =0x6666
	mov	r0, #2
	ldr	r1, =0xcccc
	bl	__Func_8092064
	mov	r1, #3
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x12c5
	mov	r1, #1
	mov	r0, r5
	add	r5, #1
	bl	__Func_801776c
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #0
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #1
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xdc
	mov	r0, #2
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xd8
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_809218c
	mov	r1, #0xc6
	mov	r2, #0xe4
	lsl	r1, #2
	lsl	r2, #1
	mov	r0, #2
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x3c
	bl	OvlFunc_899_200c60c
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #2
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	mov	r1, #0xba
	mov	r2, #0xcc
	lsl	r2, #17
	lsl	r1, #18
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0x3d
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #2
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0xa
	mov	r2, #0x28
	bl	OvlFunc_899_200c60c
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0xc
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xb
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xba
	mov	r2, #0xcc
	mov	r0, #0xc
	lsl	r1, #18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xc6
	mov	r2, #0xd0
	mov	r0, #0xa
	lsl	r1, #2
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #8
	mov	r1, #0xa
	bl	__Func_809280c
	ldr	r1, =gScript_899__0200d248
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_899__0200d2ac
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0x28
	bl	OvlFunc_899_200c5f4
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #8
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x1e
	mov	r0, #8
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #8
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x1e
	mov	r0, #1
	mov	r1, #2
	bl	OvlFunc_899_200c60c
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0x14
	b	.L1764

	.pool_aligned

.L1764:
	bl	OvlFunc_899_200c5f4
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r0, #0
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #2
	mov	r1, #0xa
	mov	r2, #0x14
	bl	OvlFunc_899_200c60c
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #3
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092c40
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x1e
	bl	OvlFunc_899_200c60c
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1854
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0xa
	bl	__Func_809280c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	b	.L1894
.L1854:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #2
	bl	__Func_809280c
	ldr	r5, =0x12dc
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	sub	r5, #3
	mov	r0, #0xa
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	bl	__Func_8092b94
.L1894:
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0x14
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x14
	mov	r0, #0xc
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r0, #0xc
	mov	r1, #0x1e
	bl	OvlFunc_899_200c5f4
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xb
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	mov	r2, #0x1e
	bl	OvlFunc_899_200c63c
	mov	r2, #0x1e
	mov	r0, #0xa
	mov	r1, #0xc
	bl	OvlFunc_899_200c624
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	mov	r2, #0x28
	bl	OvlFunc_899_200c63c
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, #4
	bl	OvlFunc_899_200c63c
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	ldr	r0, =0x854
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	ldr	r5, =0x15
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x40
	str	r2, [r3]
	mov	r0, r5
	mov	r1, #0x11
	bl	__Func_8091f90
	mov	r0, r5
	mov	r1, #0x10
	bl	__Func_8091fa8
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0xc
	mov	r1, #5
	bl	__Func_8091eb0
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_899_2009348

