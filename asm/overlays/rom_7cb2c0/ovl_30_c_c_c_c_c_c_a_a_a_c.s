	.include "macros.inc"

.thumb_func_start OvlFunc_945_200c254
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r3, #0xd8
	lsl	r3, #1
	mov	r6, #0x80
	mov	r8, r3
	lsl	r6, #8
	mov	r3, r6
	mov	r1, r8
	mov	r2, #0x86
	mov	r0, #0
	bl	OvlFunc_945_200c890
	mov	r0, #1
	bl	OvlFunc_945_200b7d8
	mov	r0, #1
	bl	__WaitFrames
	bl	__MapTransitionIn
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcb
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x98
	bl	__Func_80921c4
	mov	r2, #0x98
	mov	r0, #0
	ldr	r1, =0x1a5
	bl	__Func_80921c4
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0xa
	bl	__Func_8092848
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L42e2
	b	.L4516
.L42e2:
	mov	r0, r5
	mov	r1, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #1
	mov	r5, r0
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092848
	ldr	r0, =0x1ebc
	bl	__MessageID
	ldr	r0, =0xa01b
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #9
	mov	r2, r6
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, r8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r7, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L4350
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r5
	bl	__MapActor_SetPos
.L4350:
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #9
	mov	r2, r6
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xb0
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_SetAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, r5
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_SetAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L43e4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	b	.L4456
.L43e4:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L442c
	mov	r1, #0xd3
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x9a
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xcd
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	mov	r7, #1
	bl	OvlFunc_945_200c880
	b	.L44a2
.L442c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4466
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0x1b
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xac
.L4456:
	bl	__Func_80921c4
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, r5
	bl	OvlFunc_945_200c880
	b	.L44a2
.L4466:
	mov	r1, #0xd3
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x9a
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0x1b
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xcd
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_80921c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	mov	r7, #1
	bl	OvlFunc_945_200c880
.L44a2:
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092848
	ldr	r0, =0x201b
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	cmp	r7, #0
	beq	.L44ec
	mov	r1, #0xd6
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0xa4
	bl	__Func_80921c4
.L44ec:
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xdc
	lsl	r1, #1
	mov	r2, #0x86
	mov	r0, #0x1b
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L4592
.L4516:
	ldr	r0, =0x1eb7
	bl	__MessageID
	ldr	r5, =0xa01b
	ldr	r0, =0xa01b
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0x1b
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r2, #0x28
	mov	r0, #0x1b
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	ldr	r1, =0x105
	mov	r0, #0x1b
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #4
	bl	__Func_8091e9c
.L4592:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c254

	.section .text.after_c5d0, "ax", %progbits

.thumb_func_start OvlFunc_945_200c670
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L46aa
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L46b4
.L46aa:
	mov	r0, #5
	mov	r1, #0xa
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L46b4:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L46f4
	mov	r1, #0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xac
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L46fe
.L46f4:
	mov	r0, #6
	mov	r1, #0xb
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L46fe:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L4734
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #7
	mov	r1, r5
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L473e
.L4734:
	mov	r0, #5
	mov	r1, #0xc
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L473e:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L477e
	mov	r1, #0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r1, #0xeb
	mov	r2, #0xcc
	mov	r5, r0
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, r5
	bl	__MapActor_GetActor
	ldr	r3, =0xffff0000
	mov	r1, r5
	str	r3, [r0, #0x18]
	mov	r2, r6
	mov	r0, #7
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.L4788
.L477e:
	mov	r0, #6
	mov	r1, #0xd
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
.L4788:
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0xe
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #6
	mov	r1, #0xf
	bl	OvlFunc_945_200c8e8
	mov	r2, r6
	mov	r0, #5
	mov	r1, #0x10
	bl	OvlFunc_945_200c8e8
	mov	r0, #6
	mov	r1, #0x11
	mov	r2, r6
	bl	OvlFunc_945_200c8e8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200c670

