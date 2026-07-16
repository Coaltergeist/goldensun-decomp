	.include "macros.inc"

.thumb_func_start OvlFunc_945_200d7ec
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r5, #1
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	neg	r5, r5
	mov	r0, #0xdb
	mov	r2, #0xae
	ldr	r3, =0x1000001
	mov	r1, r5
	lsl	r0, #17
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r2, #0x14
	mov	r0, #8
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	ldr	r2, =0xe666
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r2, =0xe666
	mov	r1, r5
	mov	r0, r5
	bl	__Func_8012330
	mov	r0, #0x3f
	bl	__PlaySound
	mov	r0, #0x8d
	lsl	r0, #1
	bl	__SetFlag
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	mov	r5, #0xc0
	bl	__MapActor_Surprise
	lsl	r5, #7
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	ldr	r0, =0x1ec1
	bl	__MessageID
	mov	r1, #0
	mov	r2, #0x28
	mov	r0, #3
	bl	__Func_8093040
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #2
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #0x80
	lsl	r1, #6
	mov	r0, #2
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #2
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xd7
	mov	r2, #0x86
	mov	r0, #0x1b
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #0x1b
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r6
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r8
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0x81
	mov	r0, r6
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xd
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, r6
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, r10
	mov	r0, #0xc
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xd0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #3
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0x1b
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #0x1b
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0xdc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x86
	mov	r5, #0x80
	bl	__Func_80921c4
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #1
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #1
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #3
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #1
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #2
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_945__0200e818
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	ldr	r0, =0x302
	bl	__SetFlag
	ldr	r2, =.L7f84
	mov	r3, #0
	mov	r1, #0xc8
	str	r3, [r2]
	lsl	r1, #4
	ldr	r0, =OvlFunc_945_200dc48
	bl	__StartTask
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x1b
	bl	__DeleteFieldActor
	ldr	r0, =0x12f
	bl	__ClearFlag
	ldr	r0, =0x927
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200d7ec

	.section .text.after_dc48, "ax", %progbits

	.section .text.after_dca4, "ax", %progbits

.thumb_func_start OvlFunc_945_200dd10
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r10, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r7, r0
	bl	__CutsceneStart
	bl	OvlFunc_945_200b7b4
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r2, #0x98
	mov	r0, #8
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r1, #0xdc
	mov	r2, #0x86
	lsl	r2, #16
	mov	r0, #0x1b
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x10
	bl	OvlFunc_945_200c670
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0xdb
	mov	r1, #1
	mov	r2, #0xae
	ldr	r3, =0x1000001
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #16
	bl	OvlFunc_945_200c8ac
	mov	r2, #0x14
	mov	r0, #8
	mov	r1, #1
	bl	OvlFunc_945_200c8e8
	mov	r1, #0
	mov	r0, #0x1b
	bl	__Func_8092950
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1b
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x8e
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x1b
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1b
	bl	__Func_809259c
	ldr	r0, =0x1f29
	bl	__MessageID
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, r5
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r8
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, r7
	mov	r2, #1
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xd0
	mov	r0, r5
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x3c
	bl	__Func_8092adc
	ldr	r0, =0x934
	mov	r6, #0
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e88
	mov	r6, #2
	b	.L5e9e
.L5e88:
	ldr	r0, =0x933
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5e9c
	ldr	r0, =0x92f
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e9e
.L5e9c:
	mov	r6, #1
.L5e9e:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	cmp	r6, #1
	bne	.L5eba
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5ecc
.L5eba:
	cmp	r6, #2
	bne	.L5ece
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
.L5ecc:
	strh	r3, [r2]
.L5ece:
	mov	r1, #2
	mov	r0, r5
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r0, =0x1f2d
	bl	__MessageID
	mov	r1, #4
	mov	r0, #0x1b
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r0, r10
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, r7
	bl	__MapActor_Emote
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	bl	__DeleteFieldActor
	mov	r0, #0x28
	bl	__CutsceneWait
	cmp	r6, #0
	bne	.L5f78
	ldr	r0, =0x92c
	bl	__GetFlag
	cmp	r0, #0
	bne	.L5f62
	ldr	r0, =0x92d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5f64
.L5f62:
	mov	r6, #3
