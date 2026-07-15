	.include "macros.inc"


	.section .text.after_9804, "ax", %progbits

.thumb_func_start OvlFunc_945_2009894
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.L18d0
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18c8
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L18c8
	mov	r0, #0x11
	bl	__UI_Sanctum
	b	.L194e
.L18c8:
	mov	r0, #0xf
	bl	__UI_Sanctum
	b	.L194e
.L18d0:
	bl	__CutsceneStart
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18e6
	ldr	r0, =0x1f81
	bl	__MessageID
	b	.L1924
.L18e6:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18fa
	ldr	r0, =0x1f48
	bl	__MessageID
	b	.L1924
.L18fa:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L190c
	ldr	r0, =0x1f7f
	bl	__MessageID
	b	.L1924
.L190c:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L191e
	ldr	r0, =0x1f7d
	bl	__MessageID
	b	.L1924
.L191e:
	ldr	r0, =0x1f7b
	bl	__MessageID
.L1924:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1942
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1942
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	b	.L194a
.L1942:
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
.L194a:
	bl	__CutsceneEnd
.L194e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009894

.thumb_func_start OvlFunc_945_2009978
	push	{lr}
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	mov	r0, #0x8f
	lsl	r0, #4
	bl	__ClearFlag
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	bne	.L19b0
	ldr	r0, =0x6f
	mov	r1, #0x10
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #0
	bl	__Func_8091eb0
	b	.L19e6
.L19b0:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	bne	.L19cc
	ldr	r0, =0x6f
	mov	r1, #0x12
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #1
	bl	__Func_8091eb0
	b	.L19e6
.L19cc:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	bne	.L19e6
	ldr	r0, =0x6f
	mov	r1, #0x14
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #2
	bl	__Func_8091eb0
.L19e6:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009978

	.section .text.after_9a08, "ax", %progbits

.thumb_func_start OvlFunc_945_2009a60
	push	{lr}
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b16
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xe0
	mov	r1, #1
	ldr	r3, =0x10000028
	ldr	r2, =0x27e0000
	neg	r1, r1
	lsl	r0, #17
	bl	OvlFunc_945_200c8ac
	ldr	r0, =0x1d26
	bl	__MessageID
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xb0
	lsl	r1, #8
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0x92
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.L1b16:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009a60

.thumb_func_start OvlFunc_945_2009b34
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1b4e
	b	.L1eea
.L1b4e:
	bl	__CutsceneStart
	bl	__Func_808e118
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xe8
	lsl	r2, #17
	ldr	r3, =0x10000014
	ldr	r0, =0x5b70000
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	ldr	r0, =0x1d56
	bl	__MessageID
	ldr	r3, =0x200d
	mov	r8, r3
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x81
	ldr	r6, =0x800c
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0xa00e
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0x28
	ldr	r5, =0xa00e
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r9, r3
	mov	r1, r9
	mov	r0, #0xe
	bl	OvlFunc_945_200c880
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r2, #0x1e
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, r8
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #4
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0x80
	lsl	r3, #8
	mov	r11, r3
	mov	r0, #0xe
	mov	r1, r11
	bl	OvlFunc_945_200c880
	mov	r0, #0xe
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0x50
	bl	__MapActor_Emote
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xe
	ldr	r1, =0x103
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xe
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xe
	mov	r1, r9
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xe
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r10
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #7
	mov	r0, #0xe
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xe
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xe
	mov	r1, r9
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xe
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r2, =0xcccc
	mov	r0, #0xd
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_945__0200e6a8
	mov	r0, #0xe
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r2, #0x82
	strb	r3, [r0]
	mov	r1, #0xb8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_80921c4
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, r11
	mov	r0, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #4
	mov	r2, #0x14
	bl	__MapActor_Jump
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, #0xc
	bl	OvlFunc_945_200c86c
	ldr	r2, =0xcccc
	mov	r0, #0xc
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	bl	__MapActor_WaitScript
	ldr	r0, =0x922
	bl	__SetFlag
	bl	__CutsceneEnd
.L1eea:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009b34

