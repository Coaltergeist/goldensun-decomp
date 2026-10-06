	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2009ca8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x811
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1cbc
	b	.Lm890_20fc
.Lm890_1cbc:
	bl	__CutsceneStart
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0x94
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #16
	bl	__Func_80933f8
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0x1e
	bl	__MapActor_Jump
	mov	r1, #0x90
	mov	r2, #0xf0
	mov	r0, #0x10
	lsl	r1, #17
	lsl	r2, #15
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x8a
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x84
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x88
	bl	__MapActor_TravelToAnim
	mov	r1, #0x9c
	mov	r2, #0x88
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_1d72
	mov	r0, #0xdc
	bl	__PlaySound
.Lm890_1d72:
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_1d84
	b	.Lm890_1eb2
.Lm890_1d84:
	mov	r2, #3
	str	r2, [sp, #4]
	mov	r5, #2
	mov	r8, r2
	mov	r0, #0x24
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r6, #1
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x26
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x26
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x27
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x27
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #0x28
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x3e
	mov	r2, #0x11
	mov	r3, #0x24
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x28
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x29
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x29
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r1, #0x3b
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0x2c
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r1, #0x20
	mov	r2, #0x11
	mov	r3, #0x2a
	mov	r0, #0
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #9
	bl	__Func_80118a8
	mov	r0, #0xa
	bl	__Func_80118a8
	ldr	r0, =0x819
	bl	__SetFlag
.Lm890_1eb2:
	mov	r2, #0x1e
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r5, =0x8010
	mov	r1, #0
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r0, =0x102e
	bl	__MessageID
	mov	r0, r5
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r0, #0x10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, =0x1333
	mov	r6, r0
	ldr	r0, =0x9999
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe4
	mov	r3, #1
	ldr	r0, =0x11f0000
	neg	r1, r1
	lsl	r2, #15
	bl	__Func_80933f8
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0x78
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	bl	__MapActor_SetSpeed
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, #0xc9
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	bl	__Func_8092950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	mov	r5, #0
	add	r3, #0x26
	strb	r5, [r3]
.Lm890_1f88:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x78
	bne	.Lm890_1f88
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r5, #0
.Lm890_1fa4:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3c
	bne	.Lm890_1fa4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0x14
	mov	r0, #0x10
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x10
	mov	r1, #6
	bl	OvlFunc_890_200a5fc
	mov	r1, #0x90
	mov	r2, #0x78
	mov	r0, #0x10
	lsl	r1, #1
	bl	__MapActor_TravelToAnimWait
	mov	r1, #2
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0x10
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r1, =0x4ccc
	ldr	r2, =0x2666
	mov	r0, #0x10
	bl	__MapActor_SetSpeed
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r1, r6
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #0xfe
	and	r2, r3
	mov	r3, r6
	add	r3, #0x55
	mov	r5, #0
	strb	r2, [r1]
	mov	r0, #0xc9
	strb	r5, [r3]
	bl	__PlaySound
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #1
	bl	__Func_8092950
	ldr	r7, [r6, #0x50]
	mov	r3, r7
	add	r3, #0x26
	strb	r5, [r3]
.Lm890_2040:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x3333
	add	r3, r2
	str	r3, [r6, #0xc]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x78
	bne	.Lm890_2040
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r5, #0
.Lm890_205c:
	ldr	r3, [r6, #0xc]
	ldr	r2, =0x1999
	add	r3, r2
	str	r3, [r6, #0xc]
	ldr	r3, [r7, #0x18]
	ldr	r2, =0xfffffc00
	add	r3, r2
	str	r3, [r7, #0x18]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0x3c
	bne	.Lm890_205c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0x50
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	mov	r3, #0xe0
	lsl	r3, #1
	b	.Lm890_20c8

	.pool_aligned

.Lm890_20c8:
	add	r2, r1, r3
	add	r3, #0x43
	str	r3, [r2]
	sub	r3, #0x3b
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #7
	bl	__Func_8091e9c
	bl	__CutsceneEnd
.Lm890_20fc:
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2009ca8

