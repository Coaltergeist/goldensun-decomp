	.include "macros.inc"

.thumb_func_start OvlFunc_930_20090b8
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r5, #0xfd
	mov	r3, r5
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	and	r5, r3
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xe
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_930_2009060
	str	r3, [r0, #0x6c]
	mov	r3, #0x38
	str	r3, [sp]
	mov	r5, #0x12
	mov	r0, #0x37
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x14
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #1
	mov	r1, #0x10
	mov	r0, #0x37
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_8092b08
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_930_20090b8