.thumb_func_start OvlFunc_945_2009f3c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r0, #0x1c
	bl	__PlaySound
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r0, #0xe4
	mov	r2, #0xa2
	mov	r1, #1
	ldr	r3, =0x10000014
	lsl	r2, #18
	lsl	r0, #17
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x1d93
	bl	__MessageID
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0xd0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r0, #9
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	ldr	r3, =0x100b
	mov	r9, r3
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	ldr	r1, =0x105
	mov	r2, #0x3c
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x82
	mov	r2, #0x14
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r7, #0xc0
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	lsl	r7, #6
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r11, r3
	mov	r1, r11
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r10, r3
	mov	r1, r10
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	bl	__MapActor_SetSpeed
	mov	r0, #0xc
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xde
	mov	r2, #0xa7
	mov	r0, #0xc
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xec
	mov	r2, #0xa7
	lsl	r2, #2
	lsl	r1, #1
	mov	r0, #0xd
	bl	__Func_80921c4
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	mov	r2, #0x3c
	mov	r0, #0xc
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x28
	ldr	r0, =0x400b
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x3c
	mov	r0, #9
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #4
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r2, #0
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r2, #0x14
	mov	r1, #2
	mov	r0, #0xd
	bl	__MapActor_Jump
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #9
	ldr	r6, =0x100c
	bl	OvlFunc_945_200c86c
	mov	r1, r8
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #4
	mov	r0, #0xd
	bl	__MapActor_Jump
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r9
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, r10
	mov	r2, #0x14
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #2
	bl	__Func_809259c
	mov	r2, #0x14
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #3
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	ldr	r5, =0x400b
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #0xc
	bl	__Func_809259c
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r1, r8
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r0, #0xb
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xb
	bl	__Func_809259c
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #9
	bl	__MapActor_Emote
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r1, r8
	b	.L2384

	.pool_aligned

.L2384:
	mov	r0, #9
	bl	__Func_8092adc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xc
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, r10
	mov	r0, #0xb
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r10
	mov	r0, #9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x28
	mov	r1, r11
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0xb
	bl	__Func_80925cc
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x14
	mov	r0, r6
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #0xc
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #0x13
	bl	__PlaySound
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r5, =0x8008
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x50
	mov	r0, #8
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xb
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xd
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, r8
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r8
	mov	r0, #0xb
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #0xd
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #0xa
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r2, #0x28
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #8
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #8
	ldr	r1, =0x1db
	ldr	r2, =0x256
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #9
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xe7
	ldr	r2, =0x26a
	mov	r0, #9
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r11
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	ldr	r0, =0x8009
	bl	OvlFunc_945_200c86c
	ldr	r1, =0x101
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r6
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	ldr	r1, =0x103
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #8
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #8
	bl	__Func_8092adc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0x1c
	bl	__PlaySound
	mov	r1, #3
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r2, #0x3c
	ldr	r1, =0x101
	mov	r0, #0xd
	bl	__MapActor_Emote
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0xde
	mov	r2, #0x9d
	lsl	r2, #2
	mov	r0, #0xc
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r8
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	ldr	r0, =0x900c
	bl	OvlFunc_945_200c86c
	mov	r2, #0x14
	mov	r1, r10
	mov	r0, #8
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x3c
	mov	r0, #0xb
	bl	__MapActor_Emote
	mov	r0, r9
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x107
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, r7
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xc
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x3c
	mov	r0, #9
	ldr	r1, =0x105
	bl	__MapActor_Emote
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xe8
	mov	r2, #0xaa
	mov	r3, #0x80
	mov	r1, #1
	lsl	r3, #21
	lsl	r2, #18
	lsl	r0, #17
	neg	r1, r1
	bl	OvlFunc_945_200c8ac
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, #0xa
	bl	OvlFunc_945_200c880
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0x28
	mov	r0, #0xa
	bl	__MapActor_Emote
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r1, #4
	mov	r0, #0xa
	bl	__MapActor_Jump
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #0xa
	bl	__Func_80925cc
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xdb
	mov	r0, #0xd
	lsl	r1, #1
	ldr	r2, =0x293
	bl	__Func_809218c
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r0, #9
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r7
	mov	r0, #0xc
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, r11
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0x11
	bl	__PlaySound
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xa
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf4
	mov	r0, #0xa
	lsl	r1, #1
	ldr	r2, =0x2ae
	bl	__Func_80921c4
	mov	r1, r11
	mov	r2, #0
	mov	r0, #0xa
	bl	__Func_8092adc
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r0, #0xd
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	bl	__PlayMapMusic
	ldr	r0, =0x921
	bl	__SetFlag
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009f3c

