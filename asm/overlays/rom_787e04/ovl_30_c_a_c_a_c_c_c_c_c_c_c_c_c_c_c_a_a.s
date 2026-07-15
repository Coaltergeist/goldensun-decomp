	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_887_20083f8
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x13
	bne	.L420
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	b	.L550
.L420:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L468
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L46c
.L468:
	bl	OvlFunc_887_20093b4
.L46c:
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_8092b08
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4d8
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
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
	bhi	.L550
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4bc
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.L550
	mov	r0, #0xc
	bl	__Func_80118a8
	b	.L550
.L4bc:
	mov	r0, #0xb
	bl	__Func_80118a8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #8
	mov	r1, #0xa
	bl	__MapActor_SetAnim
	b	.L550
.L4d8:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x15
	bne	.L4ee
	bl	OvlFunc_887_2008a0c
	b	.L550
.L4ee:
	cmp	r3, #0x14
	bne	.L4fe
	ldr	r0, =0x834
	bl	__SetFlag
	bl	OvlFunc_887_2008578
	b	.L550
.L4fe:
	cmp	r3, #0x16
	bne	.L508
	bl	OvlFunc_887_20093e4
	b	.L550
.L508:
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L546
	bl	__StartThunder
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	b	.L550
.L546:
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.L550:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_887_20083f8

