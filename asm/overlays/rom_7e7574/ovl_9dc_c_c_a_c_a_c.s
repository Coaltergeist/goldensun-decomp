	.include "macros.inc"

.thumb_func_start OvlFunc_959_200cb84
	push	{lr}
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_80925cc
	ldr	r0, =0x2441
	bl	__Func_8092b94
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cb84

.thumb_func_start OvlFunc_959_200cba4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x2440
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cba4

.thumb_func_start OvlFunc_959_200cbc4
	push	{lr}
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	ldr	r0, =0x243f
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbc4

.thumb_func_start OvlFunc_959_200cbe4
	push	{lr}
	ldr	r0, =0x2459
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x12
	bl	__Func_8093054
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbe4

.thumb_func_start OvlFunc_959_200cbfc
	push	{r5, lr}
	ldr	r0, =0x226
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4c18
	ldr	r0, =0x2434
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	b	.L4cee
.L4c18:
	bl	__CutsceneStart
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	ldr	r0, =0x227
	bl	__GetFlag
	cmp	r0, #0
	bne	.L4c8c
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0x14
	bl	__Func_8092560
	mov	r0, #0x14
	bl	__MapActor_SetIdle
	mov	r0, #0x14
	bl	__MapActor_WaitScript
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =0x242e
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x1e
	lsl	r1, #1
	mov	r0, #0x14
	add	r5, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__ActorMessage
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
.L4c8c:
	ldr	r5, =0x2430
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x101
	mov	r2, #0x28
	mov	r0, #0x14
	bl	__MapActor_Emote
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x14
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L4cd6
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
	ldr	r0, =0x226
	bl	__SetFlag
	b	.L4ce4
.L4cd6:
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x14
	mov	r1, #0
	bl	__Func_8092c40
.L4ce4:
	ldr	r0, =0x227
	bl	__SetFlag
	bl	__Func_8091750
.L4cee:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200cbfc

