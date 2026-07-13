	.include "macros.inc"

.thumb_func_start OvlFunc_903_20084f4
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	sub	sp, #8
	bl	__SetFlag
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xaa
	bl	__Func_8091ff0
	mov	r1, #2
	mov	r0, #0xb
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x10
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0xf
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #8
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x865
	bl	__GetFlag
	cmp	r0, #0
	beq	.L55e
	mov	r3, #0x49
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L55e:
	mov	r0, #0x86
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5b6
	mov	r1, #0x88
	mov	r2, #0xc4
	lsl	r1, #16
	lsl	r2, #16
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r3, [r0]
	mov	r2, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #8
	bl	__MapActor_SetAnim
	mov	r3, #8
	mov	r5, #0xc
	str	r3, [sp]
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L5b6:
	ldr	r0, =0x861
	bl	__GetFlag
	cmp	r0, #0
	beq	.L5e4
	mov	r1, #0x84
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
	b	.L610
.L5e4:
	ldr	r0, =0x862
	bl	__GetFlag
	cmp	r0, #0
	beq	.L610
	mov	r1, #0x8c
	mov	r2, #0x9c
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r3, #0x10
	mov	r2, #0x12
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x12
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.L610:
	ldr	r0, =0x863
	bl	__GetFlag
	cmp	r0, #0
	beq	.L660
	mov	r1, #0xbc
	mov	r2, #0x8c
	lsl	r2, #17
	lsl	r1, #17
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0x17
	mov	r2, #0x11
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x36
	mov	r1, #0x11
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L660:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_903_20084f4

.thumb_func_start OvlFunc_903_200867c
	push	{lr}
	sub	sp, #8
	bl	__Func_809202c
	bl	__CutsceneStart
	mov	r0, #0x1e
	bl	__CutsceneWait
	ldr	r0, =0x138f
	bl	__MessageID
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L6c8
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.L6c8:
	mov	r1, #0x84
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #1
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	bne	.L75c
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L736
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L736:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	bl	__CutsceneEnd
	b	.Lcf0

	.pool_aligned

.L75c:
	mov	r1, #0xb4
	mov	r2, #0xf8
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0x88
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__Func_80921c4
	mov	r1, #0x88
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xd0
	bl	__Func_80921c4
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8093040
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x84
	mov	r0, #2
	lsl	r1, #1
	mov	r2, #0xc8
	bl	__Func_80921c4
	mov	r0, #0
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r1, #0xf8
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xe8
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x78
	bl	__Func_8093040
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #1
	mov	r0, #2
	bl	__Func_809259c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0x1e
	bl	__Func_8093040
	mov	r1, #0xe0
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x14
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #2
	lsl	r1, #8
	bl	__Func_8092adc
	bl	OvlFunc_903_2008d68
	mov	r1, #1
	mov	r0, #2
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__Func_809202c
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	bl	__MapActor_Jump
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r1, #0x84
	lsl	r1, #1
	mov	r2, #0xb8
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x3c
	bl	OvlFunc_903_2008314
	mov	r0, #0
	ldr	r1, =0x105
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	ldr	r1, =0x101
	mov	r2, #0
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r2, #0
	ldr	r1, =0x105
	mov	r0, #2
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0x81
	mov	r2, #0
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_903_2008314
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0
	ldr	r1, =0x101
	mov	r0, #1
	bl	__MapActor_Emote
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #1
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #1
	bl	__Func_809259c
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #1
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #2
	mov	r0, #1
	b	.Lb78

	.pool_aligned

.Lb78:
	bl	__Func_809280c
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_903_2008314
	mov	r1, #4
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #1
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x28
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #1
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80917d0
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	OvlFunc_903_2008fc8
	mov	r1, #1
	mov	r0, #2
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xb8
	mov	r1, #0xf8
	mov	r0, #2
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x14
	bl	OvlFunc_903_2008314
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #2
	mov	r1, #0x1e
	bl	OvlFunc_903_2008314
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #1
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	mov	r0, #0x32
	bl	__CutsceneWait
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_809218c
	mov	r0, #2
	mov	r1, #0xf8
	mov	r2, #0xa8
	bl	__Func_80921c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #2
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #0x49
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x4a
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r0, =0x865
	bl	__SetFlag
	bl	__CutsceneEnd
.Lcf0:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_200867c

.thumb_func_start OvlFunc_903_2008d04
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r6, r3, #20
	cmp	r6, #0xb
	bne	.Ld5c
	mov	r0, #8
	bl	OvlFunc_903_2008dd8
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r3, #8
	str	r3, [sp]
	mov	r5, #0xc
	mov	r0, #0x27
	mov	r1, #0xc
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x2b
	mov	r1, #0xb
	mov	r2, #3
	mov	r3, #1
	str	r5, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x86
	lsl	r0, #4
	bl	__SetFlag
.Ld5c:
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_903_2008d04
