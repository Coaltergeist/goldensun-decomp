	.include "macros.inc"

.thumb_func_start OvlFunc_964_2009a10
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009a10

