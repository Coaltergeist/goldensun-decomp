	.include "macros.inc"

.thumb_func_start OvlFunc_898_200890c
	push	{r5, lr}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r2, #2
	mov	r1, #0
	bl	OvlFunc_898_200973c
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200890c

.thumb_func_start OvlFunc_898_2008938
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r3, #0
	mov	r5, r0
	add	r5, #0x5b
	mov	r8, r3
	mov	r3, #1
	strb	r3, [r5]
	bl	__CutsceneStart
	mov	r0, r6
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	mov	r3, r8
	strb	r3, [r5]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2008938

.thumb_func_start OvlFunc_898_200897c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1330
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #2
	bl	OvlFunc_898_200973c
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	beq	.L9b6
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L9b6:
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_200897c

