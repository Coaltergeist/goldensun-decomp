	.include "macros.inc"

.thumb_func_start OvlFunc_936_20082e8
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xfffff000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #23
	cmp	r3, r2
	bls	.L364
	bl	__CutsceneStart
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x2584
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L340
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L360
.L340:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, #8
	mov	r1, #3
	strh	r3, [r2]
	bl	__MapActor_DoAnim
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
.L360:
	bl	__CutsceneEnd
.L364:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20082e8

