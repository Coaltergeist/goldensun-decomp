	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008584
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm907_59a
	b	.Lm907_85c
.Lm907_59a:
	ldr	r0, =0x848
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm907_5a6
	b	.Lm907_85c
.Lm907_5a6:
	bl	__CutsceneStart
	ldr	r0, =0x26666
	ldr	r1, =0x4ccc
	bl	__Func_80933d4
	mov	r1, #1
	mov	r2, #0xad
	lsl	r2, #16
	mov	r3, #1
	ldr	r0, =0x1070000
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	ldr	r2, [r0, #8]
	cmp	r2, r3
	ble	.Lm907_60a
	mov	r1, #0xa0
	mov	r0, #0xd
	lsl	r1, #7
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xd
	bl	__MapActor_Emote
	ldr	r0, =0x1775
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	b	.Lm907_63e
.Lm907_60a:
	mov	r1, #0xc0
	mov	r0, #0xc
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #1
	mov	r2, #0x14
	mov	r0, #0xc
	bl	__MapActor_Emote
	ldr	r0, =0x1775
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
.Lm907_63e:
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xd
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x86
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xb8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x28
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0xc
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r1, #0xc0
	mov	r0, #0xe
	lsl	r1, #6
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #0xc
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0xa
	mov	r0, #0xd
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #0xe
	mov	r1, #1
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage
	ldr	r1, =0x9999
	ldr	r2, =0x4ccc
	mov	r0, #0xe
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0x85
	mov	r2, #0xac
	strb	r3, [r0]
	lsl	r1, #1
	mov	r0, #0xe
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, #0xa
	mov	r0, #0xe
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r0, =0x177a
	mov	r1, #1
	bl	__Func_801776c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xc2
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xc2
	bl	__Func_8091a58
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0xe
	bl	__MapActor_SetSpeed
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0x83
	and	r5, r3
	mov	r2, #0x9c
	lsl	r1, #1
	strb	r5, [r0]
	mov	r0, #0xe
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0xe
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0xa
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0xe
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r5, =ActorCmd_ARRAY_907__020091c0
	mov	r1, #0x80
	mov	r0, #0xc
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xd
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #9
	mov	r2, r5
	bl	__Func_8092a1c
	ldr	r0, =0x849
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm907_85c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008584

