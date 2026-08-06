	.include "macros.inc"

.thumb_func_start OvlFunc_943_2008bb8
	push	{lr}
	ldr	r0, =0x271
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_be6
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x5e
	mov	r2, #0xd
	mov	r3, #0x5e
	bl	__CopyMapTiles
	ldr	r0, =0x271
	bl	__SetFlag
.Lm943_be6:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008bb8

.thumb_func_start OvlFunc_943_2008bf0
	push	{lr}
	ldr	r0, =0x272
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_c1e
	mov	r0, #0x9e
	bl	__PlaySound
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r3, #0x6c
	bl	__CopyMapTiles
	ldr	r0, =0x272
	bl	__SetFlag
.Lm943_c1e:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008bf0

.thumb_func_start OvlFunc_943_2008c28
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	bl	__CutsceneStart
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, #0
	cmp	r3, #1
	beq	.Lm943_c48
	cmp	r3, #3
	beq	.Lm943_c50
	b	.Lm943_c56
.Lm943_c48:
	mov	r5, #1
	bl	OvlFunc_943_2008bb8
	b	.Lm943_c56
.Lm943_c50:
	mov	r5, #1
	bl	OvlFunc_943_2008bf0
.Lm943_c56:
	cmp	r5, #0
	beq	.Lm943_c78
	mov	r0, #0
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #1
	neg	r2, r2
	bl	__Func_8092208
	mov	r0, #0xa
	bl	__CutsceneWait
	b	.Lm943_c7e
.Lm943_c78:
	mov	r0, #0x7b
	bl	__PlaySound
.Lm943_c7e:
	mov	r2, #0xb6
	lsl	r2, #1
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8091e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008c28

.thumb_func_start OvlFunc_943_2008ca0
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
	bne	.Lm943_cba
	b	.Lm943_1046
