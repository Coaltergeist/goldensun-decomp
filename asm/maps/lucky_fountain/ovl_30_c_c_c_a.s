	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LuckyFountain_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.Lm951_1c0
	ldr	r0, =Events_TolbiSpring
	b	.Lm951_1c2
.Lm951_1c0:
	ldr	r0, =Events_GameBuildings
.Lm951_1c2:
	pop	{r1}
	bx	r1
.func_end LuckyFountain_GetEvents

.thumb_func_start LuckyFountain_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r6, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xbd
	cmp	r2, r3
	bne	.Lm951_280
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r3, =0x3f42
	ldr	r1, =REG_BLDCNT
	mov	r10, r3
	mov	r8, r1
	mov	r2, r10
	mov	r3, r8
	strh	r2, [r3]
	ldr	r3, =0x80c
	ldr	r7, =REG_BLDALPHA
	strh	r3, [r7]
	mov	r0, #0x18
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r1, #2
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r5,=0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, #2
	add	r0, #0x23
	strb	r5, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	add	r0, #0x23
	strb	r5, [r0]
	bl	__MapTransitionIn
	mov	r1, #0xe1
	lsl	r1, #1
	add	r3, r6, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #1
	beq	.Lm951_260
	b	.Lm951_462
.Lm951_260:
	bl	OvlFunc_951_20096a8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm951_272
	b	.Lm951_462
.Lm951_272:
	mov	r3, r10
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r7]
	b	.Lm951_462
.Lm951_280:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm951_296
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm951_296:
	ldr	r2, =iwram_3001d18
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	mov	r3, #0xe1
	lsl	r3, #1
	add	r5, r6, r3
	mov	r1, #0
	ldrsh	r3, [r5, r1]
	ldrh	r2, [r5]
	cmp	r3, #0xa
	bne	.Lm951_2cc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092950
	ldrh	r2, [r5]
