	.include "macros.inc"

.thumb_func_start OvlFunc_901_200858c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, #6
	ldrsh	r2, [r5, r3]
	mov	r6, r5
	add	r6, #0x64
	ldrh	r3, [r6]
	mov	r8, r2
	ldr	r2, =2
	orr	r2, r3
	strh	r2, [r6]
	bl	__CutsceneStart
	ldr	r7, =0x1cb1
	mov	r0, r7
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L608
	b	.L5e0

	.pool_aligned

.L5e0:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
.L608:
	add	r0, r7, #2
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xe
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
	mov	r3, #1
	strh	r3, [r6]
	ldr	r0, =0x307
	bl	__SetFlag
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_200858c

.thumb_func_start OvlFunc_901_2008640
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x64
	mov	r2, #6
	ldrsh	r1, [r5, r2]
	ldr	r3, =2
	ldrh	r2, [r6]
	orr	r3, r2
	strh	r3, [r6]
	mov	r8, r1
	mov	r1, #0
	mov	r10, r1
	bl	__CutsceneStart
	ldr	r0, =0x1cb4
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xf
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0xf
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r2, r8
	strh	r2, [r5, #6]
	mov	r0, #1
	b	.L69c

	.pool_aligned

.L69c:
	bl	__WaitFrames
	bl	__CutsceneEnd
	mov	r3, r10
	strh	r3, [r6]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_2008640

.thumb_func_start OvlFunc_901_20086b4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1cb5
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #2
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L6ee
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L6ee:
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20086b4

