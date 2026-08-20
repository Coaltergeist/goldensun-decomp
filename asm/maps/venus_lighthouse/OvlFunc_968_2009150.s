	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2009150
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	ldr	r1, =gScript_968__0200d21c
	mov	r0, #0
	bl	__MapActor_SetBehavior
	mov	r0, #0
	bl	__MapActor_WaitScript
	mov	r0, #0
	mov	r1, #6
	bl	__Func_8092950
	mov	r1, #0x80
	lsl	r1, #11
	mov	r2, #0x80
	str	r1, [r5, #0x28]
	mov	r0, #0
	lsl	r2, #10
	bl	__MapActor_SetSpeed
	ldr	r3, [r5, #0x10]
	asr	r3, #20
	cmp	r3, #0x36
	bgt	.Lm968_11a0
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xd2
	b	.Lm968_11b2
.Lm968_11a0:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0xee
.Lm968_11b2:
	mov	r3, #0xa
	ldrsh	r1, [r5, r3]
	lsl	r2, #2
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #1
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =OvlFunc_968_20085e4
	mov	r1, #0x81
	str	r3, [r5, #0x6c]
	mov	r2, #0x3c
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0
	mov	r1, #4
	bl	__MapActor_DoAnim
	mov	r3, #0
	str	r3, [r5, #0x6c]
	bl	__CutsceneEnd
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2009150

