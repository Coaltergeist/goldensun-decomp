	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_928_2008968
	push	{r5, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r5, [r0, #8]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #3
	mov	r1, #0x11
	str	r5, [sp]
	bl	__Func_8010704
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_928_2008324
	bl	__StartTask
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_8092b08
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_928_2008968

