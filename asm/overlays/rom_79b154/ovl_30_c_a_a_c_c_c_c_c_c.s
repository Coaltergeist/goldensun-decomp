	.include "macros.inc"

	.section .text.after_8328, "ax", %progbits

.thumb_func_start OvlFunc_907_2008404
	push	{r5, r6, r7, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #6
	beq	.L420
	b	.L554
.L420:
	bl	__CutsceneStart
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_8092b08
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	bl	__MapActor_SetSpeed
	ldr	r1, =0x3333
	ldr	r2, =0x1999
	mov	r0, #0xb
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldr	r6, =0xffff0000
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	mov	r1, #0x81
	strb	r2, [r3]
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__MapActor_Surprise
	mov	r5, #0x80
	mov	r0, #0
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	lsl	r5, #9
	mov	r0, #0xb
	mov	r1, #0x6f
	mov	r2, #0xc4
	bl	__Func_8092158
	mov	r2, #0xb9
	mov	r1, #0x80
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	mov	r0, #0xb
	mov	r1, #0x79
	mov	r2, #0xbe
	bl	__Func_8092158
	mov	r2, #0xbd
	mov	r1, #0x8d
	mov	r0, #0
	str	r5, [r7, #0x18]
	bl	__Func_80921c4
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	str	r6, [r7, #0x18]
	bl	__MapActor_Surprise
	mov	r0, #0
	mov	r1, #0x10
	bl	__MapActor_SetAnim
	mov	r1, #0x84
	mov	r2, #0xba
	mov	r0, #0xb
	bl	__Func_8092158
	str	r5, [r7, #0x18]
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
	ldr	r1, =0x9999
	mov	r0, #0
	ldr	r2, =0x4ccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #0xa6
	mov	r2, #0xb9
	bl	__Func_80921c4
	mov	r1, #0x80
	mov	r2, #0x14
	mov	r0, #0
	lsl	r1, #8
	bl	__Func_8092adc
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_8092b08
	mov	r1, #0xb
	mov	r0, #0
	bl	__Field_MindRead
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r0, =0x1774
	bl	__MessageID
	mov	r1, #0
	mov	r0, #0xb
	bl	__ActorMessage
	bl	__Func_8097608
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r0, =0x848
	bl	__SetFlag
	bl	__CutsceneEnd
.L554:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008404

