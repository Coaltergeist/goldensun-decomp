.include "macros.inc"

.thumb_func_start OvlFunc_883_20092bc
	push	{r5, r6, lr}
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #5
	mov	r2, #0
	bl	__MapActor_Jump
	add	r5, #0x5a
	mov	r0, #0
	mov	r1, #0xd7
	ldr	r2, =0x193
	bl	__Func_809218c
	ldrb	r3, [r5]
	mov	r6, #1
	orr	r3, r6
	mov	r1, #0xa6
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #16
	ldr	r2, =0x1770000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	ldrb	r3, [r5]
	mov	r1, #0xa0
	eor	r3, r6
	mov	r2, #0xa0
	strb	r3, [r5]
	mov	r0, #0x16
	lsl	r1, #10
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r2, =0x18b
	mov	r0, #0x16
	mov	r1, #0xca
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x16
	lsl	r1, #6
	mov	r2, #0x18
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	mov	r0, #0x16
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_883__0200f59c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0x16
	ldr	r1, =0x103
	bl	__MapActor_Emote
	ldr	r1, =gScript_883__0200f5ec
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r2, #0xed
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x16
	bl	__MapActor_WaitScript
	mov	r1, #0x80
	mov	r2, #0xe4
	lsl	r2, #1
	mov	r0, #0x16
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0x16
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_809259c
	mov	r0, #0x14
	bl	__CutsceneWait
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
	ldr	r0, =0x823
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_883_20092bc
