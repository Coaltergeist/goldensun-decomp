	.include "macros.inc"

.thumb_func_start OvlFunc_953_20091c4
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x8a4
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L11fa
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #0x11
	bl	__Func_8092848
	ldr	r0, =0x206f
	bl	__MessageID
	mov	r0, #0x11
	bl	OvlFunc_953_2009c48
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	b	.L1272
.L11fa:
	mov	r1, #2
	mov	r0, #0x11
	bl	__Func_809259c
	ldr	r0, =0x206d
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x11
	bl	__ActorMessage
	bl	__Func_8093554
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x66666
	ldr	r1, =0xcccc
	bl	__Func_80933d4
	mov	r0, #0x87
	mov	r1, #1
	mov	r2, #0xd0
	lsl	r0, #18
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
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x8a3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L126c
	mov	r0, #0x46
	bl	__Func_8091e9c
	b	.L1272
.L126c:
	mov	r0, #7
	bl	__Func_8091e9c
.L1272:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_20091c4

.thumb_func_start OvlFunc_953_2009298
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xf7
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r1, =iwram_3001ebc
	mov	r3, #0xe0
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	add	r3, #0x40
	mov	r1, r10
	str	r3, [r2, r1]
	sub	r3, #0x38
	mov	r9, r3
	mov	r1, r9
	mov	r3, #0x20
	str	r3, [r2, r1]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x10
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x10
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #9
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xe6
	mov	r0, #0x10
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x10
	mov	r1, #0xb9
	bl	__Func_80921c4
	mov	r1, #0xb
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_953__0200af88
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x10
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xf
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r6, #0xc0
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r6, #6
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, r6
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x10
	bl	__MapActor_SetIdle
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0x80
	mov	r3, #0xd0
	lsl	r3, #8
	lsl	r5, #9
	strh	r3, [r0, #6]
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x13
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #5
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #0x10
	bl	__Func_8092adc
	mov	r1, #8
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0x10
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x10
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r2, #0xe5
	mov	r0, #0x10
	mov	r1, #0xa2
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r2, =0x37a
	mov	r0, #0x10
	mov	r1, #0xa2
	bl	__Func_80921c4
	mov	r0, #0x13
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0xb8
	ldr	r2, =0x35f
	bl	__Func_80921c4
	mov	r2, #0xc7
	mov	r0, #0x10
	mov	r1, #0xb8
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x201
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r1, r9
	mov	r3, #0x10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r3, r8
	ldr	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #1
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r0, #0x45
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009298

	.section .text.after_960c, "ax", %progbits

.thumb_func_start OvlFunc_953_2009688
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r2, r2
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0xf7
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0
	mov	r0, #0x12
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x13
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x40
	str	r3, [r2]
	sub	r3, #0x38
	add	r2, r1, r3
	mov	r3, #0x20
	str	r3, [r2]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x11
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xe2
	lsl	r2, #2
	mov	r1, #0xa4
	mov	r0, #0x11
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #9
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xa4
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r2, #0xe6
	mov	r0, #0x11
	mov	r1, #0xb9
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0x11
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0xe5
	lsl	r2, #2
	mov	r0, #0x11
	mov	r1, #0xb9
	bl	__Func_80921c4
	mov	r1, #0xb
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r1, =gScript_953__0200af88
	mov	r0, #0x11
	bl	__MapActor_SetBehavior
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x11
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r0, #0xe
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xf
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x12
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xe
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0xf
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #0x11
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x12
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xf
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x12
	bl	OvlFunc_953_2009c5c
	mov	r0, #0x11
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #0
	strb	r3, [r7]
	mov	r5, #0
.L18b2:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x9999
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	bl	__WaitFrames
	ldr	r3, [r6, #0xc]
	ldr	r2, =0xffffb334
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #4
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x13
	bls	.L18b2
	mov	r0, #0x13
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r1, #6
	mov	r0, #0x14
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0x11
	bl	__MapActor_Surprise
	mov	r0, #0x11
	bl	__MapActor_SetIdle
	mov	r1, #1
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r5, #0x80
	strh	r3, [r0, #6]
	lsl	r5, #9
	mov	r3, #3
	strb	r3, [r7]
	mov	r0, #0xa
	str	r5, [r6, #0x18]
	str	r5, [r6, #0x1c]
	bl	__CutsceneWait
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r1, r5
	mov	r2, r5
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	bl	__Func_8012350
	mov	r0, #0x11
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xe8
	mov	r1, #0xd0
	lsl	r2, #2
	mov	r0, #0x11
	bl	__Func_80921c4
	mov	r0, #0x5c
	bl	__PlaySound
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x11
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #9
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #9
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa
	mov	r0, #0x11
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x41
	str	r3, [r2]
	sub	r3, #0x39
	add	r2, r1, r3
	mov	r3, #0x10
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x8a4
	bl	__SetFlag
	mov	r0, #0x45
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009688
