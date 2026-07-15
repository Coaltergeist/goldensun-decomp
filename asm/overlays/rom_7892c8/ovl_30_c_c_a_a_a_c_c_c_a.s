.include "macros.inc"
.include "gba.inc"


	.section .text.after_a6f0, "ax", %progbits

	.section .text.after_a750, "ax", %progbits

.thumb_func_start OvlFunc_888_200a7d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	sub	sp, #0x14
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #0x19
	mov	r3, #5
	mov	r0, #2
	bl	__CreateUIBox
	ldr	r5, =0x116e
	mov	r7, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0
	bl	__DrawSmallText
	mov	r0, #1
	bl	__Func_801f730
	cmp	r0, #0
	bne	.L2870
	add	r0, r5, #2
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
	b	.L287c
.L2870:
	add	r0, r5, #1
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
.L287c:
	add	r1, sp, #4
	add	r0, sp, #8
	bl	__Func_801c0dc
	mov	r2, #0x3c
	add	r0, sp, #8
	mov	r1, #0x48
	bl	__Func_801c154
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	bne	.L28dc
	ldr	r2, =.L411c
	mov	r6, #1
	mov	r8, r2
.L28a2:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0xc0
	and	r3, r2
	cmp	r3, #0
	beq	.L28b0
	eor	r5, r6
.L28b0:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #1
	and	r3, r2
	lsl	r3, #2
	mov	r2, r8
	ldr	r1, [r2, r3]
	lsl	r2, r5, #4
	add	r0, sp, #8
	add	r1, #0x18
	add	r2, #0x3c
	bl	__Func_801c154
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	and	r3, r6
	cmp	r3, #0
	beq	.L28a2
.L28dc:
	ldr	r0, [sp, #4]
	bl	__Func_801c17c
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r5
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_200a7d4

.thumb_func_start OvlFunc_888_200a90c
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	lsl	r2, #8
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0
	mov	r8, r2
	strb	r3, [r0]
	mov	r1, #0xb8
	mov	r2, #0xa8
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	and	r5, r3
	mov	r2, #0xa8
	mov	r1, #0xc8
	strb	r5, [r0]
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r3, r5
	strb	r3, [r0]
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	mov	r1, #2
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x19
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #5
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb8
	mov	r2, #0xd8
	mov	r3, #0xa8
	lsl	r3, #16
	lsl	r1, #16
	lsl	r2, #13
	mov	r0, #0xde
	bl	OvlFunc_888_200b098
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, #1
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_888_2008030
	str	r5, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r6, [r0]
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r1, #0xc4
	str	r5, [r0, #0x6c]
	mov	r2, #0xb4
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb8
	mov	r2, #0xb8
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0xb4
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xa8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xb4
	mov	r2, #0x9c
	bl	__Func_80921c4
	mov	r0, #1
	mov	r1, #0xc8
	mov	r2, #0x68
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, r8
	str	r3, [r0, #0x6c]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r8
	str	r2, [r0, #0x6c]
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #8
	mov	r1, #0
	bl	__MapActor_SetAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xf
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0xd0
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r1, =ActorCmd_ARRAY_888__0200b740
	mov	r0, #0
	bl	__MapActor_SetBehavior
	ldr	r1, =gScript_888__0200b81c
	mov	r0, #1
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #1
	bl	__MapActor_WaitScript
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #9
	mov	r2, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xc0
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r1, #0xd0
	mov	r2, #0xa8
	mov	r0, #1
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0xb
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0xc
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #1
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	b	.L308c

	.pool_aligned

.L308c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a90c

	.section .text.after_b144, "ax", %progbits

.thumb_func_start OvlFunc_888_200b1b8
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	__MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L3264
	bl	__Random
	mov	r1, #0x14
	bl	_umodsi3_RAM
	ldr	r5, [r6, #8]
	ldr	r2, =0xfff60000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Random
	mov	r3, #0xf
	and	r3, r0
	ldr	r2, [r6, #0xc]
	lsl	r3, #16
	add	r2, r3
	ldr	r3, =0xfff80000
	mov	r0, #0x8f
	add	r2, r3
	lsl	r0, #1
	ldr	r3, [r6, #0x10]
	mov	r1, r5
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.L3264
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	ldr	r5, [r7, #0x50]
	strb	r3, [r2]
	bl	__Random
	mov	r1, #0xa
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x64
	ldr	r2, .L3254	@ 0
	add	r0, #5
	strh	r0, [r3]
	mov	r8, r2
	bl	__Random
	mov	r1, #0x3c
	bl	_umodsi3_RAM
	mov	r3, r7
	add	r3, #0x66
	add	r0, #0x1e
	strh	r0, [r3]
	ldr	r3, =OvlFunc_888_200b144
	str	r3, [r7, #0x6c]
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r5, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r5, #9]
	b	.L3264

	.align	2, 0
.L3254:
	.word	0
	.pool

.L3264:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b1b8
