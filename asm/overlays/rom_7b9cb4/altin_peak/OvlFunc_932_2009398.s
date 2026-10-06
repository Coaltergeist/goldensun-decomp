	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2009398
	push	{r5, r6, lr}
	bl	__CutsceneStart
	ldr	r5, =0x1953
	mov	r1, #1
	mov	r0, r5
	bl	__Func_801776c
	ldr	r0, =0x908
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_13b4
	b	.Lm932_1640
.Lm932_13b4:
	ldr	r0, =0xf14
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_13c0
	b	.Lm932_1640
.Lm932_13c0:
	ldr	r0, =0x205
	bl	__SetFlag
	mov	r0, #0
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r0, #0
	ldr	r1, =0x316
	mov	r2, #0x8c
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc3
	mov	r0, #0
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm932_1406
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #1
	bl	__MapActor_SetPos
.Lm932_1406:
	mov	r0, #1
	ldr	r1, =0xcccc
	ldr	r2, =0x6666
	bl	__MapActor_SetSpeed
	mov	r1, #0xc8
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r2, #0x14
	lsl	r1, #8
	mov	r0, #1
	bl	__Func_8092adc
	add	r0, r5, #1
	bl	__MessageID
	mov	r1, #4
	mov	r0, #1
	bl	__MapActor_SetAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #1
	mov	r1, #6
	mov	r2, #0
	bl	__MapActor_Jump
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	mov	r0, #1
	bl	__MapActor_SetSpeed
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r5, #0xfe
	mov	r3, r5
	and	r3, r2
	mov	r1, #0xc6
	strb	r3, [r0]
	lsl	r1, #2
	mov	r2, #0x6e
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r6, #1
	orr	r3, r6
	strb	r3, [r0]
	mov	r0, #0xa1
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r1, #0xc6
	and	r5, r3
	lsl	r1, #2
	mov	r2, #0x78
	strb	r5, [r0]
	mov	r0, #1
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #1
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	orr	r6, r3
	strb	r6, [r0]
	mov	r1, #1
	mov	r0, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x101
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r0, #1
	ldr	r1, =0x101
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r0, #1
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0x81
	mov	r0, #1
	lsl	r1, #1
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #1
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r0, #1
	mov	r1, #2
	bl	__Func_809259c
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r2, #0xa0
	lsl	r2, #9
	mov	r0, #1
	lsl	r1, #10
	bl	__MapActor_SetSpeed
	mov	r0, #1
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r1, #0xc7
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8a
	bl	__MapActor_TravelToWait
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0x8c
	bl	__MapActor_TravelToWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xc9
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__MapActor_TravelToWait
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xa6
	bl	__MapActor_TravelToWait
	mov	r1, #0xbf
	mov	r0, #1
	lsl	r1, #2
	mov	r2, #0xc6
	bl	__MapActor_TravelToWait
	mov	r0, #1
	ldr	r1, =0x312
	mov	r2, #0xc6
	bl	__MapActor_TravelToWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0
	bl	__MapActor_Emote
	mov	r2, #0xf6
	mov	r0, #1
	ldr	r1, =0x312
	bl	__MapActor_TravelToWait
	mov	r0, #1
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xa
	bl	OvlFunc_932_2008ec0
.Lm932_1640:
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009398

