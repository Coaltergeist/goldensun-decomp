	.include "macros.inc"

.thumb_func_start OvlFunc_888_200888c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L916
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	.L17ca
.L916:
	mov	r1, #0
	ldr	r0, =0x10002
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_888_200a90c
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r2, =0x6666
	ldr	r1, =0xcccc
	mov	r0, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x1138
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Laa4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lace
.Laa4:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
.Lace:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lb60
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.Lb8c

	.pool_aligned

.Lb60:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
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
.Lb8c:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x78
	mov	r1, #0xe0
	mov	r0, #0xc
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__Func_80925cc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x32
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #8
	mov	r5, #0x90
	bl	__Func_8092950
	lsl	r5, #5
	bl	OvlFunc_888_200a5c4
	mov	r0, #0xc4
	bl	__PlaySound
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r5, #0
	b	.Lf44

	.pool_aligned

.Lf44:
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #5
	bl	OvlFunc_888_200a750
	add	r5, #1
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #5
	bls	.Lf44
	mov	r5, #0x90
	lsl	r5, #5
	mov	r0, #8
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x60
	bl	__CutsceneWait
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #0xa
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__Func_8092504
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_8092848
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__Func_8092504
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #8
	bl	__Func_8092950
	bl	OvlFunc_888_200a5c4
	mov	r0, #0xc4
	bl	__PlaySound
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r5, #0
.L11a0:
	mov	r1, #0x90
	mov	r0, #8
	lsl	r1, #5
	bl	OvlFunc_888_200a750
	add	r5, #1
	mov	r0, #8
	bl	__CutsceneWait
	cmp	r5, #5
	bls	.L11a0
	mov	r5, #0x90
	mov	r0, #8
	lsl	r5, #5
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x20
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #8
	bl	OvlFunc_888_200a750
	mov	r0, #0x80
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #0x1e
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #8
	bl	__Func_809280c
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8092848
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0xa
	bl	__Func_8092848
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__Func_8092504
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
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
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xc8
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	b	.L1608

	.pool_aligned

.L1608:
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #1
	mov	r0, #8
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x78
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
.L17ca:
	ldr	r0, =0x1162
	bl	__MessageID
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1824
	bl	OvlFunc_888_200987c
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x56
	bl	__PlaySound
	bl	__Func_80f95a0
	mov	r0, #0x9f
	lsl	r0, #4
	bl	__SetFlag
	mov	r0, #0x1e
	bl	__Func_8091e9c
	b	.L1868
.L1824:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_888_2008848
	str	r3, [r0, #0x6c]
.L1868:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200888c

.thumb_func_start OvlFunc_888_200987c
	push	{r5, r6, lr}
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xb
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1171
	bl	__MessageID
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0
	ldr	r1, =0x103
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #1
	ldr	r0, =0x10005
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xd0
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #15
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0x15
	bl	__PlaySound
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	mov	r1, #0xc8
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #16
	lsl	r2, #12
	bl	__MapActor_SetPos
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #0x48
	mov	r1, #0xc8
	mov	r0, #0xd
	bl	__Func_8092158
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	bl	OvlFunc_888_200a5c4
	mov	r0, #0
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #0xd
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0xa
	mov	r1, #0xd
	bl	__Func_809280c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xd
	bl	__ActorMessage
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_8092950
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0x9a
	lsl	r0, #1
	bl	__PlaySound
	ldr	r6, =0xfffffd71
	mov	r5, #0
	b	.L1bd0

	.pool_aligned

.L1bd0:
	mov	r0, #0xd
	bl	OvlFunc_888_200b1b8
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x18]
	add	r3, r6
	str	r3, [r0, #0x18]
	mov	r0, #0xd
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x1c]
	add	r5, #1
	add	r3, r6
	str	r3, [r0, #0x1c]
	cmp	r5, #0x1f
	bls	.L1bd0
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #1
	mov	r2, #0xa0
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x80
	mov	r1, #0
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	OvlFunc_888_200a660
	mov	r1, #1
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xb4
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8092848
	mov	r1, #0xa
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092848
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x83
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #1
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #8
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0xb0
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #9
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xa
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #8
	mov	r1, #0xc8
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x88
	mov	r1, #0xc8
	lsl	r2, #1
	mov	r0, #8
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xb
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #9
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	b	.L222c

	.pool_aligned

.L222c:
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xb
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #0xa
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xb
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #0xc
	bl	__Func_809280c
	mov	r0, #0x78
	bl	__CutsceneWait
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0xa
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xa
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x88
	mov	r0, #9
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_809218c
	mov	r2, #0x88
	mov	r0, #0xa
	mov	r1, #0xc8
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r1, =0x105
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #0xc8
	mov	r2, #0x88
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_8092848
	mov	r0, #1
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #0xa8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
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
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xc
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200987c

.thumb_func_start OvlFunc_888_200a5c4
	push	{r5, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L25da
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xe
	bl	__MapActor_SetPos
.L25da:
	mov	r1, #0
	mov	r0, #0xe
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	mov	r0, #0xe
	strh	r3, [r5, #6]
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_888_200a67c
	str	r3, [r0, #0x6c]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r5, [r0, #0x50]
	mov	r3, r5
	add	r3, #0x27
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r0, r3
	bcs	.L262e
	mov	r1, r5
	mov	r4, #0xa
	mov	r12, r3
	add	r1, #0x28
.L261a:
	ldmia	r1!, {r2}
	cmp	r2, #0
	beq	.L2628
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L2628
	strb	r4, [r2, #5]
.L2628:
	add	r0, #1
	cmp	r0, r12
	bcc	.L261a
.L262e:
	mov	r2, r5
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a5c4

