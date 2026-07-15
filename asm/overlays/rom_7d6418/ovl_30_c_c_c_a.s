	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_20081d8
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
	bne	.L280
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
	beq	.L260
	b	.L462
.L260:
	bl	OvlFunc_951_20096a8
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L272
	b	.L462
.L272:
	mov	r3, r10
	mov	r1, r8
	strh	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #5
	strh	r3, [r7]
	b	.L462
.L280:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L296
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L296:
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
	bne	.L2cc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #9
	mov	r1, #2
	bl	__Func_8092950
	ldrh	r2, [r5]
.L2cc:
	lsl	r3, r2, #16
	mov	r2, #0xd0
	lsl	r2, #12
	cmp	r3, r2
	bne	.L380
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L380
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
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =ewram_2001000
	ldr	r2, [r6, #0x10]
	ldr	r3, [r3]
	sub	r5, r2, r3
	cmp	r5, #0
	ble	.L362
	ldr	r3, =0x4e1f
	cmp	r5, r3
	ble	.L32c
	mov	r0, #0x5d
	bl	__PlaySound
	b	.L340
.L32c:
	ldr	r1, =0x1387
	cmp	r5, r1
	ble	.L33a
	mov	r0, #0x5c
	bl	__PlaySound
	b	.L340
.L33a:
	mov	r0, #0x5b
	bl	__PlaySound
.L340:
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
	b	.L37c
.L362:
	cmp	r5, #0
	bge	.L37c
	ldr	r0, =0xe14
	bl	__MessageID
	neg	r0, r5
	mov	r1, #5
	bl	__Func_8019908
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
.L37c:
	bl	__CutsceneEnd
.L380:
	ldr	r5, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r5, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #0xc
	bne	.L462
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L462
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
	bne	.L3c6
	mov	r0, #1
	bl	OvlFunc_951_20088f8
	b	.L45e
.L3c6:
	mov	r1, #2
	neg	r1, r1
	cmp	r3, r1
	beq	.L45e
	ldr	r0, =0xe2e
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r3, #0
	ldrsb	r3, [r7, r3]
	cmp	r3, r5
	beq	.L444
	mov	r8, r5
	mov	r6, r7
.L3e8:
	cmp	r6, r7
	bne	.L3f4
	ldr	r0, =0xe2f
	bl	__MessageID
	b	.L3fa
.L3f4:
	ldr	r0, =_MSG_e30
	bl	__MessageID
.L3fa:
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
	bne	.L3e8
.L444:
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
.L45e:
	bl	__CutsceneEnd
.L462:
	mov	r0, #0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_951_20081d8

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

	.section .text.after_8880, "ax", %progbits

.thumb_func_start OvlFunc_951_20088f8
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, #0xe4
	bl	__Func_8078b60
	mov	r6, r0
	bl	__Func_808ba38
	cmp	r5, #0
	bne	.L982
	ldr	r7, =0xe23
	mov	r0, r7
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	cmp	r6, #0
	beq	.L9aa
	add	r0, r7, #2
	bl	__MessageID
	mov	r0, r6
	mov	r1, #5
	bl	__Func_8019908
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L9aa
	bl	__Func_8078550
	mov	r5, r0
	cmp	r5, #0
	bne	.L95c
	add	r0, r7, #4
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
	b	.L96e
.L95c:
	cmp	r5, #6
	bgt	.L9b4
	add	r0, r7, #5
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092c40
.L96e:
	cmp	r5, #6
	bgt	.L9b4
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L9b4
	ldr	r0, =0xe29
	b	.L9a6
.L982:
	cmp	r6, #0
	bne	.L98a
	ldr	r0, =0xe32
	b	.L9a6
.L98a:
	ldr	r0, =0xe33
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L9b4
	ldr	r0, =0xe31
.L9a6:
	bl	__MessageID
.L9aa:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L9d4
.L9b4:
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
.L9d4:
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
	bcs	.La20
	ldr	r0, =0xe12
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092c40
	b	.Laa6
.La20:
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
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.La8a
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x80
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0x78
	mov	r2, #0x98
	bl	__Func_80921c4
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
	b	.Laa2
.La8a:
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
.Laa2:
	bl	__CutsceneEnd
.Laa6:
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
.Laec:
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
	bl	__Func_8092c40
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
	bne	.Lb74
	b	.Ld34
.Lb74:
	mov	r3, r10
	cmp	r3, #0
	bne	.Lb86
	mov	r3, r8
	cmp	r3, #0
	bne	.Lbdc
	mov	r0, r9
	add	r0, #1
	b	.Lb94
.Lb86:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lbdc
	cmp	r7, #0
	bne	.Lbb4
	mov	r0, r9
	add	r0, #2
.Lb94:
	bl	__MessageID
	mov	r0, #1
	neg	r0, r0
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	bl	__WaitFrames
	b	.Laec
.Lbaa:
	mov	r0, #0x70
	bl	__PlaySound
	mov	r5, #0
	b	.Lc3c
.Lbb4:
	bl	__Func_8078550
	cmp	r0, #0
	bne	.Lbdc
	mov	r0, r9
	add	r0, #4
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	neg	r0, r0
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.Lbdc
	b	.Ld34
.Lbdc:
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
	b	.Lc20
.Lc1a:
	mov	r0, #1
	bl	__WaitFrames
.Lc20:
	ldr	r3, [r5]
	and	r3, r7
	cmp	r3, #0
	bne	.Lbaa
	ldr	r3, [r5]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lc1a
	mov	r0, #0x71
	bl	__PlaySound
	mov	r5, #1
	neg	r5, r5
.Lc3c:
	mov	r0, r6
	mov	r1, #2
	bl	__CloseUIBox
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Ld34
	mov	r3, r10
	cmp	r3, #0
	bne	.Lc5c
	mov	r0, #1
	neg	r0, r0
	bl	__AddCoins
	b	.Lc68
.Lc5c:
	mov	r3, r10
	cmp	r3, #1
	bne	.Lc68
	mov	r0, #0xe5
	bl	__Func_80789dc
.Lc68:
	mov	r0, r10
	bl	OvlFunc_951_200973c
	mov	r3, r10
	mov	r5, r0
	cmp	r3, #0
	bne	.Lcb2
	cmp	r5, #4
	beq	.Lca4
	ldr	r6, =.L200c
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
	b	.Ld34
.Lca4:
	mov	r0, #0x71
	bl	__PlaySound
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.Ld34
.Lcb2:
	lsl	r3, r5, #1
	add	r3, r5
	mov	r6, #0
	add	r0, r3, #3
	mov	r7, #0
	cmp	r6, r0
	bge	.Lcd6
	ldr	r2, =0x11d
	mov	r12, r0
	add	r2, r11
.Lcc6:
	ldrb	r3, [r2]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r2, #1
	add	r7, r3
	cmp	r6, r12
	blt	.Lcc6
.Lcd6:
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
	blt	.Ld08
	ldr	r1, =0x11d
	add	r1, r11
.Lcf6:
	add	r6, #1
	cmp	r6, #0xe
	bgt	.Ld08
	add	r1, #1
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	sub	r2, r3
	cmp	r2, #0
	bge	.Lcf6
.Ld08:
	cmp	r6, #0xf
	bne	.Ld0e
	mov	r6, #0xe
.Ld0e:
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
	ble	.Ld34
	lsr	r3, #31
	add	r3, r2, r3
	asr	r3, #1
	strb	r3, [r0, r1]
.Ld34:
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

	.section .text.after_8d70, "ax", %progbits