.thumb_func_start OvlFunc_887_2008578
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r2, =iwram_3001ebc
	mov	r9, r2
	ldr	r3, [r2]
	sub	r2, #0x4c
	ldr	r7, [r2]
	mov	r2, #0xf0
	lsl	r2, #1
	add	r3, r2
	mov	r0, #0x11
	ldr	r6, [r3]
	bl	__MapActor_GetActor
	ldr	r0, [r0, #0x50]
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x12
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r3, #0
	mov	r10, r3
	ldr	r3, =0x555
	mov	r2, r8
	strh	r3, [r2, #0x1e]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	ldr	r5, .L63c	@ 0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x90
	lsl	r1, #18
	ldr	r2, =0x28a0000
	mov	r0, #0x11
	bl	__MapActor_SetPos
	mov	r0, #7
	bl	__Func_80118a8
	mov	r2, #0xac
	ldr	r1, =0x2160000
	lsl	r2, #18
	mov	r0, #8
	bl	__MapActor_SetPos
	bl	__Func_800c5b4
	mov	r0, #8
	b	.L650

	.align	2, 0
.L63c:
	.word	0
	.pool

.L650:
	bl	__Func_8093304
	ldr	r5, =0xe52
	mov	r1, #1
	mov	r0, r5
	mov	r2, #0
	bl	__Func_8019aa0
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #8
	bl	__Func_8093304
	mov	r1, #1
	add	r0, r5, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, r7
	mov	r3, #0xa4
	add	r2, #0xec
	lsl	r3, #17
	str	r3, [r2]
	mov	r3, #0x96
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x9c
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0xcc
	add	r2, #4
	lsl	r3, #18
	str	r3, [r2]
	mov	r3, #0x8d
	lsl	r3, #18
	str	r3, [r6, #8]
	mov	r3, r10
	str	r3, [r6, #0xc]
	ldr	r3, =0x2b30000
	str	r3, [r6, #0x10]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, r9
	ldr	r1, [r2]
	mov	r3, #0xe0
	lsl	r3, #1
	add	r2, r1, r3
	add	r3, #0x49
	str	r3, [r2]
	sub	r3, #0x41
	add	r2, r1, r3
	mov	r3, #0x40
	str	r3, [r2]
	bl	__StartThunder
	mov	r2, r9
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	mov	r2, #1
	strh	r2, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	add	r5, #2
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_8095268
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	__MessageID
	mov	r2, #0x3c
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #7
	bl	__Func_80118c0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__Func_80118a8
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0x13
	bl	__MapActor_SetAnim
	ldr	r1, =0x22d
	ldr	r2, =0x2a7
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #8
	bl	__Func_80118c0
	mov	r0, #9
	bl	__Func_80118a8
	mov	r2, #0xaa
	ldr	r1, =0x22b
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r2, =0x2a2
	mov	r0, #0
	ldr	r1, =0x21f
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x9008
	mov	r1, #0
	bl	__ActorMessage
	bl	OvlFunc_887_20097e4
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r2, #0x14
	ldr	r0, =0x9008
	bl	__Func_8093040
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xaa
	lsl	r2, #2
	strb	r3, [r0]
	ldr	r1, =0x21e
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0xe2
	bl	__Actor_AddSpriteLayer
	mov	r0, #0x21
	bl	__SetFlag
	mov	r0, #0x7e
	bl	__PlaySound
	mov	r1, #7
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xac
	and	r5, r3
	ldr	r1, =0x216
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #0
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #1
	mov	r0, #8
	bl	__SetCameraTarget
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	ldr	r5, =ActorCmd_ARRAY_887__02009ab4
	orr	r6, r3
	mov	r1, r5
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #8
	bl	__MapActor_WaitScript
	mov	r0, #8
	ldr	r1, =0x1a3
	ldr	r2, =0x295
	bl	__Func_80921c4
	mov	r1, #0xcc
	ldr	r2, =0x295
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0
	ldr	r0, =0x8008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L95a
	mov	r3, r9
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L95a:
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	ldr	r0, =0x8008
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_887__02009b04
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_887__02009b34
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, r9
	ldr	r1, [r2]
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
	mov	r0, #0x14
	bl	__Func_8091e9c
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008578

.thumb_func_start OvlFunc_887_2008a0c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #8
	ldr	r1, =0x1af0000
	ldr	r2, =0x1870000
	bl	__MapActor_SetPos
	mov	r2, #0xca
	lsl	r2, #17
	ldr	r1, =0x1cf0000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	add	r5, #0x55
	mov	r2, #0
	strb	r3, [r1]
	strb	r2, [r5]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
	ldr	r1, =gScript_887__02009cec
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	ldr	r2, =iwram_3001ebc
	ldr	r3, [r2]
	mov	r10, r2
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x41
	str	r2, [r3]
	mov	r3, #4
	str	r3, [sp, #4]
	mov	r8, r3
	mov	r5, #5
	mov	r0, #0x53
	mov	r1, #0xf
	mov	r2, #0x53
	mov	r3, #0x13
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r2, r8
	str	r2, [sp, #4]
	mov	r0, #0x5a
	mov	r1, #0x10
	mov	r2, #0x5a
	mov	r3, #0x14
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x4d
	mov	r1, #0x17
	mov	r2, #0x52
	mov	r3, #0x17
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r5, #2
	mov	r0, #0x53
	mov	r1, #0x21
	mov	r2, #0x55
	mov	r3, #0x21
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r6, #1
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x5a
	mov	r3, #0x1c
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x5b
	mov	r1, #0x1c
	mov	r2, #0x58
	mov	r3, #0x1e
	str	r6, [sp]
	str	r6, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #6
	str	r3, [sp]
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x5e
	mov	r1, #0x1b
	mov	r2, #0x5e
	mov	r3, #0x17
	bl	__CopyMapTiles
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x5c
	mov	r1, #0x1c
	mov	r2, #0x57
	mov	r3, #0x17
	bl	__CopyMapTiles
	mov	r0, #0x41
	mov	r1, #0x35
	mov	r2, #0x58
	mov	r3, #0x18
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	bl	__Func_8011ae0
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r3, =0x100c
	ldr	r5, =REG_BLDALPHA
	strh	r3, [r5]
	bl	__StartThunder
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	ldr	r2, =0x1f84
	add	r3, r2
	strh	r6, [r3]
	bl	__Func_8095240
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #9
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_887__02009bb4
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_887__02009b78
	mov	r0, #8
	bl	__MapActor_SetBehavior
	bl	__MapTransitionIn
	mov	r0, #8
	bl	__MapActor_WaitScript
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, #0x80
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #11
	lsl	r1, #8
	bl	__Func_80933d4
	mov	r0, #0xcf
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	ldr	r2, =0x2120000
	bl	__Func_80933f8
	mov	r1, #0xcf
	mov	r0, #9
	lsl	r1, #17
	ldr	r2, =0x2120000
	bl	__MapActor_SetPos
	ldr	r1, =0x1ab
	ldr	r2, =0x1e3
	mov	r0, #9
	bl	__Func_80921c4
	bl	__Func_8093530
	ldr	r0, =0xe5b
	bl	__MessageID
	mov	r2, #0xa
	ldr	r0, =0x8009
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xf0
	mov	r1, #1
	mov	r2, #0xde
	mov	r3, #1
	neg	r1, r1
	lsl	r2, #17
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r2, =0x24d
	ldr	r1, =0x19f
	mov	r0, #9
	bl	__Func_809218c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =gScript_887__02009c04
	mov	r0, #8
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_887__02009c54
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xea
	bl	__PlaySound
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r1, =gScript_887__02009d38
	mov	r0, #0xa
	bl	__MapActor_SetBehavior
	mov	r6, #0
.Lcc0:
	ldr	r2, =0x100e
	add	r3, r6, r2
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #3
	bls	.Lcc0
	mov	r0, #0xca
	bl	__PlaySound
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r7, =0x100f
	ldr	r5, =REG_BLDALPHA
	mov	r6, #0
.Lce4:
	sub	r3, r7, r6
	strh	r3, [r5]
	mov	r0, #1
	add	r6, #1
	bl	__WaitFrames
	cmp	r6, #0xf
	bls	.Lce4
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #8
	mov	r1, #1
	bl	__SetCameraTarget
	ldr	r5, =gScript_887__02009ca4
	mov	r0, #8
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0
	mov	r1, r5
	bl	__MapActor_RunScript
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
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x15
	bl	__Func_8091e9c
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_887_2008a0c

