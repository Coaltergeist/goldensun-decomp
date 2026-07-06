	.include "macros.inc"

.thumb_func_start OvlFunc_945_200d6dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r8, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	bl	OvlFunc_945_200b7b4
	mov	r2, r8
	mov	r1, r6
	mov	r0, #0x13
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #6
	bl	__MapActor_SetAnim
	ldr	r5, =gScript_945__0200e840
	mov	r0, r6
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xb
	bl	__DeleteFieldActor
	mov	r1, r5
	mov	r0, r8
	bl	__MapActor_SetBehavior
	mov	r0, #0xc
	bl	__DeleteFieldActor
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x25
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	bl	OvlFunc_945_200d0e4
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d6dc

