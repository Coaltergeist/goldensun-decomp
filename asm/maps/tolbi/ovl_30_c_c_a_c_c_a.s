	.include "macros.inc"

.thumb_func_start OvlFunc_949_20082f0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x10
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__CutsceneStart
	ldrh	r2, [r6]
	ldr	r3, .Lm949_338	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm949_356
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_344
	ldr	r0, =0x2365
	b	.Lm949_376

	.align	2, 0
.Lm949_338:
	.word	2
	.pool

.Lm949_344:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_352
	ldr	r0, =0x21e2
	b	.Lm949_376
.Lm949_352:
	ldr	r0, =0x1f95
	b	.Lm949_376
.Lm949_356:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_366
	ldr	r0, =0x2371
	b	.Lm949_376
.Lm949_366:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_374
	ldr	r0, =0x21f5
	b	.Lm949_376
.Lm949_374:
	ldr	r0, =0x1faa
.Lm949_376:
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__ActorMessage_Wait
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20082f0

.thumb_func_start OvlFunc_949_20083d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0x11
	ldr	r5, [r3]
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r3, #6
	ldrsh	r2, [r7, r3]
	mov	r6, r7
	add	r6, #0x64
	mov	r8, r2
	bl	__CutsceneStart
	ldrh	r2, [r6]
	ldr	r3, .Lm949_418	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm949_436
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_424
	ldr	r0, =0x2366
	b	.Lm949_456

	.align	2, 0
.Lm949_418:
	.word	2
	.pool

.Lm949_424:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_432
	ldr	r0, =0x21e3
	b	.Lm949_456
.Lm949_432:
	ldr	r0, =0x1f96
	b	.Lm949_456
.Lm949_436:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_446
	ldr	r0, =0x2372
	b	.Lm949_456
.Lm949_446:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm949_454
	ldr	r0, =0x21f6
	b	.Lm949_456
.Lm949_454:
	ldr	r0, =0x1fab
.Lm949_456:
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x11
	bl	__ActorMessage_Wait
	mov	r3, r8
	strh	r3, [r7, #6]
	mov	r0, #1
	bl	__WaitFrames
	ldrh	r2, [r6]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r6]
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_20083d0

