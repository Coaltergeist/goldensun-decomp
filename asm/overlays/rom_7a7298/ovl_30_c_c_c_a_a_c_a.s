	.include "macros.inc"

	.section .text.after_82b8, "ax", %progbits

.thumb_func_start OvlFunc_921_2008384
	push	{lr}
	ldr	r0, =0x881
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3b8
	bl	__CutsceneStart
	mov	r1, #0
	mov	r2, #0
	mov	r0, #9
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r0, =0x1644
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__CutsceneEnd
	b	.L4d6
.L3b8:
	ldr	r0, =0x82b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3fe
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #7
	bl	__MapActor_SetAnim
	mov	r2, #0x45
	mov	r1, #0xa
	ldr	r0, =.L31c0
	bl	__Func_8010560
	ldr	r0, =0x156c
	bl	__MessageID
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #9
	mov	r1, #8
	bl	__MapActor_SetAnim
	ldr	r0, =.L31d6
	mov	r1, #0xa
	mov	r2, #0x45
	bl	__Func_8010560
	bl	__CutsceneEnd
	b	.L4d6
.L3fe:
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xa
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_921__0200a4f4
	mov	r0, #9
	bl	__MapActor_SetBehavior
	ldr	r0, =0x1534
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	mov	r0, #8
	bl	__MapActor_SetIdle
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0xd0
	mov	r2, #0xa
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093040
	ldr	r1, =gScript_921__0200a564
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r2, =0xcccc
	mov	r0, #8
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r1, =.L2508
	mov	r0, #8
	bl	__MapActor_RunScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #8
	mov	r1, #2
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8093040
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #8
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0
	mov	r0, #8
	bl	__ActorMessage
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r2, #2
	eor	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x82c
	bl	__SetFlag
	bl	__CutsceneEnd
.L4d6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_921_2008384