.thumb_func_start OvlFunc_945_200a7d8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	ldr	r5, =0x1008
	mov	r1, #3
	mov	r0, #8
	bl	__Func_809259c
	ldr	r0, =0x1ddb
	bl	__MessageID
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #0xa
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xd0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xc
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xb
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r0, #0xd
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xb0
	mov	r2, #0x14
	mov	r0, #0xa
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L28d8
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r1, #0x84
	mov	r2, #0x28
	mov	r0, #8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	b	.L2904

	.pool_aligned

.L28d8:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	strh	r3, [r2]
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x9009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x9008
	bl	OvlFunc_945_200c86c
.L2904:
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x105
	bl	__MapActor_Emote
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xec
	mov	r1, #1
	mov	r2, #0x9f
	mov	r3, #1
	lsl	r0, #17
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r6, #0xb0
	mov	r1, #0xec
	ldr	r2, =0x296
	lsl	r6, #8
	mov	r0, #0xd
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, r6
	mov	r0, #0xd
	bl	OvlFunc_945_200c880
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r10, r3
	mov	r0, #8
	mov	r1, r10
	bl	OvlFunc_945_200c880
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xd
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r0, #0xc
	mov	r1, r8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0xd0
	mov	r2, #0x28
	ldr	r1, =0x101
	mov	r0, #0xb
	bl	__MapActor_Emote
	lsl	r5, #8
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	ldr	r7, =0x900c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, r5
	bl	OvlFunc_945_200c880
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	mov	r0, #0xb
	bl	OvlFunc_945_200c86c
	mov	r1, #0
	mov	r0, #0xc
	bl	OvlFunc_945_200c880
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r5
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0x98
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2ae6
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L2ae6:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #1
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0x9c
	mov	r0, #1
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b22
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.L2b22:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0xa0
	mov	r0, #2
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #2
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b5e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.L2b5e:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #3
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xf3
	mov	r2, #0xa4
	mov	r0, #3
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x84
	mov	r2, #0x28
	lsl	r1, #1
	mov	r0, #0xc
	bl	__MapActor_Emote
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r1, #1
	mov	r0, #9
	bl	__Func_80925cc
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, r10
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L2c44
	mov	r1, #2
	mov	r0, #8
	bl	__Func_809259c
	mov	r0, #8
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	mov	r0, r7
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, #1
	bl	__Func_809259c
	mov	r2, #0x28
	ldr	r0, =0x9009
	mov	r1, #0
	bl	__Func_8093040
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2c66

	.pool_aligned

.L2c44:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #3
	bl	__Func_809259c
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8093040
.L2c66:
	mov	r1, #1
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r6, #0xb0
	mov	r0, #8
	lsl	r6, #8
	bl	OvlFunc_945_200c86c
	mov	r0, #0xd
	mov	r1, #1
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r2, #0x14
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #8
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	ldr	r5, =0x4008
	mov	r1, #0xec
	mov	r2, #0x9e
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	bl	__Func_80921c4
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r2, #0x28
	mov	r0, #0xd
	ldr	r1, =0x103
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_809259c
	mov	r0, #0xd
	bl	OvlFunc_945_200c86c
	mov	r0, #8
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, r5
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, r6
	mov	r0, #0xb
	bl	OvlFunc_945_200c880
	ldr	r0, =0x100b
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xa
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, #0xa
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r0, #0xa
	mov	r1, #2
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r1, #0xe7
	ldr	r2, =0x2a2
	mov	r0, #0xa
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r0, #0xa
	mov	r1, r6
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #0xa
	bl	__Func_809259c
	mov	r0, #0xa
	bl	OvlFunc_945_200c86c
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c880
	mov	r1, #4
	mov	r0, #9
	bl	__MapActor_DoAnim
	mov	r0, #9
	bl	OvlFunc_945_200c86c
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_945_200c86c
	mov	r1, #0x81
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0xd
	mov	r1, #0
	bl	__Func_8093040
	mov	r1, #0xc0
	lsl	r1, #6
	mov	r0, #9
	bl	OvlFunc_945_200c880
	mov	r1, #2
	mov	r0, #9
	bl	__Func_809259c
	ldr	r0, =0x1009
	bl	OvlFunc_945_200c86c
	mov	r0, #0xc
	mov	r1, #0
	bl	OvlFunc_945_200c880
	mov	r1, #0x80
	mov	r0, #8
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, r8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, r6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0xa
	mov	r1, r6
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x100c
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r2, #0x28
	mov	r0, #8
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r1, #0
	ldr	r0, =0x1008
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L2e40
	mov	r0, #8
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L2e56
.L2e40:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
.L2e56:
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldr	r0, =0x1008
	bl	OvlFunc_945_200c86c
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #8
	bl	OvlFunc_945_200c880
	ldr	r0, =0x4008
	bl	OvlFunc_945_200c86c
	mov	r2, #0
	mov	r0, #2
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0xd
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r5, =gScript_883__0200e6e4
	mov	r0, #0xa
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0xc
	bl	__MapActor_SetBehavior
	mov	r0, #4
	bl	__CutsceneWait
	mov	r0, #9
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #2
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2f08
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L2f08:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r0, #3
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #1
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2f38
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L2f38:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2f68
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L2f68:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r0, #1
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0xd
	bl	__MapActor_SetBehavior
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r2, #2
	mov	r0, #8
	lsl	r1, #1
	bl	__Func_80921c4
	mov	r1, #0
	mov	r0, #8
	bl	OvlFunc_945_200c880
	mov	r0, #0xe8
	bl	__Func_8078a08
	ldr	r0, =0x925
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200a7d8

