	.include "macros.inc"

.thumb_func_start OvlFunc_901_20088a8
	push	{r5, lr}
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L93a
	bl	__CutsceneStart
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r1, #1
	mov	r0, #0x10
	bl	__MapActor_SetAnim
	mov	r1, #1
	mov	r0, #0x10
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
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
	beq	.L912
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L912:
	mov	r1, #0
	mov	r0, #0x10
	bl	__ActorMessage
	mov	r0, #0x10
	bl	__MapActor_GetActor
	add	r0, #0x5b
	strb	r5, [r0]
	mov	r1, #2
	mov	r0, #0x10
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	mov	r0, #0xc2
	lsl	r0, #2
	bl	__SetFlag
	b	.L95e
.L93a:
	ldr	r0, =0x1cc2
	bl	__MessageID
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x5b
	strb	r3, [r0]
	mov	r0, #0x10
	bl	OvlFunc_901_20084b4
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x5b
	strb	r5, [r0]
.L95e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_901_20088a8
