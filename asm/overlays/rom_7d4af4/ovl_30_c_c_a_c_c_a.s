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
	ldr	r3, .L338	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L356
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2365
	b	.L376

	.align	2, 0
.L338:
	.word	2
	.pool

.L344:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L352
	ldr	r0, =0x21e2
	b	.L376
.L352:
	ldr	r0, =0x1f95
	b	.L376
.L356:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L366
	ldr	r0, =0x2371
	b	.L376
.L366:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L374
	ldr	r0, =0x21f5
	b	.L376
.L374:
	ldr	r0, =0x1faa
.L376:
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x10
	bl	__Func_8093040
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
	ldr	r3, .L418	@ 2
	orr	r3, r2
	mov	r2, #0xbf
	lsl	r2, #1
	strh	r3, [r6]
	add	r3, r5, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L436
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L424
	ldr	r0, =0x2366
	b	.L456

	.align	2, 0
.L418:
	.word	2
	.pool

.L424:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L432
	ldr	r0, =0x21e3
	b	.L456
.L432:
	ldr	r0, =0x1f96
	b	.L456
.L436:
	mov	r0, #0x95
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L446
	ldr	r0, =0x2372
	b	.L456
.L446:
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L454
	ldr	r0, =0x21f6
	b	.L456
.L454:
	ldr	r0, =0x1fab
.L456:
	bl	__MessageID
	mov	r0, #0x11
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r2, #0xa
	mov	r0, #0x11
	bl	__Func_8093040
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