.thumb_func_start OvlFunc_945_200aff0
	push	{r5, lr}
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r1, =gState
	add	r2, #0x49
	str	r2, [r3]
	sub	r2, #0x47
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x17
	bhi	.L30d6
	ldr	r2, =.L3028
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L3028:
	.word	.L3088
	.word	.L3088
	.word	.L30d6
	.word	.L30b2
	.word	.L30b8
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L30d6
	.word	.L3088
	.word	.L30b2
	.word	.L30d6
	.word	.L30d6
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30b2
	.word	.L30d6
	.word	.L30b2
	.word	.L30b2
.L3088:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L30a2
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L30a2
	mov	r1, #2
	mov	r0, #9
	b	.L30d0
.L30a2:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L30d4
	mov	r1, #2
	mov	r0, #0xc
	b	.L30d0
.L30b2:
	mov	r1, #2
	mov	r0, #0x13
	b	.L30d0
.L30b8:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.L30d4
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L30d4
	mov	r1, #2
	mov	r0, #0xd
.L30d0:
	bl	__Func_8092950
.L30d4:
	ldr	r1, =gState
.L30d6:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #1
	cmp	r3, #0x1d
	bls	.L30e8
	b	.L3320
.L30e8:
	ldr	r2, =.L30f0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.L30f0:
	.word	.L3168
	.word	.L3168
	.word	.L3320
	.word	.L316e
	.word	.L3174
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L317a
	.word	.L3190
	.word	.L31a6
	.word	.L31ac
	.word	.L31b2
	.word	.L31b8
	.word	.L320e
	.word	.L3214
	.word	.L3254
	.word	.L325a
	.word	.L32aa
	.word	.L32b0
	.word	.L32e4
	.word	.L32ea
	.word	.L32fa
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3320
	.word	.L3300
.L3168:
	bl	OvlFunc_945_200b51c
	b	.L3320
.L316e:
	bl	OvlFunc_945_200b66c
	b	.L3320
.L3174:
	bl	OvlFunc_945_200b364
	b	.L3320
.L317a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L318a
	bl	OvlFunc_945_200bdec
	b	.L3320
.L318a:
	bl	OvlFunc_945_200bd10
	b	.L3320
.L3190:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L31a0
	bl	OvlFunc_945_200beec
	b	.L3320
.L31a0:
	bl	OvlFunc_945_200be34
	b	.L3320
.L31a6:
	bl	OvlFunc_945_200bf94
	b	.L3320
.L31ac:
	bl	OvlFunc_945_200c0e8
	b	.L3320
.L31b2:
	bl	OvlFunc_945_200c13c
	b	.L3320
.L31b8:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3208
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #1
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x26
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x26
	b	.L3298
.L3208:
	bl	OvlFunc_945_200c198
	b	.L3320
.L320e:
	bl	OvlFunc_945_200c218
	b	.L3320
