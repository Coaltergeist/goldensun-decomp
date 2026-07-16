	.include "macros.inc"

	.section .text.after_b7d8, "ax", %progbits

.thumb_func_start OvlFunc_945_200b8ac
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xa8
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	ldr	r3, =0x1000001
	bl	OvlFunc_945_200c8ac
	mov	r2, #0xdc
	lsl	r2, #1
	mov	r8, r2
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r0, #0x1b
	mov	r1, r8
	mov	r2, #0xa4
	mov	r9, r3
	bl	OvlFunc_945_200c890
	mov	r2, #0xd0
	lsl	r2, #8
	mov	r10, r2
	mov	r1, #0xd6
	lsl	r1, #1
	mov	r0, #8
	mov	r2, #0xbe
	mov	r3, r10
	mov	r7, #0xb0
	bl	OvlFunc_945_200c890
	lsl	r7, #8
	mov	r1, #0xe2
	mov	r2, #0xbe
	mov	r3, r7
	lsl	r1, #1
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r0, #9
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r3, #0x80
	lsl	r3, #8
	mov	r0, #0
	mov	r1, r8
	mov	r2, #0x86
	mov	r11, r3
	bl	OvlFunc_945_200c890
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	mov	r6, #0x80
	add	r3, r2
	lsl	r6, #1
	str	r6, [r3]
	bl	__MapTransitionIn
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0xd4
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1e27
	bl	__MessageID
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1b
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L39d2
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L39d2:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, r8
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3a06
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L3a06:
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xe4
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L3a3c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L3a3c:
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xec
	mov	r0, #3
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0x14
	mov	r5, #0x80
	bl	__Func_8092adc
	lsl	r5, #7
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x3c
	bl	OvlFunc_945_200c8e8
	mov	r1, r5
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r1, r9
	mov	r2, #0x14
	mov	r0, #0x1b
	bl	__Func_8092adc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, r6
	mov	r2, #0x28
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #1
	mov	r1, #3
	bl	__Func_809259c
	mov	r2, #0x3c
	mov	r0, #1
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x28
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0x14
	mov	r1, r5
	mov	r0, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #4
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #9
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r1, r6
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r1, r7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0x3c
	bl	__Func_8093040
	mov	r1, #0x83
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, r7
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r2, #0x50
	mov	r0, #3
	mov	r1, #2
	bl	OvlFunc_945_200c8e8
	mov	r1, r10
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, r9
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1b
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x9e
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x94
	bl	__Func_80921c4
	mov	r2, #0x14
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, r11
	mov	r0, #1
	mov	r2, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	bl	__Func_80921c4
	mov	r1, r8
	mov	r2, #0x86
	mov	r0, #0x1b
	bl	__Func_809218c
	mov	r0, #0x28
	bl	__CutsceneWait
	b	.L3cec

	.pool_aligned

.L3cec:
	mov	r0, #9
	mov	r1, #0xa
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x926
	bl	__SetFlag
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b8ac

.thumb_func_start OvlFunc_945_200bd10
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r2, #1
	mov	r0, #0xf
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xea
	mov	r0, #8
	lsl	r1, #1
	ldr	r2, =0x266
	bl	__Func_80921c4
	mov	r1, #0xec
	mov	r2, #0x95
	mov	r0, #8
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_Jump
	bl	OvlFunc_945_200c5d0
	mov	r5, r0
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xd6
	bl	__PlaySound
	ldr	r1, =gScript_945__0200e738
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xe9
	mov	r2, #0x9c
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1e3b
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #9
	mov	r1, #0xb
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bd10

.section .text.after_be34, "ax", %progbits

	.section .text.after_beec, "ax", %progbits

.thumb_func_start OvlFunc_945_200bf94
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x11
	bl	OvlFunc_945_200c8e8
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x6666
	ldr	r1, =0xccc
	bl	__Func_80933d4
	mov	r0, #0xdc
	mov	r1, #1
	mov	r2, #0xb0
	lsl	r2, #16
	mov	r3, #1
	neg	r1, r1
	lsl	r0, #17
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #7
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	bl	OvlFunc_945_200c670
	mov	r0, #0x5a
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x43
	str	r2, [r3]
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L408a
	mov	r0, #0x14
	bl	__Func_8091e9c
	b	.L40c6
.L408a:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L409c
	mov	r0, #0x12
	bl	__Func_8091e9c
	b	.L40c6
.L409c:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L40ae
	mov	r0, #0x11
	bl	__Func_8091e9c
	b	.L40c6
.L40ae:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L40c0
	mov	r0, #0x10
	bl	__Func_8091e9c
	b	.L40c6
.L40c0:
	mov	r0, #0xd
	bl	__Func_8091e9c
.L40c6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200bf94
