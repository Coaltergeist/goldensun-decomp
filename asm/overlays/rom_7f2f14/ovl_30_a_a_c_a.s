	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_8754, "ax", %progbits

.thumb_func_start OvlFunc_968_20087d8
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x109
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	bne	.L886
	bl	__CutsceneStart
	mov	r7, r5
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	add	r7, #0x55
	bl	__Func_80933f8
	strb	r6, [r7]
	mov	r3, #0x12
	ldrsh	r2, [r5, r3]
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	ldr	r3, =0xfff00000
	lsl	r2, #16
	add	r2, r3
	lsl	r1, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xe4
	bl	__PlaySound
	ldr	r3, =OvlFunc_968_20086a0
	mov	r0, #0
	str	r3, [r5, #0x6c]
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r2, #8
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092304
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	mov	r1, #0
	mov	r2, #8
	bl	__Func_8092304
	mov	r3, #3
	strb	r3, [r7]
	str	r6, [r5, #0x6c]
	bl	__Func_809202c
	bl	__CutsceneEnd
.L886:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_20087d8
