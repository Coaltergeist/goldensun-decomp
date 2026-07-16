	.include "macros.inc"
	.include "gba.inc"

	.section .text.before, "ax", %progbits


	.section .text.after_9780, "ax", %progbits

.thumb_func_start OvlFunc_968_2009808
	push	{r5, r6, lr}
	mov	r0, #0
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	neg	r2, r2
	mov	r3, #0
	neg	r1, r1
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc0
	mov	r2, #0xc0
	strh	r3, [r5, #6]
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x8a
	lsl	r2, #2
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	mov	r0, #0
	bl	__Func_8092158
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0x18
	mov	r0, #0
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r3, =0x9999
	ldr	r2, [r5, #0x10]
	str	r3, [r5, #0x48]
	mov	r3, #0x90
	mov	r6, #0
	lsl	r3, #15
	add	r2, r3
	str	r6, [r5, #0x44]
	ldr	r0, [r5, #8]
	mov	r1, #0
	mov	r3, #0xdf
	bl	OvlFunc_968_2008058
	mov	r3, #0x22
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r2, #5
	mov	r3, #1
	mov	r1, #0x23
	mov	r0, #0x22
	bl	__Func_8010704
	mov	r0, #0
	bl	OvlFunc_968_200894c
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0x14
	bl	__Func_8091e9c
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009808