.L5f64:
	cmp	r6, #0
	bne	.L5f78
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.L5f9e
.L5f78:
	cmp	r6, #1
	bne	.L5f8c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	b	.L5f9e
.L5f8c:
	cmp	r6, #2
	bne	.L5fa0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
.L5f9e:
	strh	r3, [r2]
.L5fa0:
	mov	r0, r5
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r2, #8
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r6, =gScript_945__0200e904
	mov	r0, r5
	mov	r1, r6
	bl	__MapActor_RunScript
	mov	r1, #0xa0
	mov	r0, r8
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r10
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r7
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, r7
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, r7
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r6
	mov	r0, r10
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r5, =gScript_945__0200e938
	mov	r0, r8
	mov	r1, r5
	bl	__MapActor_RunScript
	mov	r0, r8
	mov	r1, r6
	bl	__MapActor_SetBehavior
	mov	r0, r7
	mov	r1, r5
	bl	__MapActor_RunScript
	mov	r0, r7
	mov	r1, r6
	bl	__MapActor_RunScript
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r2, #8
	mov	r0, #3
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_945__0200e7c8
	mov	r0, #1
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #2
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #3
	bl	__MapActor_RunScript
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x927
	bl	__ClearFlag
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__SetFlag
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200dd10

.thumb_func_start OvlFunc_945_200e110
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #0
	mov	r0, #0
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r8, r0
	mov	r0, #1
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r6, r0
	mov	r0, #2
	bl	OvlFunc_945_200cfa8
	mov	r1, #0
	mov	r5, r0
	mov	r0, #3
	bl	OvlFunc_945_200cfa8
	mov	r10, r0
	bl	__CutsceneStart
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xec
	mov	r3, #0xa0
	lsl	r1, #1
	lsl	r3, #7
	mov	r0, #8
	mov	r2, #0x90
	bl	OvlFunc_945_200c890
	mov	r3, #0xcc
	lsl	r3, #1
	mov	r9, r3
	mov	r3, #0xc0
	mov	r1, r9
	mov	r0, #0x1b
	lsl	r3, #6
	mov	r2, #0x8e
	bl	OvlFunc_945_200c890
	ldr	r3, =iwram_3001ebc
	mov	r7, #0xe0
	ldr	r2, [r3]
	mov	r11, r3
	ldr	r3, =0x201
	lsl	r7, #1
	str	r3, [r2, r7]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	ldr	r0, =0x1f78
	bl	__MessageID
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r6
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r10
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r6
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xeb
	mov	r0, r8
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r0, r6
	lsl	r1, #1
	mov	r2, #0xac
	bl	__Func_809218c
	mov	r1, #0xeb
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0xcc
	bl	__Func_809218c
	mov	r1, #0xcd
	mov	r2, #0xcc
	mov	r0, r10
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, r8
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xd0
	mov	r0, r6
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r0, r8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x1b
	bl	__Func_80925cc
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r10
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	bl	OvlFunc_945_200c86c
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r6
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r5, #0x80
	mov	r0, r10
	mov	r1, #3
	bl	__MapActor_DoAnim
	lsl	r5, #8
	mov	r2, #0
	mov	r0, #0x1b
	mov	r1, #0
	bl	__Func_8092adc
	mov	r1, r5
	mov	r0, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1b
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, #0x1b
	lsl	r1, #9
	bl	__MapActor_SetSpeed
	mov	r1, r9
	mov	r0, #0x1b
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__Func_80921c4
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, r11
	ldr	r2, [r3]
	ldr	r3, =0x202
	str	r3, [r2, r7]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	ldr	r0, =0x92c
	ldr	r1, =0x935
	bl	OvlFunc_945_200e3ac
	mov	r1, #0x99
	lsl	r1, #4
	ldr	r0, =0x917
	bl	OvlFunc_945_200e3ac
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__ClearFlag
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e110


	.section .data
	.global gScript_945__0200e6a8
	.global gScript_883__0200e6e4
	.global gScript_945__0200e6e4
	.global gScript_945__0200e738
	.global gScript_945__0200e840
	.global gScript_945__0200e8e4
	.global gScript_945__0200e958
	.global .L6968
	.global .L72a0
	.global .L7300
	.global .L7360
	.global .L73c0
	.global .L7f84
	.global .L6668
	.global .L6be0
	.global .L6bf8
	.global .L6c58
	.global .L6d48
	.global .L6d78
	.global .L6da8
	.global .L6eb0
	.global .L6fe8
	.global .L7420
	.global .L7444
	.global .L7570
	.global .L76fc
	.global .L781c
	.global .L7930
	.global .L7984
	.global .L79c0
	.global .L7b58
	.global .L7d44
	.global .L7edc
	.global gOvlData_945__0200f420
	.global gOvlData_945__0200f444
	.global gOvlData_945__0200f570
	.global gOvlData_945__0200f6fc
	.global gOvlData_945__0200f81c
	.global gOvlData_945__0200f930
	.global gOvlData_945__0200f984
	.global gOvlData_945__0200f9c0
	.global gOvlData_945__0200fb58
	.global gOvlData_945__0200fd44
	.global gOvlData_945__0200fedc
	.global .L696c
	.global .L6984