.L3214:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L324e
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	bl	__CutsceneEnd
	b	.L3320
.L324e:
	bl	OvlFunc_945_200d068
	b	.L3320
.L3254:
	bl	OvlFunc_945_200d684
	b	.L3320
.L325a:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L32a4
	bl	__CutsceneStart
	mov	r0, #0x19
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r2, #0
	mov	r0, #0x16
	mov	r1, #0
	bl	OvlFunc_945_200c8e8
	ldr	r5, =gScript_945__0200e8e4
	mov	r0, #0x24
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x25
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x24
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x25
.L3298:
	mov	r1, #3
	bl	__Func_8092950
	bl	__CutsceneEnd
	b	.L3320
.L32a4:
	bl	OvlFunc_945_200d6dc
	b	.L3320
.L32aa:
	bl	OvlFunc_945_200d780
	b	.L3320
.L32b0:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L32de
	ldr	r0, =0x302
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3320
	ldr	r3, =.L7f84
	mov	r2, #0
	mov	r1, #0xc8
	lsl	r1, #4
	str	r2, [r3]
	ldr	r0, =OvlFunc_945_200dc48
	bl	__StartTask
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	b	.L3320
.L32de:
	bl	OvlFunc_945_200d7ec
	b	.L3320
.L32e4:
	bl	OvlFunc_945_200dca4
	b	.L3320
.L32ea:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3320
	bl	OvlFunc_945_200dd10
	b	.L3320
.L32fa:
	bl	OvlFunc_945_200e110
	b	.L3320
.L3300:
	ldr	r1, =0x926
	ldr	r2, =0x92b
	mov	r0, #0x14
	bl	OvlFunc_945_200c8e8
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	ldr	r0, =0x902
	bl	__SetFlag
	mov	r0, #1
	bl	__Func_8091e9c
.L3320:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_200aff0

.thumb_func_start OvlFunc_945_200b364
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3380
	bl	OvlFunc_945_200c5d0
	b	.L34f2

	.pool_aligned

.L3380:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L338e
	bl	OvlFunc_945_200c5d0
.L338e:
	ldr	r0, =0x93e
	bl	__GetFlag
	mov	r7, r0
	cmp	r7, #0
	beq	.L339c
	b	.L34f2
