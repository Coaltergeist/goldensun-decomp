	.include "macros.inc"
	.include "gba.inc"

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
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xcc
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x8e
	bl	__MapActor_TravelToAnimWait
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
	beq	.Lm945_5e88
	mov	r6, #2
	b	.Lm945_5e9e
.Lm945_5e88:
	ldr	r0, =0x933
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_5e9c
	ldr	r0, =0x92f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5e9e
.Lm945_5e9c:
	mov	r6, #1
.Lm945_5e9e:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	cmp	r6, #1
	bne	.Lm945_5eba
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.Lm945_5ecc
.Lm945_5eba:
	cmp	r6, #2
	bne	.Lm945_5ece
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
.Lm945_5ecc:
	strh	r3, [r2]
.Lm945_5ece:
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
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xde
	mov	r0, #0x1b
	lsl	r1, #1
	mov	r2, #0x84
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1b
	bl	__DeleteFieldActor
	mov	r0, #0x28
	bl	__CutsceneWait
	cmp	r6, #0
	bne	.Lm945_5f78
	ldr	r0, =0x92c
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_5f62
	ldr	r0, =0x92d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_5f64
.Lm945_5f62:
	mov	r6, #3
.Lm945_5f64:
	cmp	r6, #0
	bne	.Lm945_5f78
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	b	.Lm945_5f9e
.Lm945_5f78:
	cmp	r6, #1
	bne	.Lm945_5f8c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #2
	b	.Lm945_5f9e
.Lm945_5f8c:
	cmp	r6, #2
	bne	.Lm945_5fa0
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #3
.Lm945_5f9e:
	strh	r3, [r2]
.Lm945_5fa0:
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

