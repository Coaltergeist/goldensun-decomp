	.include "macros.inc"

.thumb_func_start OvlFunc_902_2008204
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #0x12
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092848
	ldr	r0, =0x85b
	bl	__GetFlag
	cmp	r0, #0
	bne	.L22e
	ldr	r0, =0x137c
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
	b	.L23c
.L22e:
	ldr	r0, =0x1385
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__Func_8092c40
.L23c:
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2a8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0
	mov	r0, #0x12
	bl	__ActorMessage
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_8078500
	cmp	r0, #0
	bne	.L290
	mov	r1, #4
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x1384
	bl	__MessageID
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
	b	.L2d4
.L290:
	mov	r0, #0xe7
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r0, #0xe7
	mov	r1, #0
	bl	__Func_8091a58
	ldr	r0, =0x85b
	bl	__SetFlag
	b	.L2d4
.L2a8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x12
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x12
	mov	r1, #0
	bl	__ActorMessage
.L2d4:
	mov	r1, #0x80
	mov	r0, #0x12
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008204

.thumb_func_start OvlFunc_902_20082fc
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	bl	__CutsceneEnd
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	bl	OvlFunc_902_200811c
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_20082fc

