	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008c9c
	push	{lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r3, #0x18
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r1, #0x1b
	mov	r2, #2
	mov	r0, #0x18
	bl	__Func_8010704
	mov	r0, #0xb9
	bl	__PlaySound
	mov	r0, #0xa
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r1, #0xc8
	mov	r2, #0xd4
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__MapActor_TravelTo
	mov	r1, #0xcc
	mov	r2, #0xd4
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__MapActor_TravelTo
	mov	r0, #0xa
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	bl	OvlFunc_932_200840c
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008c9c

.thumb_func_start OvlFunc_932_2008d2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	sub	sp, #4
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	ldr	r2, [r0, #8]
	ldr	r6, [r0, #0x50]
	mov	r9, r2
	str	r3, [sp]
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r0, r0
	neg	r1, r1
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =0x8fff
	mov	r7, #0
	mov	r8, r2
.Ld8e:
	mov	r3, #0x80
	lsl	r3, #12
	ldrh	r2, [r6, #0x1e]
	add	r7, r3
	lsr	r3, r7, #16
	add	r3, r2
	strh	r3, [r6, #0x1e]
	mov	r2, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r2, #7
	add	r0, r2
	bl	__cos
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bhi	.Ldc0
	mov	r0, #1
	bl	__WaitFrames
	b	.Ld8e
.Ldc0:
	mov	r3, #0xe0
	lsl	r3, #7
	mov	r7, #0
	mov	r8, r3
.Ldc8:
	mov	r2, #0x80
	lsl	r2, #12
	add	r7, r2
	lsr	r3, r7, #16
	sub	r3, r1, r3
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	bl	__cos
	mov	r5, r0
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r1, [r6, #0x1e]
	cmp	r1, r8
	bls	.Ldfa
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r1, [r6, #0x1e]
	b	.Ldc8
.Ldfa:
	mov	r3, #0x80
	mov	r7, #0x80
	lsl	r3, #8
	lsl	r7, #12
	mov	r11, r3
.Le04:
	lsr	r2, r7, #19
	lsr	r3, r7, #16
	add	r3, r2
	lsl	r3, #16
	mov	r7, r3
	lsr	r2, r7, #16
	add	r3, r2, r1
	strh	r3, [r6, #0x1e]
	mov	r3, #0x80
	ldrh	r0, [r6, #0x1e]
	lsl	r3, #7
	add	r0, r3
	mov	r8, r2
	bl	__cos
	mov	r5, r0
	ldrh	r0, [r6, #0x1e]
	add	r0, r11
	bl	__sin
	lsl	r3, r5, #4
	add	r3, r9
	mov	r2, r10
	str	r3, [r2, #8]
	ldrh	r3, [r6, #0x1e]
	cmp	r3, r11
	bls	.Le44
	ldr	r2, [sp]
	lsl	r3, r0, #3
	sub	r3, r2, r3
	mov	r2, r10
	str	r3, [r2, #0xc]
.Le44:
	ldrh	r3, [r6, #0x1e]
	ldr	r2, =0xbfff
	add	r3, r8
	cmp	r3, r2
	bgt	.Le58
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r1, [r6, #0x1e]
	b	.Le04
.Le58:
	mov	r0, #1
	bl	__WaitFrames
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #0x1e]
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
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #5
	bl	OvlFunc_932_2008ec0
	bl	__CutsceneEnd
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008d2c

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
	bl	__Func_8092158
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
	beq	.L108c
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
.L108c:
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
.L10d0:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L10d0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_Surprise
.L10e6:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L10e6
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
	bl	__Func_8092158
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
	beq	.L121c
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
	bl	__Func_809218c
.L121c:
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x92
	mov	r0, #0
	ldr	r1, =0x356
	lsl	r2, #2
	bl	__Func_80921c4
	ldr	r0, =0x205
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1250
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
.L1250:
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
	beq	.L1300
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
	bl	__Func_80921c4
	mov	r0, #1
	ldr	r1, =0x356
	ldr	r2, =0x232
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L12f0
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L12f0:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L1300:
	bl	__PlayMapMusic
	ldr	r0, =0x908
	bl	__SetFlag
	add	sp, #0xc
	b	.L1388

	.pool_aligned

.L1388:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008ec0

.thumb_func_start OvlFunc_932_2009398
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r5, =0x1953
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	ldr	r0, =0x908
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13b4
	b	.L1640
.L13b4:
	ldr	r0, =0xf14
	bl	__GetFlag
	cmp	r0, #0
	beq	.L13c0
	b	.L1640
.L13c0:
	ldr	r0, =0x205
	bl	__SetFlag
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x316
	mov	r2, #0x8c
	bl	__Func_80921c4
	mov	r1, #0xc3
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1406
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L1406:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc8
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x6e
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc6
	and	r5, r3
	lsl	r1, #2
	mov	r2, #0x78
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
	mov	r1, #1
	mov	r0, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #1
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xc7
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8a
	bl	__Func_8092158
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__Func_8092158
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__Func_8092158
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__Func_8092158
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xc6
	bl	__Func_8092158
	mov	r0, #1
	ldr	r1, =0x312
	mov	r2, #0xc6
	bl	__Func_8092158
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0xf6
	mov	r0, #1
	ldr	r1, =0x312
	bl	__Func_8092158
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_932_2008ec0
.L1640:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009398

.thumb_func_start OvlFunc_932_2009678
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L169e
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.L169a
	ldr	r0, =gScript_882__0200cd6c
	b	.L1704
.L169a:
	ldr	r0, =.L4d24
	b	.L1704
.L169e:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.L16a8
	ldr	r0, =.L4d9c
	b	.L1704
.L16a8:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L16b2
	ldr	r0, =.L4dc0
	b	.L1704
.L16b2:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L16bc
	ldr	r0, =gScript_882__0200ce5c
	b	.L1704
.L16bc:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L16c6
	ldr	r0, =gScript_881__0200cebc
	b	.L1704
.L16c6:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L16d0
	ldr	r0, =.L4f34
	b	.L1704
.L16d0:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L16da
	ldr	r0, =.L4fb8
	b	.L1704
.L16da:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L16e4
	ldr	r0, =.L506c
	b	.L1704
.L16e4:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L16ee
	ldr	r0, =.L50cc
	b	.L1704
.L16ee:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L16f8
	ldr	r0, =.L512c
	b	.L1704
.L16f8:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L1702
	ldr	r0, =.L5150
	b	.L1704
.L1702:
	ldr	r0, =.L4d18
.L1704:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_2009678

.thumb_func_start OvlFunc_932_2009770
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.L179e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L179e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.L179e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.L17e6
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.L17de
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.L17dc
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r3, #4
	mov	r0, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8012330
	ldr	r2, [r5, #0x14]
.L17dc:
	str	r2, [r5, #0xc]
.L17de:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.L17ec
.L17e6:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.L17ec:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L1816
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.L1816:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.L1828
	mov	r3, #0
	strh	r3, [r6]
.L1828:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009770

.thumb_func_start OvlFunc_932_2009838
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r9, r0
	bl	__CutsceneStart
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0x95
	mov	r1, #1
	ldr	r2, =0x1510000
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r1, #0x80
	mov	r2, #0xd4
	ldr	r0, =0x1270000
	lsl	r1, #14
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r5, #0
	mov	r2, r9
	mov	r3, #0x64
	str	r5, [r2, #0x68]
	add	r3, r9
	ldr	r2, .L18e0	@ 0
	strh	r5, [r3]
	ldr	r6, =OvlFunc_932_2009770
	mov	r8, r3
	mov	r7, r9
	ldr	r3, =0x6666
	mov	r10, r2
	add	r7, #0x66
	mov	r2, r9
	strh	r5, [r7]
	mov	r0, #0xa
	str	r3, [r2, #0x48]
	str	r6, [r2, #0x6c]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	mov	r0, #0xa
	lsl	r1, #1
	ldr	r2, =0x123
	bl	__Func_8092158
	ldr	r1, =0x137
	mov	r0, #0xa
	mov	r2, #0xd7
	bl	__Func_8092158
	mov	r3, r9
	mov	r2, r10
	b	.L1914

	.align	2, 0
.L18e0:
	.word	0
	.pool

.L1914:
	str	r5, [r3, #0x6c]
	add	r3, #0x5b
	strb	r2, [r3]
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	bl	OvlFunc_932_200ad08
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0xa7
	mov	r1, #1
	mov	r2, #0xf4
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, r9
	mov	r2, r8
	mov	r1, #0xa0
	str	r5, [r3, #0x68]
	mov	r0, #0xa
	strh	r5, [r2]
	lsl	r1, #1
	strh	r5, [r7]
	mov	r2, #0xe8
	str	r6, [r3, #0x6c]
	bl	__Func_8092158
	mov	r1, #0xaa
	mov	r2, #0x83
	mov	r0, #0xa
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_8092158
	mov	r1, #0xbb
	mov	r2, #0x83
	lsl	r2, #1
	lsl	r1, #1
	mov	r0, #0xa
	bl	__Func_8092158
	mov	r3, r9
	str	r5, [r3, #0x6c]
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xf0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #2
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r1, #0xbe
	lsl	r1, #1
	mov	r2, #0xf8
	mov	r0, #0xa
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #6
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x98
	mov	r1, #1
	mov	r2, #0xd7
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	mov	r3, r8
	mov	r2, r9
	str	r5, [r2, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x149
	strh	r5, [r7]
	str	r6, [r2, #0x6c]
	mov	r2, #0xdb
	bl	__Func_8092158
	mov	r2, r9
	str	r5, [r2, #0x6c]
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, r10
	mov	r2, #0x11
	add	r0, #0x55
	mov	r5, #0xd
	strb	r3, [r0]
	mov	r9, r2
	str	r2, [sp]
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x12
	str	r3, [sp]
	mov	r10, r3
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, #0x13
	str	r2, [sp]
	mov	r3, #1
	mov	r8, r2
	mov	r0, #3
	mov	r1, #0
	mov	r2, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r2, =0xb333
	ldr	r1, =0x16666
	mov	r0, #0xa
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r6, #0xa0
	lsl	r6, #11
	str	r6, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r2, #0xd7
	mov	r0, #0xa
	ldr	r1, =0x127
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	ldr	r2, =0xe666
	neg	r1, r1
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #3
	str	r6, [r0, #0x28]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #6
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, r9
	str	r3, [sp]
	mov	r0, #4
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r10
	str	r2, [sp]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0
	mov	r0, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x9999
	mov	r5, r0
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	mov	r3, #1
	ldr	r0, [r5, #8]
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0x80
	ldr	r2, =gScript_932__0200bd34
	lsl	r1, #9
	mov	r0, #0xa
	bl	__Func_8092a1c
	ldr	r0, =0x904
	bl	__SetFlag
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009838

.thumb_func_start OvlFunc_932_2009d0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r7, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__MapActor_SetIdle
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #0x80
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r1, #15
	ldr	r0, =0x1170000
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xa
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xa
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0xca
	lsl	r0, #16
	lsl	r1, #15
	lsl	r2, #16
	mov	r3, #1
	bl	__Func_80933f8
	ldr	r3, .L1dd8	@ 0
	mov	r10, r3
	mov	r3, #0x66
	add	r3, r7
	mov	r2, #0x64
	mov	r5, #0
	add	r2, r7
	mov	r11, r3
	ldr	r6, =OvlFunc_932_2009770
	ldr	r3, =0x6666
	str	r5, [r7, #0x68]
	mov	r8, r2
	strh	r5, [r2]
	mov	r2, r11
	strh	r5, [r2]
	mov	r0, #0xa
	str	r3, [r7, #0x48]
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0xd4
	mov	r2, #0xc8
	bl	__Func_8092158
	mov	r1, #0x67
	mov	r0, #0xa
	mov	r2, #0xc8
	b	.L1e00

	.align	2, 0
.L1dd8:
	.word	0
	.pool

.L1e00:
	bl	__Func_8092158
	mov	r3, #0x5b
	add	r3, r7
	mov	r2, r10
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r2, [r3]
	mov	r9, r3
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x9999
	ldr	r1, =0x13333
	mov	r0, #0xa
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x99
	bl	__PlaySound
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r0, #0x28]
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r2, #0xd6
	mov	r0, #0xa
	mov	r1, #0x56
	bl	__Func_8092158
	mov	r1, #1
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #8
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	mov	r1, #0xc0
	strb	r3, [r0]
	lsl	r1, #6
	mov	r0, #0xa
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r3, r8
	mov	r2, r11
	str	r5, [r7, #0x68]
	mov	r0, #0xa
	strh	r5, [r3]
	ldr	r1, =0x13333
	strh	r5, [r2]
	ldr	r2, =0x9999
	str	r6, [r7, #0x6c]
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #0x78
	mov	r2, #0xd7
	bl	__Func_8092158
	mov	r3, r10
	mov	r2, r9
	mov	r1, #1
	str	r5, [r7, #0x6c]
	mov	r0, #0xa
	strb	r3, [r2]
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	bl	__CutsceneWait
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r2, #0x80
	mov	r1, #0
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0x93
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r2, #16
	mov	r3, #0
	lsl	r0, #16
	mov	r1, #0
	bl	OvlFunc_932_200abb0
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r2, =gKeyPress
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L1fcc
	mov	r6, r2
.L1fba:
	mov	r0, #1
	add	r5, #1
	bl	__CutsceneWait
	cmp	r5, #0x3b
	bhi	.L1fcc
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L1fba
.L1fcc:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x9999
	mov	r7, r0
	ldr	r0, =0x4cccc
	bl	__Func_80933d4
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x905
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009d0c

.thumb_func_start OvlFunc_932_200a020
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r1, [r3]
	mov	r3, #0x81
	lsl	r2, #1
	lsl	r3, #2
	str	r3, [r1, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L2040
	bl	OvlFunc_932_200a0d0
	b	.L209e
.L2040:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L204c
	bl	OvlFunc_932_200a310
	b	.L209e
.L204c:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L2058
	bl	OvlFunc_932_200a428
	b	.L209e
.L2058:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L2064
	bl	OvlFunc_932_200a490
	b	.L209e
.L2064:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L2070
	bl	OvlFunc_932_200a5c0
	b	.L209e
.L2070:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L207c
	bl	OvlFunc_932_200a6c0
	b	.L209e
.L207c:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L2088
	bl	OvlFunc_932_200a804
	b	.L209e
.L2088:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L2094
	bl	OvlFunc_932_200a934
	b	.L209e
.L2094:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L209e
	bl	OvlFunc_932_200a9dc
.L209e:
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_200a020

.thumb_func_start OvlFunc_932_200a0d0
	push	{r5, r6, lr}
	ldr	r0, =0x109
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.L20f2
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L20f2
	bl	OvlFunc_932_200ad58
.L20f2:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	bne	.L210c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2124
.L210c:
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2124
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L2124:
	mov	r0, #9
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L213c
	mov	r2, r0
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
.L213c:
	ldr	r0, =0x8fd
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L222c
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x905
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.L21c8
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0xf0
	mov	r2, #0xd7
	lsl	r2, #16
	lsl	r1, #15
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #3
	strh	r5, [r0, #6]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0x82
	mov	r2, #0xa8
	lsl	r0, #16
	lsl	r2, #16
	mov	r1, #0
	mov	r3, #0
	bl	OvlFunc_932_200abb0
	b	.L22de
.L21c8:
	ldr	r0, =0x904
	bl	__GetFlag
	cmp	r0, #0
	bne	.L21d4
	b	.L22de
.L21d4:
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_932_200ace0
	str	r3, [r0, #0x6c]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r2, #0xd
	mov	r3, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r1, #0x82
	mov	r2, #0xd7
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0x80
	ldr	r2, =gScript_932__0200bd34
	mov	r0, #0xa
	lsl	r1, #9
	bl	__Func_8092a1c
	b	.L22de
.L222c:
	ldr	r3, =iwram_3001e70
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	ldr	r5, [r3]
	bl	__MapActor_SetPos
	mov	r3, #3
	mov	r2, #0xe
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldrh	r2, [r5, #0x14]
	ldr	r3, =0xfdff
	and	r3, r2
	mov	r0, #8
	strh	r3, [r5, #0x14]
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L229a
	mov	r0, #8
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #9
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	mov	r0, #7
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L229a:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L22de
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x11
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #1
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x1d
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
	mov	r1, r0
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.L22de:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a0d0

.thumb_func_start OvlFunc_932_200a310
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2336
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L23ae
.L2336:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L235a
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L235a
	bl	OvlFunc_932_200ae1c
	b	.L23ae
.L235a:
	mov	r3, #0x25
	mov	r2, #0x18
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x18
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	mov	r3, #0x2d
	mov	r2, #0x17
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2c
	mov	r1, #0x17
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.L23ae
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xee
	mov	r2, #0xd1
	mov	r3, #0x80
	lsl	r0, #16
	lsl	r2, #17
	lsl	r3, #8
	mov	r1, #0
	bl	OvlFunc_932_200abb0
.L23ae:
	ldr	r0, =0x323
	bl	__GetFlag
	cmp	r0, #0
	beq	.L23e2
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
	b	.L240a
.L23e2:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
.L240a:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a310

.thumb_func_start OvlFunc_932_200a428
	push	{lr}
	ldr	r0, =0x8fe
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2444
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	b	.L2458
.L2444:
	mov	r3, #0x35
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x34
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L2458:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, #0x80
	sub	r3, #6
	lsl	r3, #16
	lsl	r2, #9
	cmp	r3, r2
	bhi	.L2474
	ldr	r0, =0x12f
	bl	__ClearFlag
.L2474:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a428

.thumb_func_start OvlFunc_932_200a490
	push	{lr}
	ldr	r0, =0x907
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.L24b6
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2506
.L24b6:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L24d4
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x63
	bne	.L24d4
	bl	OvlFunc_932_200ae84
.L24d4:
	bl	OvlFunc_932_200ba44
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	bne	.L2506
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0xa
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xbb
	mov	r1, #0x80
	mov	r2, #0x8c
	mov	r3, #0x80
	lsl	r0, #18
	lsl	r1, #12
	lsl	r2, #17
	lsl	r3, #8
	bl	OvlFunc_932_200abb0
.L2506:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2544
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x19
	mov	r2, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x17
	mov	r1, #0xd
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2544:
	ldr	r0, =0x325
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2578
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
	b	.L25a0
.L2578:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
.L25a0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a490

.thumb_func_start OvlFunc_932_200a5c0
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #2
	bne	.L25ec
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L25ec
	mov	r1, #0xb3
	mov	r2, #0xd0
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
.L25ec:
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L262c
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #5
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r3, #0x2b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	add	r5, #0x23
	mov	r0, #0x2d
	mov	r1, #0x29
	bl	__Func_8010704
	ldrb	r2, [r5]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r5]
.L262c:
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2642
	ldr	r3, =iwram_3001e70
	ldr	r1, [r3]
	ldr	r3, =0xfdff
	ldrh	r2, [r1, #0x14]
	and	r3, r2
	strh	r3, [r1, #0x14]
.L2642:
	ldr	r0, =0x326
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2676
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x11
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
	b	.L269e
.L2676:
	mov	r3, #0x10
	mov	r2, #0x5c
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xf
	mov	r1, #0x5d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x10
	mov	r3, #0x1c
	bl	__CopyMapTiles
.L269e:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a5c0

.thumb_func_start OvlFunc_932_200a6c0
	push	{lr}
	mov	r0, #9
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	OvlFunc_932_200840c
	mov	r0, #9
	bl	OvlFunc_932_200b460
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2710
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x1a
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L2710:
	mov	r0, #0xb
	bl	OvlFunc_932_200b460
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L274c
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x11
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L274c:
	mov	r0, #0xc
	bl	OvlFunc_932_200b460
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L278a
	mov	r0, #0xc
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r3, #0x1a
	mov	r2, #0xf
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
.L278a:
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_932_200b428
	lsl	r1, #4
	bl	__StartTask
	ldr	r0, =0x327
	bl	__GetFlag
	cmp	r0, #0
	beq	.L27c8
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__CopyMapTiles
	b	.L27f0
.L27c8:
	mov	r3, #0x1d
	mov	r2, #0x51
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1c
	mov	r1, #0x52
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x1d
	mov	r3, #0x11
	bl	__CopyMapTiles
.L27f0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a6c0

.thumb_func_start OvlFunc_932_200a804
	push	{r5, r6, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetPos
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =0xe666
	str	r3, [r6, #0x18]
	ldr	r3, =0x9999
	ldr	r2, [r6, #0x50]
	str	r3, [r6, #0x1c]
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r5, .L2888	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =0xffe40000
	str	r3, [r0, #0xc]
	ldr	r0, =0x908
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2882
	ldr	r3, [r6, #8]
	mov	r2, #0xe0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #8]
	ldr	r2, =0xfff80000
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r2, [r6, #0x50]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r2, #0x1e]
.L2882:
	ldr	r0, =0x908
	b	.L28a0

	.align	2, 0
.L2888:
	.word	0
	.pool

.L28a0:
	bl	__GetFlag
	cmp	r0, #0
	beq	.L28da
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
	mov	r0, #0x19
	mov	r1, #0x23
	mov	r2, #0xa
	mov	r3, #5
	bl	__Func_8010704
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.L28da:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.L291c
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L291c
	bl	__CutsceneStart
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0xffa80000
	str	r1, [r0, #0xc]
	mov	r0, #0xc6
	lsl	r0, #18
	ldr	r2, =0x2410000
	mov	r3, #0
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
.L291c:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a804

.thumb_func_start OvlFunc_932_200a934
	push	{r5, lr}
	ldr	r0, =0x909
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.L2958
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L2982
.L2958:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #3
	mov	r0, #9
	bl	__Func_8092b08
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
.L2982:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.L2996
	cmp	r3, #0x62
	bne	.L29b8
.L2996:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29ca
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r5, #0xc]
	bl	__CutsceneEnd
	b	.L29ca
.L29b8:
	cmp	r3, #0x63
	bne	.L29ca
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L29ca
	bl	OvlFunc_932_200b028
.L29ca:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a934

.thumb_func_start OvlFunc_932_200a9dc
	push	{lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #2
	bne	.L2a08
	mov	r1, #0xb8
	mov	r2, #0xa4
	mov	r0, #9
	lsl	r1, #16
	lsl	r2, #17
	bl	__MapActor_SetPos
.L2a08:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200a9dc

.thumb_func_start OvlFunc_932_200aa10
	push	{r5, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #3
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =0x4ccc
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200aa10

.thumb_func_start OvlFunc_932_200aa48
	push	{r5, r6, lr}
	ldr	r3, =.L523c
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L2a62
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2a82
	mov	r6, r5
	add	r6, #0x64
	b	.L2aa2
.L2a62:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r3, #0
	ldrsh	r2, [r6, r3]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	b	.L2aa0
.L2a82:
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	sub	r3, r2
.L2aa0:
	str	r3, [r5, #8]
.L2aa2:
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.L2ade
	ldr	r3, =.L523c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2abc
	mov	r1, #0x80
	lsl	r1, #8
	cmp	r3, r1
	beq	.L2ac6
	b	.L2ace
.L2abc:
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #8
	add	r3, r2
	b	.L2acc
.L2ac6:
	ldr	r3, [r5, #8]
	ldr	r1, =0xffff8000
	add	r3, r1
.L2acc:
	str	r3, [r5, #8]
.L2ace:
	ldr	r3, [r5, #0x18]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff334
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.L2af2
.L2ade:
	ldr	r3, [r5, #0x10]
	ldr	r2, =0x13333
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.L2af2:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.L2b10
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.L2b10:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.L2b1a
	sub	r3, r2, #2
	b	.L2b28
.L2b1a:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.L2b28:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.L2b3a
	mov	r0, r5
	bl	__DeleteActor
.L2b3a:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200aa48

.thumb_func_start OvlFunc_932_200ab58
	push	{r5, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L2b9c
	ldr	r3, =.L5240
	mov	r0, #0xde
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r3, #8]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L2b9c
	mov	r2, r5
	add	r2, #0x64
	mov	r3, #0x1e
	strh	r3, [r2]
	add	r2, #2
	mov	r3, #1
	strh	r3, [r2]
	mov	r3, #0x14
	str	r3, [r5, #0x68]
	bl	OvlFunc_932_200aa10
	ldr	r3, =OvlFunc_932_200aa48
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #1
	bl	__Actor_SetAnim
.L2b9c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ab58

.thumb_func_start OvlFunc_932_200abb0
	push	{lr}
	ldr	r4, =.L5240
	str	r2, [r4, #8]
	ldr	r2, =.L523c
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, #0xaa
	str	r3, [r2]
	bl	__Func_8091ff0
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200ab58
	bl	__StartTask
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200abb0

.thumb_func_start OvlFunc_932_200abe0
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r6]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2cbc
	bl	__Random
	lsl	r1, r0, #1
	add	r1, r0
	lsl	r1, #4
	ldr	r2, =0x2fd0000
	lsr	r1, #16
	lsl	r1, #16
	mov	r3, #0x98
	add	r1, r2
	mov	r0, #0xc8
	ldr	r2, =0xffc00000
	lsl	r3, #18
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L2cbc
	ldr	r0, [r6]
	mov	r1, #9
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.L2c3a
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.L2c34
	mov	r0, #0x91
	bl	__PlaySound
	b	.L2c3a
.L2c34:
	mov	r0, #0x90
	bl	__PlaySound
.L2c3a:
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Random
	ldr	r3, =0x4ccc
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	ldr	r3, =0x6666
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x61
	mov	r3, #1
	str	r0, [r5, #0x1c]
	str	r0, [r5, #0x18]
	mov	r1, #0
	strb	r3, [r2]
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	ldr	r1, [r5, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	ldr	r1, =gScript_932__0200c01c
	mov	r0, r5
	bl	__Actor_SetScript
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	str	r3, [r5, #0x24]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x28]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #9
	ldr	r2, =0xfffffd00
	lsr	r3, #16
	add	r3, r2
	str	r3, [r5, #0x2c]
.L2cbc:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200abe0

.thumb_func_start OvlFunc_932_200ace0
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #7
	and	r2, r3
	cmp	r2, #0
	bne	.L2cf6
	mov	r1, #2
	bl	__Func_80929d8
	b	.L2d00
.L2cf6:
	cmp	r2, #2
	bne	.L2d00
	mov	r1, #0
	bl	__Func_80929d8
.L2d00:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ace0

.thumb_func_start OvlFunc_932_200ad08
	push	{lr}
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8096fb0
	mov	r0, #0xa
	mov	r1, #9
	bl	__Func_80970f8
	bl	__Func_809728c
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_8092950
	mov	r0, #1
	bl	__FieldMove
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	bl	__Func_8097174
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_8092950
	bl	__Func_8097194
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_8092950
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ad08

.thumb_func_start OvlFunc_932_200ad58
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r6, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r6]
	mov	r1, #0xe0
	lsl	r1, #1
	str	r3, [r2, r1]
	mov	r8, r1
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xca
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xca
	bl	__Func_8091a58
	bl	__Func_8093554
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r1, =0x3333
	ldr	r0, =0x19999
	bl	__Func_80933d4
	mov	r0, #0xc8
	mov	r2, #0xf9
	mov	r1, #0
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #15
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_932_20086dc
	ldr	r1, [r5, #0xc]
	ldr	r2, [r5, #0x10]
	ldr	r0, [r5, #8]
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =gScript_882__0200cd6c
	bl	__SetMapEvents
	ldr	r2, [r6]
	mov	r3, #0x81
	lsl	r3, #2
	mov	r1, r8
	str	r3, [r2, r1]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ad58

.thumb_func_start OvlFunc_932_200ae1c
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xa4
	mov	r2, #0xd4
	lsl	r1, #17
	lsl	r2, #17
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x323
	bl	__SetFlag
	bl	OvlFunc_932_20089ec
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_932_20087e8
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ae1c

.thumb_func_start OvlFunc_932_200ae84
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xf4
	mov	r2, #0x8a
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	ldr	r0, =0x325
	bl	__SetFlag
	bl	OvlFunc_932_2008a94
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	ldr	r5, =iwram_3001ebc
	ldr	r3, =0x201
	ldr	r2, [r5]
	mov	r6, #0xe0
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	OvlFunc_932_20088d4
	ldr	r2, [r5]
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r2, r6]
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200ae84

.thumb_func_start OvlFunc_932_200aeec
	push	{r5, lr}
	ldr	r5, =.L51b0
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
	cmp	r3, #0x3c
	bne	.L2f04
	mov	r0, #0xb7
	bl	__PlaySound
	mov	r3, #0
	str	r3, [r5]
.L2f04:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200aeec

.thumb_func_start OvlFunc_932_200af10
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xa4
	mov	r1, #1
	mov	r2, #0xae
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r1, #0xa4
	mov	r2, #0x74
	lsl	r1, #1
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #0x94
	bl	__PlaySound
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_932_200aeec
	bl	__StartTask
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #9
	lsl	r1, #9
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #8
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xccc
	mov	r0, #9
	ldr	r1, =0x1999
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #0xa4
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x68
	bl	__MapActor_TravelTo
	mov	r1, #0xa4
	lsl	r1, #1
	mov	r2, #0x6c
	mov	r0, #9
	bl	__MapActor_TravelTo
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #8
	bl	__MapActor_WaitMovement
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x56
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #3
	bl	__Func_8091eb0
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200af10

