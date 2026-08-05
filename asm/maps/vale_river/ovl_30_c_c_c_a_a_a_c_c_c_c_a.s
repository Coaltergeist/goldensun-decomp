	.include "macros.inc"

.thumb_func_start OvlFunc_883_2009490
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r5, r0
	mov	r0, #0x16
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r6, r0
	bl	__CutsceneStart
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r5
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x16
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, r8
	mov	r0, #0x16
	bl	__MapActor_RunScript
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r5, #0x80
	mov	r0, #0x14
	bl	__CutsceneWait
	lsl	r5, #9
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	str	r5, [r6, #0x18]
	str	r5, [r6, #0x1c]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	str	r5, [r0, #0x1c]
	ldr	r0, =0xfce
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0x16
	bl	__Func_8093054
	mov	r0, #0x16
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_883_200d72c
	ldr	r1, =gScript_883__0200e248
	str	r3, [r0, #0x6c]
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_2009490