.L6668:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6668, (0x66a8-0x6668)
gScript_945__0200e6a8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66a8, (0x66e4-0x66a8)
gScript_883__0200e6e4:
gScript_945__0200e6e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66e4, (0x6738-0x66e4)
gScript_945__0200e738:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6738, (0x67c8-0x6738)
	.global gScript_945__0200e7c8
gScript_945__0200e7c8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67c8, (0x67f0-0x67c8)
	.global gScript_945__0200e7f0
gScript_945__0200e7f0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67f0, (0x6818-0x67f0)
	.global gScript_945__0200e818
gScript_945__0200e818:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6818, (0x6840-0x6818)
gScript_945__0200e840:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6840, (0x68e4-0x6840)
gScript_945__0200e8e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x68e4, (0x6904-0x68e4)
	.global gScript_945__0200e904
gScript_945__0200e904:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6904, (0x6938-0x6904)
	.global gScript_945__0200e938
gScript_945__0200e938:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6938, (0x6958-0x6938)
gScript_945__0200e958:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6958, (0x6968-0x6958)
.L6968:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6968, (0x696c-0x6968)
.L696c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x696c, (0x6984-0x696c)
.L6984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6984, (0x6b94-0x6984)
	.global gOvl_0200eb94
gOvl_0200eb94:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6b94, (0x6be0-0x6b94)
.L6be0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6be0, (0x6bf8-0x6be0)
.L6bf8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6bf8, (0x6c58-0x6bf8)
.L6c58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6c58, (0x6d48-0x6c58)
.L6d48:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d48, (0x6d78-0x6d48)
.L6d78:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d78, (0x6da8-0x6d78)
.L6da8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6da8, (0x6eb0-0x6da8)
.L6eb0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6eb0, (0x6fe8-0x6eb0)
.L6fe8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6fe8, (0x72a0-0x6fe8)
.L72a0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x72a0, (0x7300-0x72a0)
.L7300:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7300, (0x7360-0x7300)
.L7360:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7360, (0x73c0-0x7360)
.L73c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x73c0, (0x7420-0x73c0)
.L7420:
gOvlData_945__0200f420:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7420, (0x7444-0x7420)
.L7444:
gOvlData_945__0200f444:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7444, (0x7570-0x7444)
.L7570:
gOvlData_945__0200f570:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7570, (0x76fc-0x7570)
.L76fc:
gOvlData_945__0200f6fc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x76fc, (0x781c-0x76fc)
.L781c:
gOvlData_945__0200f81c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x781c, (0x7930-0x781c)
.L7930:
gOvlData_945__0200f930:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7930, (0x7984-0x7930)
.L7984:
gOvlData_945__0200f984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7984, (0x79c0-0x7984)
.L79c0:
gOvlData_945__0200f9c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x79c0, (0x7b58-0x79c0)
.L7b58:
gOvlData_945__0200fb58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7b58, (0x7d44-0x7b58)
.L7d44:
gOvlData_945__0200fd44:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7d44, (0x7edc-0x7d44)
.L7edc:
gOvlData_945__0200fedc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7edc, (0x7f84-0x7edc)
.L7f84:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7f84