.Lm943_cba:
	bl	__CutsceneStart
	bl	__Func_808e118
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__MapActor_Face
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	bl	__Func_80933d4
	mov	r0, #0xbe
	mov	r1, #1
	mov	r2, #0xb1
	mov	r3, #1
	lsl	r2, #18
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	ldr	r5, =0x4016
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_80925cc
	ldr	r0, =0x1d26
	bl	__MessageID
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x81
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_80925cc
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #1
	bl	__Func_80925cc
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r11, r3
	mov	r1, r11
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r9, r3
	ldr	r6, =0x4017
	mov	r0, #0x17
	mov	r1, r9
	bl	OvlFunc_943_200ba00
	mov	r1, #3
	mov	r0, #0x17
	bl	__MapActor_SetAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	ldr	r1, =0x101
	mov	r2, #0x28
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #0x16
	bl	__Func_8092adc
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x17
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #4
	mov	r0, #0x17
	bl	__MapActor_DoAnim
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r10, r3
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r0, #0x17
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x83
	mov	r2, #0x28
	mov	r0, #0x16
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r3, #0xa0
	lsl	r3, #7
	mov	r8, r3
	mov	r1, r8
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	ldr	r0, =_MSG_1d40
	bl	__MessageID
	mov	r1, #1
	mov	r0, #0x16
	bl	__Func_809259c
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r2, #0x28
	mov	r0, #0x14
	ldr	r1, =0x101
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x84
	mov	r0, #0x16
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #0x17
	bl	__MapActor_Emote
	mov	r0, r6
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, r5
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	mov	r2, #0x28
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x16
	mov	r1, r8
	bl	OvlFunc_943_200ba00
	mov	r1, #4
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, r11
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0x17
	mov	r1, r9
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, r10
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x16
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x81
	mov	r0, #0x17
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0x14
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #0x16
	bl	__MapActor_DoAnim
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	ldr	r0, =0xcccc
	ldr	r1, =0x1999
	bl	__Func_80933d4
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xbe
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #18
	bl	__Func_80933f8
	ldr	r2, =0x6666
	mov	r0, #0x17
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =ActorCmd_ARRAY_943__0200c464
	mov	r0, #0x17
	bl	__MapActor_SetBehavior
	ldr	r2, =0x6666
	mov	r0, #0x16
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_943__0200c49c
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0xbe
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r2, #0x3c
	mov	r0, #0x14
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #4
	mov	r2, #0
	bl	__MapActor_Jump
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, r9
	bl	__Func_8092adc
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #9
	lsl	r1, #6
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0x3160000
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x13333
	mov	r0, #0x14
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x30e
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xca
	mov	r0, #0x14
	mov	r1, #0xc0
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xca
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, r10
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_80925cc
	bl	OvlFunc_943_2008bf0
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x31e
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #9
	str	r5, [r0, #0x18]
	mov	r0, #0x14
	bl	__MapActor_GetActor
	str	r5, [r0, #0x1c]
	mov	r0, #0x92
	lsl	r0, #4
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm943_1046:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2008ca0

.thumb_func_start OvlFunc_943_20090a0
	push	{r5, r6, lr}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1198
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_1198
	bl	__CutsceneStart
	bl	__Func_808e118
	bl	OvlFunc_943_20092f0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xcc
	lsl	r2, #2
	strb	r3, [r0]
	mov	r1, #0xe8
	mov	r0, #0x14
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xc9
	and	r5, r3
	mov	r1, #0xf4
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xf8
	ldr	r2, =0x30a
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xaf
	mov	r0, #0x14
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	bl	__CutsceneEnd
.Lm943_1198:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20090a0

.thumb_func_start OvlFunc_943_20091c8
	push	{r5, r6, lr}
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_12c0
	ldr	r0, =0x922
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_12c0
	bl	__CutsceneStart
	bl	__Func_808e118
	bl	OvlFunc_943_20092f0
	ldr	r1, =0x6666
	ldr	r2, =0x3333
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r2, #0xcc
	lsl	r2, #2
	strb	r3, [r0]
	mov	r1, #0xca
	mov	r0, #0x14
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	mov	r0, #0x14
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #0xc9
	and	r5, r3
	mov	r1, #0xc0
	lsl	r2, #2
	strb	r5, [r0]
	mov	r0, #0x14
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xb4
	ldr	r2, =0x30a
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xaf
	mov	r0, #0x14
	mov	r1, #0xb4
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	bl	__CutsceneEnd
.Lm943_12c0:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20091c8

.thumb_func_start OvlFunc_943_20092f0
	push	{lr}
	ldr	r0, =0x19999
	ldr	r1, =0x3333
	sub	sp, #8
	bl	__Func_80933d4
	mov	r0, #0xd8
	mov	r1, #1
	mov	r2, #0xce
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bf0
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0x6c
	mov	r1, #0x6c
	mov	r2, #0xd
	mov	r0, #0x1e
	bl	__CopyMapTiles
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r2, #0xc8
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	ldr	r1, =0x13333
	ldr	r2, =0x9999
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xd8
	ldr	r2, =0x32e
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa
	mov	r0, #0
	mov	r1, #0x14
	bl	__MapActor_Face
	mov	r0, #0x14
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x80
	mov	r0, #0x14
	lsl	r1, #1
	mov	r2, #0x14
	bl	__MapActor_Emote
	mov	r2, #0x14
	mov	r0, #0x14
	mov	r1, #0
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #0x14
	bl	__Func_809259c
	ldr	r0, =0x1d8d
	bl	__MessageID
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x81
	lsl	r1, #1
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_Emote
	ldr	r0, =0x923
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20092f0

.thumb_func_start TolbiBoundShipDeck_MapInit
	push	{r5, r6, lr}
	ldr	r6, =iwram_3001e70
	mov	r2, #0x82
	ldr	r5, [r6]
	mov	r0, #0x8e
	lsl	r2, #1
	lsl	r0, #1
	add	r5, r2
	bl	__ClearFlag
	ldr	r3, [r6, #0x4c]
	mov	r2, #0xe0
	lsl	r2, #1
	add	r3, r2
	mov	r6, #0
	add	r2, #0x49
	str	r2, [r3]
	str	r6, [r5, #0x1c]
	ldr	r5, =.Lm943_5b58
	bl	__Random
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	ldr	r5, =.Lm943_5b38
	bl	__Random
	ldr	r3, =.Lm943_5b50
	lsl	r0, #16
	lsr	r0, #16
	str	r0, [r5]
	str	r6, [r3]
	str	r6, [r3, #4]
	ldr	r3, =.Lm943_5b60
	str	r6, [r3]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	bl	OvlFunc_943_2009444
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end TolbiBoundShipDeck_MapInit

.thumb_func_start OvlFunc_943_2009444
	push	{r5, lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__SetFlag
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1464
	ldr	r0, =0x271
	bl	__ClearFlag
	ldr	r0, =0x272
	bl	__ClearFlag
.Lm943_1464:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1480
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b9b8
	mov	r0, #0x18
	mov	r1, #2
	bl	__Func_8092950
	b	.Lm943_14ee
.Lm943_1480:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1496
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b9b8
	b	.Lm943_14ee
.Lm943_1496:
	ldr	r0, =0x927
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_14ce
	bl	OvlFunc_943_200b950
	bl	OvlFunc_943_200b284
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_943_200b4bc
	bl	__StartTask
	ldr	r2, =.Lm943_5b50
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r2, #4]
	ldr	r2, =.Lm943_5b60
	ldr	r3, =0x13333
	mov	r1, #0xc8
	str	r3, [r2, #4]
	ldr	r0, =OvlFunc_943_200b1a8
	lsl	r1, #4
	bl	__StartTask
	b	.Lm943_14ee
.Lm943_14ce:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_14ee
	bl	OvlFunc_943_200b950
	ldr	r3, =.Lm943_5b50
	str	r5, [r3, #4]
	ldr	r3, =.Lm943_5b60
	mov	r1, #0xc8
	str	r5, [r3, #4]
	ldr	r0, =OvlFunc_943_200b1a8
	lsl	r1, #4
	bl	__StartTask
.Lm943_14ee:
	ldr	r0, =0x927
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_14fc
	bl	OvlFunc_943_200b710
.Lm943_14fc:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	r3, #4
	cmp	r3, #0xf
	bhi	.Lm943_15d0
	ldr	r2, =.Lm943_1518
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_1518:
	.word	.Lm943_1558
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_15d0
	.word	.Lm943_1570
	.word	.Lm943_1586
	.word	.Lm943_158c
	.word	.Lm943_1592
	.word	.Lm943_1598
	.word	.Lm943_159e
	.word	.Lm943_15a4
	.word	.Lm943_15b4
	.word	.Lm943_15ba
	.word	.Lm943_15ca
.Lm943_1558:
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r1, [r0, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	b	.Lm943_15d0
.Lm943_1570:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1580
	bl	OvlFunc_943_2009b58
	b	.Lm943_1638
.Lm943_1580:
	bl	OvlFunc_943_2009a98
	b	.Lm943_1638
.Lm943_1586:
	bl	OvlFunc_943_2009d0c
	b	.Lm943_1638
.Lm943_158c:
	bl	OvlFunc_943_2009db0
	b	.Lm943_1638
.Lm943_1592:
	bl	OvlFunc_943_2009f90
	b	.Lm943_1638
.Lm943_1598:
	bl	OvlFunc_943_200a2c0
	b	.Lm943_1638
.Lm943_159e:
	bl	OvlFunc_943_200a618
	b	.Lm943_1638
.Lm943_15a4:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_1604
	bl	OvlFunc_943_200a9d4
	b	.Lm943_1638
.Lm943_15b4:
	bl	OvlFunc_943_200ab7c
	b	.Lm943_1638
.Lm943_15ba:
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_1638
	bl	OvlFunc_943_200ac84
	b	.Lm943_1638
.Lm943_15ca:
	bl	OvlFunc_943_200ba0c
	b	.Lm943_1638
.Lm943_15d0:
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_15e8
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	b	.Lm943_1638
.Lm943_15e8:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_15fa
	bl	OvlFunc_943_20099c0
	b	.Lm943_1638
.Lm943_15fa:
	ldr	r0, =0x92b
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_160a
.Lm943_1604:
	bl	OvlFunc_943_2009920
	b	.Lm943_1638
.Lm943_160a:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_161a
	bl	OvlFunc_943_200985c
	b	.Lm943_1638
.Lm943_161a:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_162a
	bl	OvlFunc_943_20097a0
	b	.Lm943_1638
.Lm943_162a:
	ldr	r0, =0x911
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1638
	bl	OvlFunc_943_2009684
.Lm943_1638:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009444

.thumb_func_start OvlFunc_943_2009684
	push	{r5, r6, lr}
	mov	r0, #0x1b
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x17
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x16
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x1a
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x18
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #0x92
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_16e6
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x29a0000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #0
	mov	r0, #0x17
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
.Lm943_16e6:
	ldr	r0, =0x922
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_1766
	mov	r1, #0x84
	ldr	r2, =0x2be0000
	lsl	r1, #17
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r0, #6]
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	ldr	r6, =gScript_943__0200c4d8
	add	r0, #0x3c
	add	r5, #0x64
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	mov	r1, #0xf8
	mov	r2, #0xaa
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	mov	r1, #0x5a
	bl	_umodsi3_RAM
	add	r5, #0x64
	add	r0, #0x3c
	strh	r0, [r5]
	mov	r1, r6
	mov	r0, #0x18
	bl	__MapActor_SetBehavior
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	b	.Lm943_1786
.Lm943_1766:
	ldr	r0, =0x923
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1786
	mov	r1, #0xf6
	mov	r2, #0x80
	mov	r0, #0x14
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	strh	r5, [r0, #6]
.Lm943_1786:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009684

.thumb_func_start OvlFunc_943_20097a0
	push	{r5, r6, lr}
	mov	r1, #0x83
	lsl	r1, #17
	ldr	r2, =0x2c20000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r6, #0xa0
	lsl	r6, #7
	mov	r1, #0xa4
	mov	r2, #0xa2
	lsl	r2, #18
	strh	r6, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, #0
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x18
	bl	__Func_8092b08
	mov	r1, #0xc6
	ldr	r2, =0x2990000
	lsl	r1, #16
	mov	r0, #0x19
	bl	__MapActor_SetPos
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0x19
	bl	__Func_8092b08
	mov	r1, #0xbc
	lsl	r1, #16
	ldr	r2, =0x2a60000
	mov	r0, #0x1a
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xba
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x27b0000
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #0
	strh	r6, [r0, #6]
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x17
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20097a0

.thumb_func_start OvlFunc_943_200985c
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r1, #0xcc
	lsl	r1, #16
	ldr	r2, =0x2090000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #13
	str	r3, [r0, #0xc]
	mov	r0, #0x16
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	mov	r5, #0x80
	orr	r3, r5
	strb	r3, [r0]
	ldr	r2, =0x4ccc
	mov	r0, #0x16
	ldr	r1, =0x9999
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_943__0200c58c
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r3, [r0]
	orr	r5, r3
	strb	r5, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x15
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	ldr	r1, =gScript_943__0200c628
	bl	__MapActor_SetBehavior
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_18ec
	bl	OvlFunc_943_200c218
.Lm943_18ec:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200985c

.thumb_func_start OvlFunc_943_2009920
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r1, #0x86
	ldr	r2, =0x2a60000
	lsl	r1, #17
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	ldr	r1, =gScript_943__0200c980
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0xcccc
	mov	r0, #0x15
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	ldr	r1, =gScript_943__0200c628
	bl	__MapActor_SetBehavior
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1996
	bl	OvlFunc_943_200c218
.Lm943_1996:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009920

.thumb_func_start OvlFunc_943_20099c0
	push	{r5, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r2, #0x82
	add	r3, #0xec
	lsl	r2, #15
	str	r2, [r3]
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5418
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x18
	bl	__DeleteFieldActor
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r5, #0xc0
	lsl	r5, #6
	strh	r5, [r0, #6]
	ldr	r0, =0x903
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm943_1a32
	mov	r1, #0xa2
	lsl	r1, #16
	ldr	r2, =0x27a0000
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xa2
	mov	r2, #0xa9
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	b	.Lm943_1a5e
.Lm943_1a32:
	mov	r1, #0xa0
	mov	r2, #0xa3
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0xa6
	mov	r2, #0xa7
	strh	r5, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x15
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xb0
.Lm943_1a5e:
	lsl	r3, #8
	strh	r3, [r0, #6]
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #6
	bne	.Lm943_1a76
	bl	OvlFunc_943_200bf30
.Lm943_1a76:
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_20099c0

.thumb_func_start OvlFunc_943_2009a98
	push	{lr}
	bl	__CutsceneStart
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r1, r1
	neg	r2, r2
	neg	r0, r0
	bl	__Func_80933f8
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x18
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x1b
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r1, #0xe8
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x28a0000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r1, #1
	mov	r0, #0xe8
	mov	r2, #0x9f
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #0
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x17
	mov	r1, #0x15
	bl	OvlFunc_943_2009c14
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009a98

.thumb_func_start OvlFunc_943_2009b58
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xe8
	mov	r2, #0x9f
	lsl	r2, #18
	mov	r0, #0
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0
	bl	__SetCameraTarget
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x16
	bl	__MapActor_SetIdle
	mov	r0, #0x15
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x16
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x15
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r1, #0xe8
	strh	r3, [r0, #6]
	lsl	r1, #16
	ldr	r2, =0x28a0000
	mov	r0, #0x17
	bl	__MapActor_SetPos
	mov	r0, #0x17
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x14
	mov	r1, #0x17
	bl	OvlFunc_943_2009c14
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009b58

.thumb_func_start OvlFunc_943_2009c14
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r6, r1
	mov	r3, #0xe0
	ldr	r1, =iwram_3001ebc
	lsl	r3, #1
	ldr	r2, [r1]
	mov	r10, r3
	mov	r8, r1
	sub	r3, #0xc0
	mov	r1, r10
	str	r3, [r2, r1]
	mov	r5, r0
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bb8
	mov	r1, #0xd8
	mov	r2, #0x93
	mov	r0, r5
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xda
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x97
	mov	r0, r5
	mov	r1, #0xea
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, r5
	mov	r1, #0xec
	ldr	r2, =0x26a
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xa0
	mov	r2, #0x14
	mov	r0, r5
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, r6
	lsl	r1, #7
	bl	OvlFunc_943_200ba00
	mov	r2, #0x28
	mov	r0, r6
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, r6
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x1e39
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, =0x202
	mov	r1, r10
	str	r3, [r2, r1]
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__Func_8091e9c
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009c14

.thumb_func_start OvlFunc_943_2009d0c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	ldr	r0, =0x1e41
	bl	__MessageID
	mov	r2, #0xa
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r0, #0x16
	bl	OvlFunc_943_200ba00
	mov	r2, #0x14
	mov	r0, #0x16
	mov	r1, #4
	bl	__MapActor_Jump
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_809259c
	ldr	r0, =0x6016
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xb
	bl	__Func_8091e9c
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009d0c

.thumb_func_start OvlFunc_943_2009db0
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm943_5208
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xf8
	mov	r2, #0xb6
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #16
	bl	__MapActor_SetPos
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	mov	r0, #0x15
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xad
	mov	r0, #0x15
	mov	r1, #0xf2
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x15
	mov	r1, #0xc4
	ldr	r2, =0x2a6
	bl	__MapActor_TravelToAnimWait
	ldr	r2, =0x28e
	mov	r0, #0x15
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r1, #2
	mov	r0, #0x15
	bl	__Func_80925cc
	ldr	r0, =0x1e44
	bl	__MessageID
	ldr	r0, =0xa015
	bl	OvlFunc_943_200b9ec
	mov	r0, #0
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r1, #0x9a
	ldr	r2, =0x261
	mov	r0, #0
	bl	__MapActor_TravelTo
	mov	r0, #0x92
	bl	__PlaySound
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	add	r0, #0x64
	strh	r5, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #0x80
	add	r0, #0x64
	mov	r2, #0xf2
	strh	r5, [r0]
	lsl	r1, #14
	mov	r0, #0x18
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0xa8
	mov	r2, #0xf8
	mov	r0, #0x19
	lsl	r1, #15
	lsl	r2, #17
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x95
	mov	r0, #0x1a
	lsl	r1, #13
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0x18
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	mov	r0, #0x19
	ldr	r1, =0x26666
	ldr	r2, =0x13333
	bl	__MapActor_SetSpeed
	ldr	r2, =0x13333
	mov	r0, #0x1a
	ldr	r1, =0x26666
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c4ec
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x19
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_8092950
.Lm943_1ef4:
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0x18
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm943_1ef4
	bl	OvlFunc_943_2008bb8
	mov	r0, #0x15
	mov	r2, #0x99
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r0, #0x18
	bl	__MapActor_WaitScript
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_800c5b4
	mov	r0, #0x15
	bl	__Func_8093304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0xc
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009db0

.thumb_func_start OvlFunc_943_2009f90
	push	{r5, r6, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm943_5268
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0x1f
	bl	__MapActor_SetAnim
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1c
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0x1d
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r2, #0xa0
	lsl	r2, #18
	mov	r0, #0x16
	lsl	r1, #17
	bl	__MapActor_SetPos
	ldr	r5, =gScript_943__0200c80c
	mov	r0, #0x16
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0x86
	mov	r2, #0xad
	lsl	r2, #18
	mov	r0, #0x15
	lsl	r1, #17
	bl	__MapActor_SetPos
	mov	r1, r5
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r1, #0xf2
	mov	r2, #0x97
	mov	r0, #0x18
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x84
	mov	r2, #0x96
	mov	r0, #0x19
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xfe
	mov	r2, #0xa7
	mov	r0, #0x1a
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x8d
	ldr	r2, =0x2920000
	lsl	r1, #17
	mov	r0, #0x1b
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	mov	r6, #0
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r5, #1
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r6, [r0]
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r5, [r0]
	ldr	r5, =gScript_943__0200c7a8
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c764
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0xc8
	lsl	r0, #1
	bl	__CutsceneWait
	mov	r1, #0xfe
	mov	r2, #0xb9
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	mov	r0, #0x1d
	lsl	r1, #13
	ldr	r2, =0x24a0000
	bl	__MapActor_SetPos
	mov	r0, #0x1c
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0x1d
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0xa1
	mov	r0, #0x1d
	mov	r1, #0xac
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r2, #0xa5
	mov	r0, #0x1c
	mov	r1, #0xc8
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #11
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	mov	r2, #0x9b
	mov	r0, #0
	mov	r1, #0xae
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r2, #0x91
	lsl	r2, #2
	mov	r1, #0xb4
	mov	r0, #0x1c
	bl	__MapActor_TravelToWait
	mov	r0, #0x92
	bl	__PlaySound
	ldr	r5, =gScript_943__0200c7ec
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_SetBehavior
	mov	r0, #0xf0
	bl	__PlaySound
	mov	r1, #0x86
	ldr	r2, =0x2520000
	mov	r0, #0x1f
	lsl	r1, #16
	bl	__MapActor_SetPos
	ldr	r1, =gScript_943__0200c814
	mov	r0, #0x1f
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x86
	mov	r2, #0x92
	mov	r0, #0x1e
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #10
	mov	r0, #0x1e
	bl	__MapActor_SetSpeed
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #12
	mov	r2, #0x99
	str	r3, [r0, #0x28]
	lsl	r2, #2
	mov	r1, #0xba
	mov	r0, #0x1e
	bl	__MapActor_TravelToWait
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1e
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x1e
	mov	r1, #0xd8
	bl	__MapActor_TravelToWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	ldr	r5, =gScript_943__0200c888
	mov	r0, #0x1e
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1c
	bl	__MapActor_SetBehavior
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x18
	bl	__MapActor_SetIdle
	mov	r0, #0x19
	bl	__MapActor_SetIdle
	mov	r0, #0x1a
	bl	__MapActor_SetIdle
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_800c5b4
	mov	r0, #0x15
	bl	__Func_8093304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0xd
	bl	__Func_8091e9c
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_2009f90

.thumb_func_start OvlFunc_943_200a2c0
	push	{r5, r6, r7, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =.Lm943_5340
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb0
	mov	r2, #0xae
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0xd0
	lsl	r3, #8
	mov	r1, #0x84
	strh	r3, [r0, #6]
	lsl	r1, #17
	ldr	r2, =0x2960000
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0xa8
	strh	r3, [r0, #6]
	lsl	r1, #16
	mov	r0, #0x18
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xca
	mov	r2, #0xad
	mov	r0, #0x19
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0xfc
	mov	r0, #0x1a
	lsl	r1, #16
	ldr	r2, =0x2860000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #0x1b
	lsl	r1, #17
	ldr	r2, =0x2ae0000
	bl	__MapActor_SetPos
	mov	r1, #0xac
	mov	r2, #0x9e
	mov	r0, #0x1c
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, #0x80
	lsl	r1, #17
	ldr	r2, =0x26e0000
	mov	r0, #0x1d
	bl	__MapActor_SetPos
	mov	r0, #0x18
	bl	__MapActor_GetActor
	ldr	r5, .Lm943_23b8	@ 0
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x19
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x63
	strb	r3, [r0]
	mov	r0, #0x1a
	bl	__MapActor_GetActor
	add	r0, #0x63
	strb	r5, [r0]
	mov	r0, #0x1b
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x63
	strb	r3, [r0]
	mov	r2, #0
	mov	r0, #0x14
	mov	r1, #0
	bl	__MapActor_SetPos
	ldr	r5, =gScript_943__0200c8c4
	mov	r0, #0x18
	mov	r1, r5
	bl	__MapActor_SetBehavior
	b	.Lm943_23d8

	.align	2, 0
.Lm943_23b8:
	.word	0
	.pool

.Lm943_23d8:
	mov	r1, r5
	mov	r0, #0x19
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c8b0
	mov	r0, #0x1a
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1b
	bl	__MapActor_SetBehavior
	ldr	r5, =gScript_943__0200c8d8
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_SetBehavior
	mov	r0, #0x18
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x19
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1a
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1b
	mov	r1, #3
	bl	__Func_8092950
	mov	r0, #0x1c
	mov	r1, #3
	bl	__Func_8092950
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_8092950
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r0, #0x1f
	bl	__MapActor_GetActor
	ldr	r3, =0x1999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	ldr	r3, =0x2820000
	ldr	r7, =0xf5c
	str	r3, [r6, #0x10]
	mov	r5, #0
.Lm943_2472:
	ldr	r3, [r6, #0x18]
	add	r3, r7
	str	r3, [r6, #0x18]
	ldr	r3, [r6, #0x1c]
	add	r3, r7
	str	r3, [r6, #0x1c]
	mov	r0, #1
	add	r5, #1
	bl	__WaitFrames
	cmp	r5, #0xf
	bls	.Lm943_2472
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	ldr	r3, =0x11999
	mov	r6, r0
	str	r3, [r6, #0x18]
	str	r3, [r6, #0x1c]
	mov	r3, #0xc2
	lsl	r3, #16
	str	r3, [r6, #8]
	mov	r3, #0xa0
	lsl	r3, #15
	str	r3, [r6, #0xc]
	ldr	r3, =0x2820000
	str	r3, [r6, #0x10]
	mov	r3, #0xa0
	lsl	r3, #7
	strh	r3, [r6, #6]
	ldr	r3, =0x6666
	str	r3, [r6, #0x44]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r6, #0x48]
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x93
	bl	__PlaySound
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1f
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #0
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r5, .Lm943_252c	@ 0
	mov	r3, r6
	add	r3, #0x55
	mov	r2, #0x99
	strb	r5, [r3]
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0x1e
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, #0x1e
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelToWait
	mov	r2, #0x96
	mov	r1, #0xd8
	lsl	r2, #2
	mov	r0, #0x1e
	bl	__MapActor_TravelToWait
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	b	.Lm943_2558

	.align	2, 0
.Lm943_252c:
	.word	0
	.pool

.Lm943_2558:
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0xcccc
	mov	r0, #0x1c
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	ldr	r5, =gScript_943__0200c888
	mov	r0, #0x1c
	mov	r1, r5
	bl	__MapActor_SetBehavior
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, #0x1e
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, r5
	mov	r0, #0x1e
	bl	__MapActor_SetBehavior
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #1
	bl	__WaitFrames
	ldr	r2, =0xcccc
	mov	r0, #0x1d
	ldr	r1, =0x19999
	bl	__MapActor_SetSpeed
	mov	r1, r5
	mov	r0, #0x1d
	bl	__MapActor_RunScript
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__MapTransitionOut
	bl	__WaitMapTransition
	mov	r0, #0x18
	bl	__MapActor_SetIdle
	mov	r0, #0x19
	bl	__MapActor_SetIdle
	mov	r0, #0x1a
	bl	__MapActor_SetIdle
	mov	r0, #0x1b
	bl	__MapActor_SetIdle
	mov	r0, #0x1c
	bl	__MapActor_SetIdle
	mov	r0, #0x1d
	bl	__MapActor_SetIdle
	mov	r0, #0xa
	bl	__CutsceneWait
	bl	__Func_800c5b4
	mov	r0, #0x15
	bl	__Func_8093304
	ldr	r0, =0x1e45
	mov	r1, #1
	mov	r2, #0
	bl	__Func_8019aa0
	bl	__Func_800c5fc
	mov	r0, #0xe
	bl	__Func_8091e9c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a2c0

.thumb_func_start OvlFunc_943_200a618
	push	{r5, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5418
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #1
	mov	r0, #0x19
	bl	__SetCameraTarget
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #5
	mov	r0, #0x15
	bl	__MapActor_SetAnim
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #7
	strh	r3, [r0, #6]
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xe0
	ldr	r3, [r3]
	ldr	r2, =0x202
	lsl	r0, #1
	add	r3, r0
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r0, #0
	lsl	r1, #16
	ldr	r2, =0x24a0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	ldr	r2, =0x256
	mov	r1, #0xd8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #2
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r0, #0
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x9c
	mov	r1, #0xc2
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0xb5
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0x14
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x19
	bl	__MapActor_GetActor
	ldr	r5, .Lm943_275c	@ 0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r5, [r0]
	lsl	r1, #10
	mov	r0, #0x19
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x99
	lsl	r2, #2
	mov	r1, #0xd8
	mov	r0, #0x19
	bl	__MapActor_TravelTo
	mov	r0, #0x95
	bl	__PlaySound
	mov	r0, #0x16
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #5
	mov	r0, #0x16
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	bl	__MapActor_GetActor
	b	.Lm943_2780

	.align	2, 0
.Lm943_275c:
	.word	0
	.pool

.Lm943_2780:
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r0, #0x28]
	ldr	r3, =0xb333
	str	r3, [r0, #0x48]
	mov	r3, #0xd0
	lsl	r3, #9
	str	r3, [r0, #0x18]
	str	r3, [r0, #0x1c]
	mov	r5, #0x80
	ldr	r3, =OvlFunc_943_20088c0
	lsl	r5, #8
	mov	r1, #0xc0
	mov	r2, #0xc0
	str	r3, [r0, #0x6c]
	str	r5, [r0, #0x44]
	lsl	r1, #11
	mov	r0, #0x16
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	ldr	r2, =0x26a
	mov	r1, #0xb6
	mov	r0, #0x16
	bl	__MapActor_TravelToWait
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xa0
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r0, #0
	mov	r1, #6
	mov	r2, #0x50
	bl	__MapActor_Jump
	mov	r2, #0x8d
	mov	r0, #0x19
	mov	r1, #0xe8
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0
	mov	r1, #0xcc
	ldr	r2, =0x262
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xd0
	ldr	r2, =0x256
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #0xf8
	ldr	r2, =0x256
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2812
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm943_2812:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2826
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #2
	bl	__MapActor_SetPos
.Lm943_2826:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_283a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #3
	bl	__MapActor_SetPos
.Lm943_283a:
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
	mov	r2, #0x92
	mov	r0, #0
	mov	r1, #0xfa
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x96
	mov	r0, #1
	mov	r1, #0xf0
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x96
	mov	r0, #2
	mov	r1, #0xfe
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x9a
	lsl	r2, #2
	mov	r0, #3
	mov	r1, #0xf8
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #1
	bl	__MapActor_SetAnim
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
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #3
	bl	__Func_8092adc
	mov	r0, #0x95
	bl	__PlaySound
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	mov	r0, #2
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #3
	bl	__MapActor_Surprise
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #2
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #3
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x8d
	mov	r0, #0
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #1
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x8d
	mov	r0, #2
	mov	r1, #0xf8
	lsl	r2, #2
	bl	__MapActor_TravelToAnim
	mov	r2, #0x8d
	mov	r1, #0xf8
	lsl	r2, #2
	mov	r0, #3
	bl	__MapActor_TravelToAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r2, =gState
	mov	r0, #0xe2
	ldr	r1, =0x6f
	lsl	r0, #1
	add	r3, r2, r0
	strh	r1, [r3]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r1, r2, r3
	mov	r3, #0x1e
	strh	r3, [r1]
	add	r0, #0x67
	add	r2, r0
	mov	r3, #3
	strb	r3, [r2]
	ldr	r0, =0x6d
	mov	r1, #0x10
	bl	__Func_8091f90
	mov	r0, #0x3e
	mov	r1, #3
	bl	__StartMapBattle
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a618

.thumb_func_start OvlFunc_943_200a9d4
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xb6
	mov	r0, #0x14
	lsl	r1, #16
	ldr	r2, =0x26a0000
	bl	__MapActor_SetPos
	mov	r1, #0xee
	mov	r0, #0x17
	lsl	r1, #16
	ldr	r2, =0x2720000
	bl	__MapActor_SetPos
	mov	r1, #0x86
	ldr	r2, =0x2a60000
	lsl	r1, #17
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r3, #0
	strh	r3, [r0, #6]
	ldr	r1, =gScript_943__0200c980
	mov	r0, #0x16
	bl	__MapActor_SetBehavior
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x59
	ldrb	r2, [r0]
	mov	r3, #0x80
	orr	r3, r2
	strb	r3, [r0]
	ldr	r2, =0x6666
	mov	r0, #0x15
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_943__0200c628
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r5, =iwram_3001ebc
	mov	r6, #0xe0
	ldr	r2, [r5]
	mov	r3, #0x80
	lsl	r3, #1
	lsl	r6, #1
	str	r3, [r2, r6]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x14
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r2, #0x89
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xb6
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x14
	mov	r1, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #0x80
	lsl	r1, #8
	mov	r0, #0
	bl	OvlFunc_943_200ba00
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	ldr	r0, =0x1ee1
	bl	__MessageID
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0
	bl	__MapActor_DoAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0x14
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0x14
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0x28
	mov	r0, #0x14
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r1, #0
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0x96
	mov	r0, #0x14
	mov	r1, #0xb6
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x96
	lsl	r2, #2
	mov	r0, #0x14
	mov	r1, #0xd8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r2, #0x91
	mov	r0, #0x14
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0
	mov	r0, #0x14
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r2, [r5]
	ldr	r3, =0x209
	ldr	r0, =0x92b
	str	r3, [r2, r6]
	bl	__SetFlag
	ldr	r0, =0x302
	bl	__ClearFlag
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200a9d4

.thumb_func_start OvlFunc_943_200ab7c
	push	{r5, lr}
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r0, =.Lm943_5160
	bl	__LoadFieldActors
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0xc4
	mov	r2, #0xfb
	lsl	r1, #16
	lsl	r2, #17
	mov	r0, #0x14
	bl	__MapActor_SetPos
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0xa0
	lsl	r3, #8
	mov	r1, #0xb8
	mov	r2, #0x83
	strh	r3, [r0, #6]
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0x16
	bl	__MapActor_SetPos
	mov	r0, #0x16
	bl	__MapActor_GetActor
	mov	r5, #0xb0
	lsl	r5, #8
	strh	r5, [r0, #6]
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_8092b08
	mov	r1, #0xb8
	mov	r2, #0x9e
	lsl	r1, #16
	lsl	r2, #18
	mov	r0, #0x15
	bl	__MapActor_SetPos
	mov	r0, #0x15
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	strh	r5, [r0, #6]
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x42
	str	r2, [r3]
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x16
	mov	r1, #4
	mov	r2, #0xa
	bl	__MapActor_Jump
	mov	r2, #0x14
	mov	r1, #6
	mov	r0, #0x16
	bl	__MapActor_Jump
	ldr	r0, =0x1ee5
	bl	__MessageID
	mov	r0, #0x16
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xc0
	mov	r2, #0xc0
	mov	r0, #0x15
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #0x15
	mov	r1, #0xb4
	ldr	r2, =0x222
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x28
	mov	r1, r5
	mov	r0, #0x15
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x15
	bl	__Func_80925cc
	mov	r0, #0x15
	bl	OvlFunc_943_200b9ec
	mov	r0, #0xf
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200ab7c

.thumb_func_start OvlFunc_943_200ac84
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x34
	mov	r1, #4
	mov	r6, #0
	add	r1, sp
	mov	r7, #0
	add	r4, sp, #0x24
	mov	r8, r1
	mov	r10, r6
	mov	r5, #0
.Lm943_2c9e:
	mov	r0, r6
	str	r4, [sp]
	bl	OvlFunc_943_200b150
	ldr	r4, [sp]
	mov	r3, r10
	mov	r2, r8
	add	r6, #1
	str	r0, [r5, r4]
	str	r3, [r5, r2]
	add	r5, #4
	cmp	r6, #3
	bls	.Lm943_2c9e
	ldr	r3, [r4]
	mov	r1, #0x17
	mov	r6, #0
	cmp	r3, #0x17
	bne	.Lm943_2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2, r6]
	b	.Lm943_2cde
.Lm943_2cca:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2ce6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2cca
	add	r2, sp, #0x14
	mov	r3, r8
	str	r1, [r2]
.Lm943_2cde:
	mov	r10, r2
	str	r7, [r3]
	mov	r7, #1
	b	.Lm943_2cea
.Lm943_2ce6:
	add	r1, sp, #0x14
	mov	r10, r1
.Lm943_2cea:
	ldr	r3, [r4]
	mov	r1, #0x18
	mov	r6, #0
	cmp	r3, #0x18
	beq	.Lm943_2d02
.Lm943_2cf4:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d0e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2cf4
.Lm943_2d02:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d0e:
	ldr	r3, [r4]
	mov	r1, #0x19
	mov	r6, #0
	cmp	r3, #0x19
	beq	.Lm943_2d26
.Lm943_2d18:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d32
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d18
.Lm943_2d26:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d32:
	ldr	r3, [r4]
	mov	r1, #0x1b
	mov	r6, #0
	cmp	r3, #0x1b
	beq	.Lm943_2d4a
.Lm943_2d3c:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d56
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d3c
.Lm943_2d4a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d56:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1c
	mov	r6, #0
	cmp	r3, #0x1c
	beq	.Lm943_2d72
.Lm943_2d64:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2d7e
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d64
.Lm943_2d72:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2d7e:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1d
	mov	r6, #0
	cmp	r3, #0x1d
	beq	.Lm943_2d9a
.Lm943_2d8c:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2da6
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2d8c
.Lm943_2d9a:
	lsl	r3, r7, #2
	mov	r2, r10
	str	r1, [r2, r3]
	mov	r1, r8
	str	r7, [r1, r3]
	add	r7, #1
.Lm943_2da6:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1a
	mov	r6, #0
	cmp	r3, #0x1a
	beq	.Lm943_2dc2
.Lm943_2db4:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2dd0
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2db4
.Lm943_2dc2:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xa
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.Lm943_2dd0:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1e
	mov	r6, #0
	cmp	r3, #0x1e
	beq	.Lm943_2dec
.Lm943_2dde:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2dfa
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2dde
.Lm943_2dec:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0xb
	mov	r1, r8
	str	r3, [r1, r2]
	add	r7, #1
.Lm943_2dfa:
	cmp	r7, #4
	beq	.Lm943_2e22
	ldr	r3, [r4]
	mov	r1, #0x1f
	mov	r6, #0
	cmp	r3, #0x1f
	beq	.Lm943_2e16
.Lm943_2e08:
	add	r6, #1
	cmp	r6, #3
	bhi	.Lm943_2e22
	lsl	r3, r6, #2
	ldr	r3, [r4, r3]
	cmp	r3, r1
	bne	.Lm943_2e08
.Lm943_2e16:
	lsl	r2, r7, #2
	mov	r3, r10
	str	r1, [r3, r2]
	mov	r3, #0x14
	mov	r1, r8
	str	r3, [r1, r2]
.Lm943_2e22:
	bl	__CutsceneStart
	mov	r1, #0xf
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm943_2e4e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x20
	bl	__MapActor_SetPos
.Lm943_2e4e:
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0x20
	mov	r1, #1
	bl	__SetCameraTarget
	bl	OvlFunc_943_2008bb8
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r6, #0
.Lm943_2e70:
	lsl	r7, r6, #2
	mov	r2, r10
	ldr	r5, [r2, r7]
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r1, #16
	mov	r0, r5
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r1, r8
	ldr	r3, [r1, r7]
	cmp	r3, #0x14
	bne	.Lm943_2e98
	mov	r0, r5
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	b	.Lm943_2ea6
.Lm943_2e98:
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r5
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
.Lm943_2ea6:
	mov	r2, #0x96
	mov	r0, r5
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r0, r5
	mov	r1, #0xc0
	ldr	r2, =0x26a
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0xa4
	lsl	r2, #2
	mov	r0, r5
	mov	r1, #0xc0
	bl	__MapActor_TravelToAnimWait
	mov	r2, r8
	ldr	r3, [r2, r7]
	cmp	r3, #0x14
	bhi	.Lm943_2fb8
	ldr	r2, =.Lm943_2ed8
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm943_2ed8:
	.word	.Lm943_2f2c
	.word	.Lm943_2f40
	.word	.Lm943_2f5e
	.word	.Lm943_2f70
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2f80
	.word	.Lm943_2f90
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fb8
	.word	.Lm943_2fa0
.Lm943_2f2c:
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee7
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f40:
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r0, r5
	bl	OvlFunc_943_200ba00
	mov	r1, #0x81
	mov	r0, r5
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee8
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f5e:
	mov	r0, r5
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	ldr	r0, =0x1ee9
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f70:
	mov	r0, r5
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, =0x1eea
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f80:
	mov	r0, r5
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, =0x1eeb
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2f90:
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_SetAnim
	ldr	r0, =0x1eec
	bl	__MessageID
	b	.Lm943_2fb8
.Lm943_2fa0:
	mov	r0, r5
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, r5
	ldr	r1, =0x107
	mov	r2, #0x28
	bl	__MapActor_Emote
	ldr	r0, =0x1eed
	bl	__MessageID
.Lm943_2fb8:
	mov	r0, r5
	bl	OvlFunc_943_200b9ec
	add	r6, #1
	ldr	r1, =gScript_943__0200c8e0
	mov	r0, r5
	bl	__MapActor_SetBehavior
	cmp	r6, #3
	bhi	.Lm943_2fce
	b	.Lm943_2e70
.Lm943_2fce:
	mov	r0, r5
	bl	__MapActor_WaitScript
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xd8
	mov	r2, #0x92
	lsl	r2, #18
	lsl	r1, #16
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	bl	__WaitFrames
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8092950
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r2, #0x96
	mov	r0, #0
	mov	r1, #0xd8
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0x99
	mov	r1, #0xbe
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	ldr	r0, =0x1eee
	bl	__MessageID
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x20
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r1, #0x80
	mov	r2, #0x80
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x20
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r2, #0x8d
	mov	r0, #0x20
	mov	r1, #0xc4
	lsl	r2, #2
	bl	__MapActor_TravelTo
	mov	r0, #0x14
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0x14
	mov	r1, #0xb6
	ldr	r2, =0x22b
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #0x14
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #1
	mov	r0, #0x14
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #3
	mov	r0, #0x14
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, #0x80
	mov	r2, #0x28
	lsl	r1, #8
	mov	r0, #0x14
	mov	r5, #0xc0
	bl	__Func_8092adc
	lsl	r5, #6
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r1, r5
	mov	r0, #0x14
	bl	OvlFunc_943_200ba00
	mov	r0, #0x14
	bl	OvlFunc_943_200b9ec
	mov	r0, #0x14
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #1
	bl	__SetCameraTarget
	mov	r2, #0x80
	mov	r0, #0x14
	mov	r1, #0xbc
	lsl	r2, #2
	bl	__MapActor_TravelToAnimWait
	mov	r1, r5
	mov	r0, #0x14
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x20
	bl	__MapActor_SetPos
	ldr	r0, =0x12f
	bl	__ClearFlag
	bl	__CutsceneEnd
	add	sp, #0x34
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200ac84

.thumb_func_start OvlFunc_943_200b150
	push	{r5, r6, r7, lr}
	mov	r6, #0
	mov	r7, #0x17
	cmp	r0, #1
	beq	.Lm943_316c
	cmp	r0, #1
	bcc	.Lm943_3168
	cmp	r0, #2
	beq	.Lm943_3170
	cmp	r0, #3
	beq	.Lm943_3178
	b	.Lm943_317c
.Lm943_3168:
	ldr	r6, =0x92c
	b	.Lm943_317c
.Lm943_316c:
	ldr	r6, =0x935
	b	.Lm943_317c
.Lm943_3170:
	ldr	r6, =0x917
	b	.Lm943_317c
.Lm943_3174:
	mov	r0, r7
	b	.Lm943_3194
.Lm943_3178:
	mov	r6, #0x99
	lsl	r6, #4
.Lm943_317c:
	mov	r5, #0
.Lm943_317e:
	mov	r0, r6
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_3174
	add	r5, #1
	add	r6, #1
	add	r7, #1
	cmp	r5, #8
	bls	.Lm943_317e
	mov	r0, #0
.Lm943_3194:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_200b150

.thumb_func_start OvlFunc_943_200b1a8
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e70
	ldr	r0, =.Lm943_5b58
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r0]
	ldr	r6, [r3]
	mov	r9, r3
	bl	__cos
	ldr	r1, =.Lm943_5b38
	mov	r5, r0
	ldr	r0, [r1]
	mov	r10, r1
	bl	__sin
	ldr	r3, [r6]
	asr	r5, #1
	add	r3, r5
	stmia	r6!, {r3}
	ldr	r3, [r6]
	add	r3, r0
	str	r3, [r6]
	bl	__Random
	lsl	r3, r0, #1
	mov	r5, r8
	add	r3, r0
	ldr	r2, [r5]
	lsl	r3, #7
	lsr	r3, #16
	add	r2, r3
	str	r2, [r5]
	bl	__Random
	mov	r1, r10
	ldr	r3, [r1]
	lsl	r0, #9
	ldrh	r2, [r5]
	lsr	r0, #16
	ldr	r1, =0xffff
	add	r3, r0
	str	r2, [r5]
	and	r3, r1
	mov	r2, r10
	str	r3, [r2]
	ldr	r1, =.Lm943_5b50
	mov	r0, #0x82
	ldr	r3, [r1]
	lsl	r0, #1
	add	r0, r9
	str	r3, [r0, #8]
	ldr	r4, =.Lm943_5b60
	ldr	r2, [r1]
	ldr	r3, [r4]
	sub	r2, r3
	str	r2, [r1]
	cmp	r2, #0
	bge	.Lm943_3230
	mov	r5, #0x80
	lsl	r5, #14
	add	r3, r2, r5
	str	r3, [r1]
.Lm943_3230:
	mov	r2, #0x80
	ldr	r3, [r1]
	lsl	r2, #14
	cmp	r3, r2
	ble	.Lm943_3240
	ldr	r5, =0xffe00000
	add	r3, r5
	str	r3, [r1]
.Lm943_3240:
	ldr	r3, [r1, #4]
	str	r3, [r0, #0xc]
	ldr	r2, [r1, #4]
	ldr	r3, [r4, #4]
	sub	r2, r3
	str	r2, [r1, #4]
	cmp	r2, #0
	bge	.Lm943_3258
	mov	r0, #0x80
	lsl	r0, #14
	add	r3, r2, r0
	str	r3, [r1, #4]
.Lm943_3258:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b1a8

.thumb_func_start OvlFunc_943_200b284
	push	{r5, r6, lr}
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x59
	strb	r5, [r0]
	mov	r0, #8
	bl	OvlFunc_943_200b380
	mov	r0, #9
	bl	OvlFunc_943_200b380
	mov	r0, #0xa
	bl	OvlFunc_943_200b380
	mov	r0, #0xb
	bl	OvlFunc_943_200b380
	mov	r0, #0xc
	bl	OvlFunc_943_200b380
	mov	r0, #0xd
	bl	OvlFunc_943_200b380
	mov	r0, #0xe
	bl	OvlFunc_943_200b380
	mov	r0, #0xf
	bl	OvlFunc_943_200b380
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r6, =.Lm943_5b90
	ldr	r3, [r0, #0x10]
	mov	r0, #0xd
	str	r3, [r6]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xe
	str	r3, [r6, #4]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0xf
	str	r3, [r6, #8]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x10
	str	r3, [r6, #0xc]
	bl	OvlFunc_943_200b380
	mov	r0, #0x11
	bl	OvlFunc_943_200b380
	mov	r0, #0x12
	bl	OvlFunc_943_200b380
	mov	r0, #0x13
	bl	OvlFunc_943_200b380
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r5, =0xffff0000
	str	r5, [r0, #0x18]
	mov	r0, #0x11
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x12
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x13
	bl	__MapActor_GetActor
	str	r5, [r0, #0x18]
	mov	r0, #0x10
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x11
	str	r3, [r6, #0x10]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x12
	str	r3, [r6, #0x14]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	mov	r0, #0x13
	str	r3, [r6, #0x18]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #0x1c]
	bl	OvlFunc_943_200b3b8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b284

.thumb_func_start OvlFunc_943_200b380
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm943_33b2
	mov	r0, r6
	mov	r1, #3
	bl	__Func_8092b08
	mov	r1, #0
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
.Lm943_33b2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b380

.thumb_func_start OvlFunc_943_200b3b8
	push	{r5, r6, r7, lr}
	ldr	r6, =.Lm943_5b70
	mov	r5, #0
	mov	r7, #3
.Lm943_33c0:
	mov	r0, r5
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_33d4
	mov	r0, r5
	bl	OvlFunc_943_200b464
	str	r0, [r6]
	b	.Lm943_33d6
.Lm943_33d4:
	str	r7, [r6]
.Lm943_33d6:
	add	r5, #1
	add	r6, #4
	cmp	r5, #3
	bls	.Lm943_33c0
	mov	r0, #0
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_33f4
	mov	r0, #0
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3]
	b	.Lm943_33fa
.Lm943_33f4:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2]
.Lm943_33fa:
	mov	r0, #2
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_3410
	mov	r0, #2
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3, #4]
	b	.Lm943_3416
.Lm943_3410:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #4]
.Lm943_3416:
	ldr	r6, =.Lm943_5b70
	mov	r5, #3
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	mov	r0, #1
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_3432
	mov	r0, #1
	bl	OvlFunc_943_200b464
	str	r0, [r6, #0x10]
	b	.Lm943_3434
.Lm943_3432:
	str	r5, [r6, #0x10]
.Lm943_3434:
	mov	r0, #3
	bl	OvlFunc_943_200b150
	cmp	r0, #0
	beq	.Lm943_344a
	mov	r0, #3
	bl	OvlFunc_943_200b464
	ldr	r3, =.Lm943_5b70
	str	r0, [r3, #0x14]
	b	.Lm943_3450
.Lm943_344a:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #0x14]
.Lm943_3450:
	ldr	r2, =.Lm943_5b70
	mov	r3, #3
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_943_200b3b8

.thumb_func_start OvlFunc_943_200b464
	push	{r5, r6, lr}
	mov	r6, #0
	cmp	r0, #1
	beq	.Lm943_347e
	cmp	r0, #1
	bcc	.Lm943_347a
	cmp	r0, #2
	beq	.Lm943_3482
	cmp	r0, #3
	beq	.Lm943_348e
	b	.Lm943_3492
.Lm943_347a:
	ldr	r6, =0x92c
	b	.Lm943_3492
.Lm943_347e:
	ldr	r6, =0x935
	b	.Lm943_3492
.Lm943_3482:
	ldr	r6, =0x917
	b	.Lm943_3492
.Lm943_3486:
	ldr	r3, =.Lm943_5b08
	lsl	r2, r5, #2
	ldr	r0, [r3, r2]
	b	.Lm943_34a6
.Lm943_348e:
	mov	r6, #0x99
	lsl	r6, #4
.Lm943_3492:
	mov	r5, #0
.Lm943_3494:
	add	r0, r6, r5
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm943_3486
	add	r5, #1
	cmp	r5, #8
	bls	.Lm943_3494
	mov	r0, #0
.Lm943_34a6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_943_200b464

