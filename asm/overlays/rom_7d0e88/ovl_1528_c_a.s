	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a0f0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r3, =OvlFunc_947_200a0b8
	ldr	r2, [r5, #8]
	str	r3, [r5, #0x6c]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, #1
	mov	r1, #0xe
	mov	r0, #0x14
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, =0x1f5
	add	r0, r6, r3
	bl	__SetFlag
	ldr	r1, =OvlData_947_200ad64
	mov	r0, r6
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a0f0

