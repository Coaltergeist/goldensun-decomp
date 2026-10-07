	.include "macros.inc"
	.include "gba.inc"

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

