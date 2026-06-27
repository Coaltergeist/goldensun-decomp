	.include "macros.inc"

.thumb_func_start OvlFunc_898_20087b8
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1235
	bl	__MessageID
	mov	r0, #0x13
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #2
	mov	r0, #0x13
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, #0x13
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20087b8

.thumb_func_start OvlFunc_898_20087ec
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__CutsceneStart
	ldr	r0, =0x122c
	bl	__MessageID
	mov	r0, #0xe
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #2
	mov	r0, #0xe
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xe
	bl	OvlFunc_898_2009724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
	b	.L848

	.pool_aligned

.L848:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_20087ec

.thumb_func_start OvlFunc_898_200885c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r3, #6
	ldrsh	r2, [r6, r3]
	mov	r5, r6
	add	r5, #0x64
	mov	r8, r2
	ldr	r3, =2
	ldrh	r2, [r5]
	orr	r3, r2
	strh	r3, [r5]
	bl	__CutsceneStart
	ldr	r0, =0x122d
	bl	__MessageID
	mov	r0, #0xf
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r2, #2
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r1, #0xa
	mov	r0, #0xf
	bl	OvlFunc_898_2009724
	mov	r2, r8
	strh	r2, [r6, #6]
	mov	r0, #1
	bl	__WaitFrames
	bl	__CutsceneEnd
	b	.L8b8

	.pool_aligned

.L8b8:
	ldrh	r2, [r5]
	mov	r3, #1
	and	r3, r2
	strh	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200885c

