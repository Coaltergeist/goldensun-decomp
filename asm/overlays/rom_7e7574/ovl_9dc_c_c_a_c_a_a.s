	.include "macros.inc"

.thumb_func_start OvlFunc_959_200c9a0
	push	{r5, lr}
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	bne	.L49ae
	b	.L4b2e
.L49ae:
	ldr	r0, =0x94e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L49ba
	b	.L4b1e
.L49ba:
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L49c8
	b	.L4b1e
.L49c8:
	ldr	r5, =0x2561
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x18
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__Func_8092064
	mov	r1, #4
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__MapActor_WaitMovement
	mov	r1, #3
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x18
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__Func_8092064
	mov	r1, #6
	mov	r0, #0x18
	neg	r1, r1
	mov	r2, #0
	bl	__Func_809228c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x18
	bl	__Func_809280c
	mov	r0, #0x18
	bl	__MapActor_WaitMovement
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0x18
	mov	r0, #0x19
	bl	__Func_809280c
	add	r0, r5, #2
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x18
	bl	__ActorMessage
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x19
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x19
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__Func_8092064
	mov	r1, #0xdc
	lsl	r1, #2
	mov	r2, #0x70
	mov	r0, #0x19
	bl	__Func_809218c
	mov	r0, #0x19
	bl	__MapActor_WaitMovement
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0x19
	bl	__Func_8092adc
	add	r0, r5, #3
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0x18
	bl	__Func_809228c
	mov	r0, #0x18
	bl	__MapActor_WaitMovement
	add	r5, #4
	mov	r1, #5
	mov	r0, #0x18
	bl	__MapActor_SetAnim
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xe0
	lsl	r1, #2
	mov	r2, #0x78
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0x19
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0x19
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xc5
	lsl	r0, #2
	bl	__SetFlag
	b	.L4b3c
.L4b1e:
	ldr	r0, =0x2567
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
	b	.L4b3c
.L4b2e:
	ldr	r0, =0x244d
	bl	__Func_8092b94
	mov	r0, #0x18
	mov	r1, #0
	bl	__ActorMessage
.L4b3c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_200c9a0

