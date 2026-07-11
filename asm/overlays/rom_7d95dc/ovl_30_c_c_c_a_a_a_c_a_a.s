	.include "macros.inc"

.thumb_func_start OvlFunc_953_200839c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43a
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3c0
	ldr	r0, =0x225e
	bl	__MessageID
	b	.L430
.L3c0:
	ldr	r0, =0x225a
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L430
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	ldrh	r2, [r3]
	mov	r1, #0x80
	add	r2, #1
	strh	r2, [r3]
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, #0x10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L418
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L418:
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xf0
	lsl	r0, #2
	bl	__SetFlag
	b	.L448
.L430:
	mov	r0, #0x10
	mov	r1, #0
	bl	__ActorMessage
	b	.L448
.L43a:
	ldr	r0, =0x205e
	bl	__MessageID
	mov	r0, #0x10
	mov	r1, #0
	bl	__Func_8093054
.L448:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_200839c

.thumb_func_start OvlFunc_953_2008468
	push	{r5, lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0xd
	bl	__MapActor_SetIdle
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0xd
	bl	__Func_8092848
	ldr	r0, =0x2114
	bl	__MessageID
	mov	r0, #0xd
	bl	OvlFunc_953_2009c48
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, r5
	mov	r3, #0xb4
	add	r2, #0x64
	lsl	r3, #2
	strh	r3, [r2]
	add	r5, #0x66
	mov	r3, #0x70
	strh	r3, [r5]
	mov	r0, #0xd
	mov	r1, #2
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2008468

