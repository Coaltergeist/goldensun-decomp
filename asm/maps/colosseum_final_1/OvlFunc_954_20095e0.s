	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_954_20095e0
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	mov	r5, r0
	cmp	r3, #2
	bne	.Lm954_15fa
	bl	OvlFunc_common1_2c4
	b	.Lm954_16d6
.Lm954_15fa:
	bl	__CutsceneStart
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_common1_4cc
	mov	r6, r0
	cmp	r6, #0
	bne	.Lm954_16b6
	ldr	r0, =0x2095
	bl	__MessageID
	bl	OvlFunc_954_2008134
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0xd2
	mov	r1, #1
	mov	r2, #0xd8
	mov	r3, #1
	lsl	r2, #16
	lsl	r0, #18
	neg	r1, r1
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	bl	OvlFunc_954_2008158
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xb8
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	OvlFunc_common1_1078
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	bl	OvlFunc_954_2008178
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0xcc
	lsl	r1, #2
	mov	r2, #0xc8
	mov	r0, #0
	bl	__MapActor_TravelToAnimWait
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r2, #0x3c
	mov	r0, #0
	ldr	r1, =0x105
	bl	__MapActor_Emote
	mov	r1, #0
	mov	r0, r5
	bl	__ActorMessage
	mov	r0, #0
	bl	OvlFunc_common1_1254
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	mov	r0, r5
	mov	r1, #3
	bl	OvlFunc_common1_588
	b	.Lm954_16c8
.Lm954_16b6:
	cmp	r6, #1
	bne	.Lm954_16c8
	ldr	r0, =0x2094
	bl	__MessageID
	mov	r0, r5
	mov	r1, #0
	bl	__ActorMessage
.Lm954_16c8:
	mov	r1, r5
	mov	r2, #3
	mov	r0, r6
	bl	OvlFunc_common1_5e4
	bl	__CutsceneEnd
.Lm954_16d6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_954_20095e0

