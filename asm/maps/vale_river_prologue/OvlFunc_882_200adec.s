	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200adec
	push	{r5, r6, r7, lr}
	mov	r0, #0x84
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm882_2dfc
	b	.Lm882_3164
.Lm882_2dfc:
	ldr	r0, =0x841
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm882_2e08
	b	.Lm882_3164
.Lm882_2e08:
	bl	__CutsceneStart
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x16
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1a
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xd9
	ldr	r2, =0x557
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_2e62
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x16
	bl	__MapActor_SetPos
.Lm882_2e62:
	mov	r0, #0x16
	mov	r1, #0xeb
	ldr	r2, =0x557
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xb0
	mov	r0, #0x16
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_2e8c
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x1a
	bl	__MapActor_SetPos
.Lm882_2e8c:
	mov	r0, #0x1a
	mov	r1, #0xc7
	ldr	r2, =0x557
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xd0
	mov	r0, #0x1a
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xf7
	mov	r0, #0x19
	lsl	r1, #16
	ldr	r2, =0x4ba0000
	bl	__MapActor_SetPos
	mov	r1, #0xc0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #0x19
	bl	__Func_8092adc
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r2, [r1]
	mov	r6, #0xfe
	mov	r3, r6
	mov	r5, #0xd
	and	r3, r2
	neg	r5, r5
	ldrb	r2, [r4, #9]
	strb	r3, [r1]
	mov	r3, r5
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r4, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	add	r7, #0x23
	ldr	r4, [r0, #0x50]
	ldrb	r3, [r7]
	and	r6, r3
	ldrb	r3, [r4, #9]
	and	r5, r3
	mov	r3, #8
	orr	r5, r3
	strb	r6, [r7]
	strb	r5, [r4, #9]
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm882_2f10
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #8
	bl	__MapActor_SetPos
.Lm882_2f10:
	mov	r0, #8
	mov	r1, #0xdd
	ldr	r2, =0x569
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xb0
	mov	r2, #0x3c
	mov	r0, #8
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r1, #2
	mov	r0, #0x1a
	bl	__Func_80925cc
	ldr	r0, =0xec6
	bl	__MessageID
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0x28
	bl	__ActorMessage_Wait
	mov	r1, #0xca
	mov	r0, #9
	lsl	r1, #15
	ldr	r2, =0x4ad0000
	bl	__MapActor_SetPos
	mov	r1, #0x80
	mov	r0, #9
	lsl	r1, #6
	mov	r2, #0
	bl	__Func_8092adc
	ldr	r0, =0x1009
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xa0
	mov	r2, #0
	mov	r0, #0x1a
	lsl	r1, #8
	bl	__Func_8092adc
	ldr	r0, =0x13333
	ldr	r1, =0x2666
	bl	__Func_80933d4
	mov	r0, #0xca
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #15
	neg	r1, r1
	ldr	r2, =0x4ad0000
	bl	__Func_80933f8
	ldr	r2, =0xb333
	mov	r0, #9
	ldr	r1, =0x16666
	bl	__MapActor_SetSpeed
	ldr	r1, =gScript_882__0200cd1c
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0xbb
	mov	r1, #1
	mov	r2, #0xa6
	mov	r3, #1
	lsl	r2, #19
	neg	r1, r1
	lsl	r0, #16
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	mov	r0, #0x1a
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #9
	mov	r1, #2
	bl	__Func_80925cc
	mov	r2, #0x14
	ldr	r0, =0x4009
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xdd
	mov	r1, #1
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	ldr	r2, =0x5690000
	bl	__Func_80933f8
	mov	r0, #0
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x16
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_Face
	mov	r1, #0xc0
	mov	r0, #0x1a
	lsl	r1, #6
	mov	r2, #0x50
	bl	__Func_8092adc
	mov	r0, #0xb6
	mov	r1, #1
	mov	r2, #0xaa
	mov	r3, #1
	lsl	r0, #16
	neg	r1, r1
	lsl	r2, #19
	bl	__Func_80933f8
	mov	r2, #0xad
	mov	r0, #8
	mov	r1, #0xb6
	lsl	r2, #3
	bl	__MapActor_TravelToAnimWait
	mov	r2, #0
	mov	r1, #9
	mov	r0, #8
	bl	__MapActor_Face
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #0x1a
	mov	r1, #9
	bl	__MapActor_Face
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1a
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0x1a
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r1, #0xe0
	mov	r0, #9
	lsl	r1, #8
	mov	r2, #0x28
	bl	__Func_8092adc
	mov	r1, #0xc0
	mov	r2, #0x14
	mov	r0, #9
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r0, #9
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0x1a
	mov	r1, #8
	mov	r2, #0
	bl	__MapActor_TurnToFaceActor
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x16
	bl	__MapActor_TurnToFaceActor
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x16
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r0, #0x1a
	mov	r1, #9
	mov	r2, #0
	bl	__MapActor_Face
	mov	r2, #0
	mov	r0, #8
	mov	r1, #9
	bl	__MapActor_Face
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0xa
	mov	r0, #9
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x1a
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x16
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #8
	bl	__MapActor_DoAnim
	ldrb	r3, [r7]
	mov	r5, #1
	orr	r3, r5
	strb	r3, [r7]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r0
	add	r2, #0x23
	ldrb	r3, [r2]
	orr	r3, r5
	strb	r3, [r2]
	bl	OvlFunc_882_200b1ac
	ldr	r0, =0x841
	bl	__SetFlag
	bl	__CutsceneEnd
.Lm882_3164:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200adec