.L339c:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3456
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	mov	r6, r0
	mov	r2, #0
	mov	r0, #0xd
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xe4
	mov	r2, #0xa3
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
	bl	OvlFunc_945_200c890
	mov	r3, #0xf0
	lsl	r3, #1
	mov	r8, r3
	mov	r2, #0x96
	mov	r3, #0xb0
	lsl	r3, #8
	lsl	r2, #2
	mov	r0, #9
	mov	r1, r8
	bl	OvlFunc_945_200c890
	mov	r0, #9
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r3, r6
	add	r3, #0x66
	ldr	r5, .L3428	@ 0
	strh	r7, [r3]
	sub	r3, #3
	strb	r5, [r3]
	mov	r1, r6
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =OvlFunc_945_200812c
	mov	r0, #8
	str	r3, [r6, #0x6c]
	bl	__MapActor_GetActor
	mov	r3, r0
	add	r3, #0x62
	strb	r5, [r3]
	ldr	r3, =OvlFunc_945_2008284
	str	r3, [r0, #0x6c]
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.L34f2
	mov	r3, #0xa0
	ldr	r2, =0x29a
	lsl	r3, #8
	b	.L344c

	.align	2, 0
.L3428:
	.word	0
	.pool

.L344c:
	mov	r0, #0
	mov	r1, r8
	bl	OvlFunc_945_200c890
	b	.L34f2
.L3456:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L346e
	mov	r1, #0xde
	mov	r3, #0xd0
	lsl	r1, #1
	ldr	r2, =0x266
	mov	r0, #8
	lsl	r3, #8
	b	.L3484
.L346e:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3494
	mov	r1, #0xe4
	mov	r2, #0xa2
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #8
	mov	r3, #0
.L3484:
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L34f2
.L3494:
	ldr	r0, =0x921
	bl	__GetFlag
	cmp	r0, #0
	beq	.L34f2
	mov	r3, #0x80
	ldr	r1, =0x1db
	ldr	r2, =0x256
	lsl	r3, #8
	mov	r0, #8
	mov	r5, #0xb0
	bl	OvlFunc_945_200c890
	lsl	r5, #8
	mov	r1, #0xe7
	lsl	r1, #1
	ldr	r2, =0x26a
	mov	r3, r5
	mov	r0, #9
	bl	OvlFunc_945_200c890
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0xdb
	mov	r3, #0xd0
	strh	r5, [r0, #6]
	lsl	r1, #1
	ldr	r2, =0x293
	lsl	r3, #8
	mov	r0, #0xd
	bl	OvlFunc_945_200c890
	mov	r1, #0xf4
	mov	r2, #0xac
	lsl	r1, #1
	lsl	r2, #2
	mov	r0, #0xa
	mov	r3, r5
	bl	OvlFunc_945_200c890
.L34f2:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b364

.thumb_func_start OvlFunc_945_200b51c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3564
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
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
	mov	r0, #0xe
	b	.L360c
.L3564:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L35f0
	mov	r2, #0xde
	mov	r3, #0xc0
	lsl	r2, #1
	lsl	r3, #6
	mov	r0, #8
	mov	r1, #0x98
	bl	OvlFunc_945_200c890
	ldr	r1, =gScript_945__0200e958
	mov	r0, #8
	bl	__MapActor_SetBehavior
	mov	r3, #0xf0
	lsl	r3, #1
	mov	r10, r3
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r5, #0xf4
	mov	r8, r3
	mov	r0, #0xa
	mov	r1, #0xb8
	mov	r2, r10
	lsl	r5, #1
	mov	r6, #0xd0
	bl	OvlFunc_945_200c890
	lsl	r6, #8
	mov	r0, #0xc
	mov	r1, #0xaa
	mov	r2, r5
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r0, #0xd
	mov	r1, #0x88
	mov	r2, r5
	mov	r3, r6
	bl	OvlFunc_945_200c890
	mov	r0, #0xf
	mov	r1, #0x78
	mov	r2, r10
	mov	r3, r6
	bl	OvlFunc_945_200c890
	ldr	r2, =0x20e
	mov	r0, #0xe
	mov	r1, #0xb8
	mov	r3, r8
	bl	OvlFunc_945_200c890
	mov	r2, #0x92
	mov	r3, #0x80
	mov	r0, #0xb
	mov	r1, #0x88
	lsl	r2, #2
	lsl	r3, #8
	bl	OvlFunc_945_200c890
	ldr	r1, =gScript_945__0200e840
	mov	r0, #0xb
	bl	__MapActor_SetBehavior
	b	.L363e
.L35f0:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3600
	bl	OvlFunc_945_200d004
	b	.L363e
.L3600:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3616
	mov	r0, #0x12
.L360c:
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L363e
.L3616:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.L363e
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	beq	.L363e
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.L363e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b51c

.thumb_func_start OvlFunc_945_200b66c
	push	{lr}
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_945_200b7b4
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L36ae
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r1, #0xce
	mov	r3, #0xc0
	lsl	r1, #1
	lsl	r3, #6
	mov	r0, #8
	mov	r2, #0xde
	bl	OvlFunc_945_200c890
	mov	r1, #0xe5
	mov	r3, #0x80
	lsl	r1, #1
	lsl	r3, #8
	mov	r0, #9
	mov	r2, #0xa1
	bl	OvlFunc_945_200c890
	b	.L3794
.L36ae:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L36dc
	mov	r1, #0xec
	mov	r2, #0x98
	lsl	r2, #16
	mov	r0, #8
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	b	.L3794
.L36dc:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3702
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #4
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #3
	bl	OvlFunc_945_200c254
	b	.L3794
.L3702:
	ldr	r0, =0x92a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3728
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #3
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #2
	bl	OvlFunc_945_200c254
	b	.L3794
.L3728:
	ldr	r0, =0x929
	bl	__GetFlag
	cmp	r0, #0
	beq	.L374e
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #4
	mov	r1, #2
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #1
	bl	OvlFunc_945_200c254
	b	.L3794
.L374e:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3774
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	OvlFunc_945_200c8e8
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	OvlFunc_945_200c254
	b	.L3794
.L3774:
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.L3794
	ldr	r0, =0x926
	bl	__GetFlag
	cmp	r0, #0
	bne	.L3794
	bl	OvlFunc_945_200b8ac
.L3794:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200b66c