.Lm951_2cc:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.Lm951_380
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm951_380
	bl	__CutsceneStart
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #9
	bl	__Func_8092950
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x70
	mov	r0, #0
	mov	r1, #0x78
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =ewram_2001000
	ldr	r2, [r6, #0x10]
	ldr	r3, [r3]
	sub	r5, r2, r3
	cmp	r5, #0
	ble	.Lm951_362
	ldr	r3, =0x4e1f
	cmp	r5, r3
	ble	.Lm951_32c
	mov	r0, #0x5d
	bl	__PlaySound
	b	.Lm951_340
.Lm951_32c:
	ldr	r1, =0x1387
	cmp	r5, r1
	ble	.Lm951_33a
	mov	r0, #0x5c
	bl	__PlaySound
	b	.Lm951_340
.Lm951_33a:
	mov	r0, #0x5b
	bl	__PlaySound
.Lm951_340:
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0xe13
	bl	__MessageID
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8019908
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	bl	__Func_80b04c4
	b	.Lm951_37c
.Lm951_362:
	cmp	r5, #0
	bge	.Lm951_37c
	ldr	r0, =0xe14
	bl	__MessageID
	neg	r0, r5
	mov	r1, #5
	bl	__Func_8019908
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.Lm951_37c:
	bl	__CutsceneEnd
.Lm951_380:
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xc
	bne	.Lm951_462
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm951_462
	mov	r2, #0x96
	lsl	r2, #1
	add	r7, r5, r2
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r5, #1
	mov	r3, #0
	ldrsb	r3, [r7, r3]
	neg	r5, r5
	cmp	r3, r5
	bne	.Lm951_3c6
	mov	r0, #1
	bl	OvlFunc_951_20088f8
	b	.Lm951_45e
.Lm951_3c6:
	mov	r1, #2
	neg	r1, r1
	cmp	r3, r1
	beq	.Lm951_45e
	ldr	r0, =0xe2e
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, #0
	ldrsb	r3, [r7, r3]
	cmp	r3, r5
	beq	.Lm951_444
	mov	r8, r5
	mov	r6, r7
.Lm951_3e8:
	cmp	r6, r7
	bne	.Lm951_3f4
	ldr	r0, =0xe2f
	bl	__MessageID
	b	.Lm951_3fa
.Lm951_3f4:
	ldr	r0, =_MSG_e30
	bl	__MessageID
.Lm951_3fa:
	mov	r0, #0
	ldrsb	r0, [r6, r0]
	bl	OvlFunc_951_2008d70
	mov	r1, #2
	mov	r5, r0
	bl	__Func_8019908
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, r5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	add	r6, #1
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r3, #0
	ldrsb	r3, [r6, r3]
	cmp	r3, r8
	bne	.Lm951_3e8
.Lm951_444:
	ldr	r3, =gState
	mov	r2, #0x96
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0xfe
	ldr	r0, =0xe31
	strb	r2, [r3]
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.Lm951_45e:
	bl	__CutsceneEnd
.Lm951_462:
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end LuckyFountain_MapInit

.thumb_func_start OvlFunc_951_20084bc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x94
	bl	__PlaySound
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r8, r3
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #3
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r2, #0x46
	mov	r3, #0
	mov	r1, #0x1d
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, #0x7e
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20084bc

.thumb_func_start OvlFunc_951_2008880
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001e70
	mov	r0, #0xd8
	ldr	r5, [r3]
	bl	__PlaySound
	mov	r2, #0xb2
	lsl	r2, #1
	add	r5, r2
	mov	r6, #0xf
.Lm951_89a:
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff0000
	add	r3, r2
	str	r3, [r5, #0xc]
	mov	r0, #4
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm951_89a
	ldr	r3, =0x3f42
	ldr	r2, =REG_BLDCNT
	ldr	r5, =.Lm951_1fc0
	ldr	r7, =REG_BLDALPHA
	mov	r10, r3
	mov	r8, r2
	mov	r6, #7
.Lm951_8bc:
	mov	r3, r10
	mov	r2, r8
	strh	r3, [r2]
	ldrh	r3, [r5]
	add	r5, #2
	strh	r3, [r7]
	mov	r0, #8
	sub	r6, #1
	bl	__WaitFrames
	cmp	r6, #0
	bge	.Lm951_8bc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008880

.thumb_func_start OvlFunc_951_20088f8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0xe4
	bl	__Func_8078b60
	mov	r6, r0
	bl	__Func_808ba38
	cmp	r5, #0
	bne	.Lm951_982
	ldr	r7, =0xe23
	mov	r0, r7
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	cmp	r6, #0
	beq	.Lm951_9aa
	add	r0, r7, #2
	bl	__MessageID
	mov	r0, r6
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_9aa
	bl	__Func_8078550
	mov	r5, r0
	cmp	r5, #0
	bne	.Lm951_95c
	add	r0, r7, #4
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm951_96e
.Lm951_95c:
	cmp	r5, #6
	bgt	.Lm951_9b4
	add	r0, r7, #5
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
.Lm951_96e:
	cmp	r5, #6
	bgt	.Lm951_9b4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm951_9b4
	ldr	r0, =0xe29
	b	.Lm951_9a6
.Lm951_982:
	cmp	r6, #0
	bne	.Lm951_98a
	ldr	r0, =0xe32
	b	.Lm951_9a6
.Lm951_98a:
	ldr	r0, =0xe33
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm951_9b4
	ldr	r0, =0xe31
.Lm951_9a6:
	bl	__MessageID
.Lm951_9aa:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm951_9d4
.Lm951_9b4:
	ldr	r0, =0xe2a
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xfe
	lsl	r0, #1
	mov	r1, #0
	bl	__SetDestMap2
	ldr	r0, =0x89
	mov	r1, #0xc
	bl	__Func_8091f90
.Lm951_9d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20088f8

.thumb_func_start OvlFunc_951_20089f8
	push	{r5, lr}
	bl	__Func_8077348
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r5, r3, #1
	bl	__CutsceneStart
	ldr	r3, =gState
	ldr	r2, [r3, #0x10]
	cmp	r2, r5
	bcs	.Lm951_a20
	ldr	r0, =0xe12
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ShowActorMessage_NoWait
	b	.Lm951_aa6
.Lm951_a20:
	ldr	r3, =ewram_2001000
	str	r2, [r3]
	bl	__Func_808ba38
	ldr	r0, =0xe0e
	bl	__MessageID
	mov	r0, r5
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #9
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lm951_a8a
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x80
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1fd
	mov	r1, #0
	bl	__SetDestMap2
	ldr	r0, =0x89
	mov	r1, #0xd
	bl	__Func_8091f90
	b	.Lm951_aa2
.Lm951_a8a:
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
.Lm951_aa2:
	bl	__CutsceneEnd
.Lm951_aa6:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20089f8

.thumb_func_start OvlFunc_951_2008ac8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0
	mov	r10, r3
	sub	sp, #4
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r3, =0xe43
	mov	r9, r3
	ldr	r3, =gState
	mov	r11, r3
.Lm951_aec:
	mov	r3, r11
	ldr	r3, [r3, #0x10]
	mov	r0, #0xe5
	mov	r8, r3
	bl	__Func_8078b60
	mov	r7, r0
	mov	r0, r9
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ShowActorMessage_NoWait
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0x11
	mov	r3, #4
	mov	r0, #0
	bl	__CreateUIBox
	ldr	r5, =0xe49
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e7c0
	mov	r3, #0
	str	r3, [sp]
	mov	r0, r8
	mov	r1, #6
	mov	r2, r6
	mov	r3, #0x48
	bl	__Func_801ea08
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	__Func_801e7c0
	mov	r3, #8
	str	r3, [sp]
	mov	r2, r6
	mov	r3, #0x48
	mov	r1, #6
	mov	r0, r7
	bl	__Func_801ea08
	mov	r0, r10
	bl	__LuckyFountainMenu
	mov	r1, #2
	mov	r10, r0
	mov	r0, r6
	bl	__CloseUIBox
	bl	__Func_8019a54
	mov	r3, #1
	neg	r3, r3
	cmp	r10, r3
	bne	.Lm951_b74
	b	.Lm951_d34
.Lm951_b74:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lm951_b86
	mov	r3, r8
	cmp	r3, #0
	bne	.Lm951_bdc
	mov	r0, r9
	add	r0, #1
	b	.Lm951_b94
.Lm951_b86:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lm951_bdc
	cmp	r7, #0
	bne	.Lm951_bb4
	mov	r0, r9
	add	r0, #2
.Lm951_b94:
	bl	__MessageID
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	bl	__WaitFrames
	b	.Lm951_aec
.Lm951_baa:
	mov	r0, #0x70
	bl	__PlaySound
	mov	r5, #0
	b	.Lm951_c3c
.Lm951_bb4:
	bl	__Func_8078550
	cmp	r0, #0
	bne	.Lm951_bdc
	mov	r0, r9
	add	r0, #4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__ShowActorMessage_NoWait
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lm951_bdc
	b	.Lm951_d34
.Lm951_bdc:
	mov	r3, #2
	str	r3, [sp]
	mov	r1, #0xf
	mov	r2, #9
	mov	r3, #4
	mov	r0, #0x14
	bl	__CreateUIBox
	ldr	r5, =0xe4c
	mov	r6, r0
	mov	r1, r6
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	__Func_801e7c0
	add	r0, r5, #1
	mov	r1, r6
	mov	r2, #0
	mov	r3, #8
	bl	__Func_801e7c0
	mov	r0, #5
	bl	__WaitFrames
	mov	r0, #0x74
	bl	__PlaySound
	ldr	r5, =gKeyPress
	mov	r7, #1
	b	.Lm951_c20
.Lm951_c1a:
	mov	r0, #1
	bl	__WaitFrames
.Lm951_c20:
	ldr	r3, [r5]
	and	r3, r7
	cmp	r3, #0
	bne	.Lm951_baa
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm951_c1a
	mov	r0, #0x71
	bl	__PlaySound
	mov	r5, #1
	neg	r5, r5
.Lm951_c3c:
	mov	r0, r6
	mov	r1, #2
	bl	__CloseUIBox
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lm951_d34
	mov	r3, r10
	cmp	r3, #0
	bne	.Lm951_c5c
	mov	r0, #1
	neg	r0, r0
	bl	__AddCoins
	b	.Lm951_c68
.Lm951_c5c:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lm951_c68
	mov	r0, #0xe5
	bl	__Func_80789dc
.Lm951_c68:
	mov	r0, r10
	bl	OvlFunc_951_200973c
	mov	r3, r10
	mov	r5, r0
	cmp	r3, #0
	bne	.Lm951_cb2
	cmp	r5, #4
	beq	.Lm951_ca4
	ldr	r6, =.Lm951_200c
	lsl	r5, #1
	ldrh	r0, [r6, r5]
	bl	__AddCoins
	mov	r0, #0x5b
	bl	__PlaySound
	mov	r1, #5
	ldrh	r0, [r6, r5]
	bl	__Func_8019908
	ldr	r0, =0xe46
	bl	__MessageID
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm951_d34
.Lm951_ca4:
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.Lm951_d34
.Lm951_cb2:
	lsl	r3, r5, #1
	add	r3, r5
	mov	r6, #0
	add	r0, r3, #3
	mov	r7, #0
	cmp	r6, r0
	bge	.Lm951_cd6
	ldr	r2, =0x11d
	mov	r12, r0
	add	r2, r11
.Lm951_cc6:
	ldrb	r3, [r2]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r2, #1
	add	r7, r3
	cmp	r6, r12
	blt	.Lm951_cc6
.Lm951_cd6:
	bl	__Random
	mov	r3, r7
	mul	r3, r0
	mov	r1, r11
	lsr	r2, r3, #16
	mov	r3, #0x8e
	lsl	r3, #1
	add	r1, #1
	ldrsb	r3, [r1, r3]
	sub	r2, r3
	mov	r6, #0
	cmp	r2, #0
	blt	.Lm951_d08
	ldr	r1, =0x11d
	add	r1, r11
.Lm951_cf6:
	add	r6, #1
	cmp	r6, #0xe
	bgt	.Lm951_d08
	add	r1, #1
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	sub	r2, r3
	cmp	r2, #0
	bge	.Lm951_cf6
.Lm951_d08:
	cmp	r6, #0xf
	bne	.Lm951_d0e
	mov	r6, #0xe
.Lm951_d0e:
	ldr	r2, =gLuckyFountainPrizes
	lsl	r3, r6, #2
	ldr	r0, [r2, r3]
	bl	OvlFunc_951_20084bc
	mov	r3, #0x8e
	lsl	r3, #1
	mov	r0, r11
	add	r1, r6, r3
	add	r0, #1
	ldrb	r3, [r0, r1]
	lsl	r3, #24
	asr	r2, r3, #24
	cmp	r2, #1
	ble	.Lm951_d34
	lsr	r3, #31
	add	r3, r2, r3
	asr	r3, #1
	strb	r3, [r0, r1]
.Lm951_d34:
	bl	__CutsceneEnd
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_2008ac8

.thumb_func_start OvlFunc_951_2008d70
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r7, r0
	mov	r0, #0
	cmp	r7, #0
	blt	.Lm951_dbe
	cmp	r7, #5
	bne	.Lm951_d8c
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r7, r3, #16
.Lm951_d8c:
	ldr	r3, =gState
	mov	r8, r3
	mov	r3, #0x9a
	lsl	r3, #1
	add	r6, r7, r3
	mov	r3, r8
	ldrsb	r5, [r3, r6]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	add	r5, r0
	add	r5, #4
	mov	r0, r5
	mov	r1, #3
	bl	_modsi3_RAM
	mov	r3, r8
	strb	r0, [r3, r6]
	lsl	r3, r7, #1
	add	r3, r7
	add	r3, r0
	ldr	r2, =.Lm951_2018
	lsl	r3, #2
	ldr	r0, [r2, r3]
.Lm951_dbe:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_2008d70

.thumb_func_start OvlFunc_951_2008dd0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r8, r2
	mov	r7, r3
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm951_e0a
	ldmia	r6!, {r3}
	str	r3, [r5, #8]
	ldmia	r6!, {r3}
	str	r3, [r5, #0xc]
	ldr	r3, [r6]
	str	r3, [r5, #0x10]
	mov	r3, r8
	strh	r3, [r5, #6]
	ldr	r2, =0
	mov	r3, r5
	add	r3, #0x55
	strb	r2, [r3]
	ldr	r3, [r5, #0x50]
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r1, [sp, #0x14]
	bl	__Actor_SetAnimSpeed
.Lm951_e0a:
	ldr	r0, [r5, #0x50]
	mov	r3, r0
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm951_e3a
	mov	r4, #0xff
	add	r0, #0x28
	mov	r1, r3
	b	.Lm951_e24

	.pool_aligned

.Lm951_e24:
	ldmia	r0!, {r2}
	ldrb	r3, [r2, #5]
	cmp	r3, r7
	beq	.Lm951_e34
	ldrb	r3, [r2, #0x16]
	orr	r3, r4
	strb	r7, [r2, #5]
	strb	r3, [r2, #0x16]
.Lm951_e34:
	sub	r1, #1
	cmp	r1, #0
	bne	.Lm951_e24
.Lm951_e3a:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_2008dd0

