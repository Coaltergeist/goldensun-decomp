	.include "macros.inc"
	.include "gba.inc"

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

