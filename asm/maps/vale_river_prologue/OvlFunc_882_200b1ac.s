	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200b1ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x13
	sub	sp, #4
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	ldr	r0, [r7, #0x50]
	mov	r11, r1
	mov	r10, r0
	mov	r1, #0x80
	mov	r0, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x58b0000
	bl	__Func_80933f8
	mov	r0, #8
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x1a
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r2, =0x9999
	mov	r0, #0x16
	ldr	r1, =0x13333
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_882__0200cd6c
	mov	r0, #8
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	bl	__Func_8095240
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_8095214
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x80
	bl	__CutsceneWait
	bl	OvlFunc_882_2008134
	mov	r0, #0xae
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x5940000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x68
	bl	__CutsceneWait
	mov	r0, #0x99
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x52d0000
	bl	__Func_80933f8
	mov	r2, #0x9f
	mov	r0, #9
	mov	r1, #0x9e
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_WaitScript
	ldr	r1, =gScript_882__0200ce04
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce30
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce5c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_882__0200ce88
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x1a
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #8
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #9
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x16
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	ldr	r2, .Lm882_3394	@ 0
	add	r0, #0x14
	mov	r3, #0
	strh	r0, [r5]
	mov	r0, #0x16
	mov	r9, r3
	mov	r8, r2
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	b	.Lm882_33c4

	.align	2, 0
.Lm882_3394:
	.word	0
	.pool

.Lm882_33c4:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x14
	strh	r0, [r5]
	ldr	r5, =gScript_882__0200ceb4
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1a
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x91
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__Func_8095214
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #12
	lsl	r1, #12
	bl	__Func_80933d4
	mov	r0, #0xd9
	mov	r1, #1
	ldr	r2, =0x43c0000
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	bl	__Func_80933f8
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x28
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8092950
	mov	r0, #0x13
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =0xcccc
	mov	r1, r6
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r0, #0xfe
	mov	r3, r0
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r11
	ldrb	r2, [r1, #9]
	mov	r1, #0xd
	neg	r1, r1
	mov	r3, r1
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	mov	r2, r11
	strb	r3, [r2, #9]
	mov	r3, #0xc8
	lsl	r3, #16
	ldr	r2, =0x3820000
	str	r3, [r7, #8]
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	mov	r3, r7
	str	r2, [r7, #0x10]
	str	r2, [r7, #0x40]
	add	r3, #0x55
	mov	r2, r8
	str	r3, [sp]
	strb	r2, [r3]
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	and	r0, r3
	strb	r0, [r2]
	mov	r0, r10
	ldrb	r3, [r0, #9]
	and	r1, r3
	strb	r1, [r0, #9]
	bl	__Func_8093554
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	bl	__Func_8093554
	str	r5, [r0, #0x3c]
	bl	__Func_8093554
	str	r5, [r0, #0x40]
	bl	__Func_8093554
	mov	r1, r9
	str	r1, [r0, #0x24]
	bl	__Func_8093554
	mov	r2, r9
	str	r2, [r0, #0x28]
	bl	__Func_8093554
	mov	r3, r9
	str	r3, [r0, #0x2c]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xf7
	mov	r1, #0x80
	ldr	r2, =0x3950000
	mov	r3, #0
	lsl	r1, #16
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x1e
	bl	__Func_8091254
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200bce4
	bl	__StartTask
	ldr	r1, =gScript_882__0200cedc
	mov	r0, #0x13
	bl	__MapActor_SetBehavior
	mov	r0, #0x80
	lsl	r0, #10
	ldr	r1, =0x7ae
	bl	__Func_80933d4
	mov	r0, #0xaf
	mov	r1, #0xc0
	lsl	r0, #16
	lsl	r1, #15
	ldr	r2, =0x43e0000
	mov	r3, #1
	bl	__Func_80933f8
	mov	r5, r7
	add	r5, #0x66
.Lm882_3662:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #8
	bne	.Lm882_3662
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__WaitFrames
	bl	__Func_8012350
	bl	__Func_8093554
	mov	r1, #0x80
	lsl	r1, #24
	str	r1, [r0, #0x38]
	mov	r8, r1
	bl	__Func_8093554
	mov	r2, r8
	str	r2, [r0, #0x3c]
	bl	__Func_8093554
	mov	r3, r8
	str	r3, [r0, #0x40]
	bl	__Func_8093554
	mov	r5, #0
	str	r5, [r0, #0x24]
	bl	__Func_8093554
	str	r5, [r0, #0x28]
	bl	__Func_8093554
	str	r5, [r0, #0x2c]
	ldr	r0, =OvlFunc_882_200bce4
	bl	__StopTask
	mov	r0, #0x13
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, r11
	mov	r3, #0xa0
	lsl	r3, #9
	add	r2, #0x23
	mov	r0, #2
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	strb	r0, [r2]
	mov	r2, #0x80
	lsl	r2, #10
	mov	r1, r11
	str	r3, [r1, #0x18]
	mov	r0, #1
	str	r2, [r7, #0x18]
	str	r2, [r7, #0x1c]
	str	r5, [r7, #8]
	str	r5, [r7, #0x10]
	str	r5, [r7, #0x38]
	str	r5, [r7, #0x40]
	mov	r10, r2
	bl	__WaitFrames
	mov	r0, #0x17
	mov	r1, #8
	bl	__MapActor_SetAnim
	mov	r1, #0xa9
	mov	r2, #0x9e
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #9
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #9
	bl	__MapActor_SetAnim
	mov	r1, #0x97
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x50c0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1a
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xaa
	mov	r0, #8
	lsl	r1, #16
	ldr	r2, =0x5210000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xb9
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x5350000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0x11
	bl	__MapActor_SetAnim
	mov	r1, #0xa9
	mov	r2, #0xad
	mov	r0, #0x16
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x16
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa6
	mov	r1, #0
	ldr	r2, =0x5390000
	lsl	r0, #16
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	ldr	r3, [sp]
	mov	r0, r8
	strb	r5, [r3]
	str	r0, [r7, #0x38]
	str	r0, [r7, #0x3c]
	str	r0, [r7, #0x40]
	bl	OvlFunc_882_200bc48
	mov	r1, #0xda
	mov	r2, #0x93
	mov	r0, #0x1b
	lsl	r1, #16
	lsl	r2, #19
	bl	__MapActor_SetPos
	mov	r0, #0xd2
	ldr	r2, =0x4ac0000
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	__Func_80933f8
	b	.Lm882_382c

	.pool_aligned

.Lm882_382c:
	bl	__Func_800fe9c
	mov	r1, r10
	str	r1, [r6, #0x18]
	str	r1, [r6, #0x1c]
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200be18
	bl	__StartTask
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	mov	r0, #0x18
	bl	__MapActor_SetIdle
	mov	r0, #0x19
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, #0xfe
	mov	r0, #0x80
	mov	r10, r3
	lsl	r0, #9
	and	r3, r2
	strb	r3, [r1]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, r11
	mov	r3, #0xd0
	ldrb	r2, [r1, #9]
	sub	r5, #0xd
	lsl	r3, #8
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0xa
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r2, [r6, #0x50]
	mov	r1, r6
	add	r1, #0x23
	mov	r11, r2
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r0, #0xb0
	mov	r3, r11
	ldrb	r2, [r3, #9]
	lsl	r0, #8
	mov	r9, r0
	mov	r3, r5
	and	r3, r2
	mov	r1, r9
	mov	r0, r11
	strb	r3, [r0, #9]
	strh	r1, [r6, #6]
	mov	r0, #0x18
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, r10
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r1]
	str	r2, [r6, #0x18]
	str	r2, [r6, #0x1c]
	mov	r0, r11
	ldrb	r2, [r0, #9]
	mov	r3, r9
	strh	r3, [r6, #6]
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0, #9]
	mov	r1, #5
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #0x50]
	mov	r11, r1
	bl	OvlFunc_882_200bc48
	mov	r3, #0xc0
	lsl	r3, #14
	mov	r1, #0xd6
	mov	r2, #0x98
	str	r3, [r7, #0xc]
	lsl	r1, #16
	mov	r3, r8
	lsl	r2, #19
	str	r1, [r7, #8]
	str	r2, [r7, #0x10]
	str	r3, [r7, #0x38]
	str	r3, [r7, #0x3c]
	str	r3, [r7, #0x40]
	mov	r0, r11
	ldrb	r3, [r0, #9]
	and	r5, r3
	mov	r3, #4
	orr	r5, r3
	strb	r5, [r0, #9]
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x18
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #0xb3
	lsl	r0, #1
	bl	__SetFlag
	mov	r0, #0
	bl	__Func_80118c0
	mov	r0, #1
	bl	__Func_80118c0
	mov	r0, #2
	bl	__Func_80118c0
	mov	r0, #3
	bl	__Func_80118c0
	mov	r0, #4
	bl	__Func_80118c0
	mov	r0, #5
	bl	__Func_80118c0
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x78
	bl	__Func_8091254
	mov	r0, #0xa0
	bl	__WaitFrames
	ldr	r0, =0x7fff
	mov	r1, #1
	bl	__Func_8091200
	mov	r1, #2
	ldr	r0, =0x7fff
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x64
	bl	__CutsceneWait
	ldr	r0, =OvlFunc_882_200be18
	bl	__StopTask
	ldr	r3, [r6, #0x18]
	mov	r1, r11
	mov	r0, #0xb3
	str	r3, [r1, #0x18]
	lsl	r0, #1
	bl	__ClearFlag
	mov	r0, #0
	bl	__Func_80118a8
	mov	r0, #1
	bl	__Func_80118a8
	mov	r0, #2
	bl	__Func_80118a8
	mov	r0, #3
	bl	__Func_80118a8
	mov	r0, #4
	bl	__Func_80118a8
	mov	r0, #5
	bl	__Func_80118a8
	bl	OvlFunc_882_200c0f0
	mov	r1, #0xa5
	ldr	r2, =0x4cd0000
	mov	r0, #9
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0xe0
	lsl	r2, #8
	mov	r8, r2
	mov	r7, r0
	mov	r3, r8
	strh	r3, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	ldr	r5, =gScript_882__0200cec8
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #1
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r1, #0xa5
	ldr	r2, =0x4e60000
	mov	r0, #0x1a
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #0x1a
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, r8
	strh	r0, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	ldr	r1, .Lm882_3abc	@ 2
	strh	r0, [r3]
	add	r3, #2
	strh	r1, [r3]
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0x98
	ldr	r2, =0x5050000
	mov	r0, #0x16
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #1
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r2, r8
	mov	r7, r0
	strh	r2, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	b	.Lm882_3adc

	.align	2, 0
.Lm882_3abc:
	.word	2
	.pool

.Lm882_3adc:
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	strh	r0, [r3]
	add	r2, #0x66
	mov	r3, #3
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0xb4
	ldr	r2, =0x51f0000
	lsl	r1, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, r8
	mov	r7, r0
	strh	r3, [r7, #6]
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r0, #0x3c
	add	r3, #0x64
	mov	r2, r7
	add	r2, #0x66
	strh	r0, [r3]
	mov	r3, #4
	strh	r3, [r2]
	mov	r1, r5
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r1, #6
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, r10
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r1, r10
	and	r1, r3
	strb	r1, [r0]
	mov	r10, r1
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_882_200c5b8
	bl	__StartTask
	mov	r1, #0xb5
	lsl	r1, #16
	ldr	r2, =0x4f90000
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xb5
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	ldr	r2, =0x4f90000
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x13
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r0, #0x11
	lsl	r1, #16
	ldr	r2, =0x42e0000
	bl	__MapActor_SetPos
	mov	r1, #0x8a
	ldr	r2, =0x4f60000
	lsl	r1, #17
	mov	r0, #0x12
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__WaitFrames
	ldr	r0, =0x10003
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x50
	bl	__Func_8091254
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__MapActor_PlayPendingSound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	bl	__Func_8091890
	bl	__Func_8095268
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200b1ac

