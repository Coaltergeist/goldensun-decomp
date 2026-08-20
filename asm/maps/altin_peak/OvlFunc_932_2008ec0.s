	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008ec0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r8, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0x81
	mov	r6, r0
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xc4
	mov	r1, #1
	mov	r2, #0xe8
	mov	r3, #1
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	bl	__MapActor_SetAnim
	mov	r1, #0xc6
	mov	r2, #0x8c
	mov	r0, #0
	lsl	r1, #2
	bl	__MapActor_TravelToWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x64
	bl	__Func_8092adc
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =0x13333
	mov	r0, r10
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r1, r10
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_932_2008098
	mov	r2, r10
	mov	r0, #0
	str	r3, [r2, #0x6c]
	mov	r1, #4
	mov	r11, r0
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r7, #0x44]
	ldr	r3, =0x3120000
	str	r3, [r7, #8]
	mov	r9, r3
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r7, #0xc]
	mov	r5, #0x80
	mov	r3, #0xb4
	lsl	r3, #15
	lsl	r5, #10
	str	r3, [r7, #0x10]
	mov	r0, #0xa
	str	r5, [r7, #0x18]
	str	r5, [r7, #0x1c]
	bl	__CutsceneWait
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, r5
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, [r6, #8]
	mov	r0, #0xe0
	lsl	r0, #12
	add	r3, r0
	str	r3, [r6, #8]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r2, [r6, #0x50]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x6b
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x37
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	lsl	r0, #9
	lsl	r1, #10
	bl	__Func_8012330
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092b08
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092b08
	mov	r0, #0
	ldr	r1, =0x101
	bl	__MapActor_Surprise
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	mov	r6, r8
	bl	__MapActor_SetSpeed
	add	r6, #0x64
	mov	r3, r11
	mov	r0, #0
	strh	r3, [r6]
	ldr	r1, =gScript_932__0200bdec
	bl	__MapActor_SetBehavior
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_108c
	mov	r2, #0x84
	mov	r0, #1
	ldr	r1, =0x36e0000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
.Lm932_108c:
	mov	r0, #0xa0
	mov	r1, #0xa0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x8b
	lsl	r2, #18
	mov	r3, #1
	neg	r1, r1
	mov	r0, r9
	bl	__Func_80933f8
	ldr	r0, [sp, #8]
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092b08
	mov	r5, r7
	mov	r0, #8
	ldr	r1, =0x195c2
	ldr	r2, =0xcae1
	bl	__MapActor_SetSpeed
	add	r5, #0x64
	mov	r0, r11
	strh	r0, [r5]
	ldr	r1, =gScript_932__0200bd78
	mov	r0, #8
	bl	__MapActor_SetBehavior
.Lm932_10d0:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.Lm932_10d0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_Surprise
.Lm932_10e6:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.Lm932_10e6
	mov	r1, #2
	mov	r0, #0
	bl	__Func_8092b08
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	ldr	r3, =0x3120000
	mov	r2, r10
	str	r3, [r2, #8]
	ldr	r6, =0xffc00000
	ldr	r3, =0x26a0000
	mov	r5, #0
	str	r5, [r2, #0x6c]
	str	r3, [r2, #0x10]
	str	r6, [r2, #0xc]
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r3, =0x1999
	str	r3, [r7, #0x44]
	ldr	r3, =0x3333
	str	r3, [r7, #0x48]
	mov	r3, #0x80
	lsl	r3, #11
	mov	r2, #0x97
	str	r3, [r7, #0x28]
	mov	r0, #8
	ldr	r1, =0x312
	lsl	r2, #2
	mov	r8, r3
	bl	__MapActor_TravelToWait
	mov	r0, #8
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__MapActor_SetSpeed
	mov	r2, #0xa1
	ldr	r1, =0x312
	lsl	r2, #2
	mov	r0, #8
	bl	__MapActor_TravelTo
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xe0
	mov	r2, #0x80
	lsl	r0, #11
	lsl	r1, #11
	lsl	r2, #9
	bl	__Func_8012330
	mov	r3, #0xb
	mov	r2, #9
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0x24
	mov	r2, #0x2b
	mov	r3, #0x24
	bl	__CopyMapTiles
	mov	r3, #0x2b
	mov	r2, #0x23
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #5
	mov	r0, #0x19
	mov	r1, #0x23
	mov	r2, #0xa
	bl	__Func_8010704
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #9
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r5, =OvlFunc_932_200abe0
	mov	r1, #0xc8
	lsl	r1, #4
	mov	r0, r5
	bl	__StartTask
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, r5
	bl	__StopTask
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x11
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, #0x78
	bl	__CutsceneWait
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_121c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xce
	mov	r0, #1
	lsl	r1, #2
	ldr	r2, =0x22e
	bl	__MapActor_TravelToAnim
.Lm932_121c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x92
	mov	r0, #0
	ldr	r1, =0x356
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_1250
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.Lm932_1250:
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xc5
	mov	r1, r6
	ldr	r2, =0x2620000
	mov	r3, #1
	lsl	r0, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x94
	bl	__PlaySound
	mov	r0, #0xf0
	bl	__CutsceneWait
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_1300
	mov	r1, #0x80
	mov	r0, r8
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r2, #0x92
	mov	r3, #1
	ldr	r0, =0x3560000
	mov	r1, #0
	lsl	r2, #18
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0xd2
	mov	r2, #0x8a
	mov	r0, #1
	lsl	r1, #2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	ldr	r1, =0x356
	ldr	r2, =0x232
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm932_12f0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.Lm932_12f0:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm932_1300:
	bl	__PlayMapMusic
	ldr	r0, =0x908
	bl	__SetFlag
	add	sp, #0xc
	b	.Lm932_1388

	.pool_aligned

.Lm932_1388:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008ec0

