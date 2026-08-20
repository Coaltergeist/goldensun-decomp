	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200a8e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__CutsceneStart
	bl	__Func_808c4c0
	ldr	r0, =0x16666
	mov	r1, #6
	bl	__Func_80936a0
	mov	r0, #0xc0
	mov	r1, #0xc0
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r1, #1
	mov	r3, #1
	ldr	r0, =0x17880000
	neg	r1, r1
	ldr	r2, =0xd680000
	bl	__Func_80933f8
	ldr	r2, =0x6666
	mov	r0, #0
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r3, r5
	add	r3, #0x5b
	mov	r7, #0
	strb	r7, [r3]
	mov	r0, r5
	bl	__Actor_Stop
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xd680000
	cmp	r3, r2
	ble	.Lm881_2964
	ldr	r3, [r5, #8]
	ldr	r1, =0x176e0000
	cmp	r3, r1
	ble	.Lm881_297c
	mov	r0, r5
	ldr	r2, [r5, #0xc]
	ldr	r3, =0xd7d0000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	b	.Lm881_297c
.Lm881_2964:
	ldr	r3, [r5, #8]
	ldr	r1, =0x177a0000
	cmp	r3, r1
	ble	.Lm881_297c
	mov	r0, r5
	ldr	r2, [r7, #0xc]
	ldr	r3, =0xd480000
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
.Lm881_297c:
	ldr	r3, =0xd680000
	mov	r2, #0
	ldr	r1, =0x17690000
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r0, r5
	bl	__Actor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r2, #0x28
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8092adc
	bl	__Func_808c44c
	mov	r1, #2
	mov	r0, #0
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #0x1c
	bl	__MapActor_SetAnim
	ldr	r1, [r5, #8]
	mov	r3, #0x80
	lsl	r3, #10
	mov	r2, #0x98
	add	r1, r3
	mov	r0, #0x16
	ldr	r3, [r5, #0x10]
	lsl	r2, #14
	bl	__CreateActor
	mov	r7, r0
	cmp	r7, #0
	beq	.Lm881_2a30
	mov	r1, #0
	add	r0, #0x55
	strb	r1, [r0]
	ldr	r6, [r7, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r1, [r3]
	add	r3, #1
	strb	r1, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	mov	r1, #0xc1
	strb	r3, [r6, #9]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r5, r0
	mov	r0, #0xf2
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r5, r2
	mov	r1, #0x80
	mov	r2, r5
	ldrb	r0, [r6, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r3, =OvlFunc_881_200813c
	mov	r0, #0x50
	str	r3, [r7, #0x6c]
	bl	__CutsceneWait
.Lm881_2a30:
	ldr	r6, =.Lm881_679c
	ldr	r0, [r6]
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	mov	r8, r3
	mov	r2, r8
	strh	r2, [r0, #6]
	mov	r1, #0x80
	mov	r2, #0
	ldr	r0, [r6]
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r1, #2
	ldr	r0, [r6]
	bl	__Func_80925cc
	ldr	r3, =0x2644
	mov	r10, r3
	mov	r0, r10
	bl	__MessageID
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x50
	bl	__ActorMessage_Wait
	cmp	r7, #0
	beq	.Lm881_2a74
	mov	r0, r7
	bl	__DeleteActor
.Lm881_2a74:
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #6
	mov	r2, #0x28
	bl	__MapActor_Jump
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0xe0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	ldr	r0, [r6]
	lsl	r1, #8
	mov	r2, #0x14
	bl	__Func_8092adc
	mov	r5, #0x90
	ldr	r0, [r6]
	lsl	r5, #8
	mov	r2, #0x28
	orr	r0, r5
	mov	r1, #0
	bl	__ActorMessage_Wait
	ldr	r0, [r6]
	mov	r1, #4
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #0
	orr	r0, r5
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	ldr	r0, [r6]
	mov	r1, r8
	mov	r2, #0x14
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	ldr	r2, =0x6666
	ldr	r0, [r6]
	ldr	r1, =0xcccc
	bl	__MapActor_SetSpeed
	mov	r1, #2
	ldr	r0, [r6]
	bl	__MapActor_SetAnim
	mov	r0, #0x37
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r2, [r7, #0xc]
	ldr	r1, =0x177a0000
	ldr	r3, =0xd480000
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	ldr	r3, =0xd580000
	mov	r2, #0
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r0, #0x37
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0xa0
	mov	r2, #0xa
	ldr	r0, [r6]
	lsl	r1, #7
	bl	__Func_8092adc
	ldr	r0, [r6]
	mov	r1, #1
	bl	__Func_80925cc
	ldr	r0, [r6]
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
	mov	r1, #0
	mov	r2, #0x14
	bl	__ActorMessage_Wait
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	ldr	r0, [r6]
	bl	__MapActor_SetSpeed
	mov	r0, #0x37
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #2
	mov	r0, #0x37
	bl	__MapActor_SetAnim
	mov	r3, #0xd6
	mov	r2, #0
	lsl	r3, #20
	ldr	r1, =0x176d0000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r1, #1
	mov	r0, #0x37
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x37
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r2, #0
	ldr	r3, =0xd580000
	ldr	r1, =0x17710000
	mov	r0, r7
	bl	__Actor_TravelTo
	mov	r0, r7
	bl	__Actor_WaitMovement
	mov	r0, #0x37
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r10
	mov	r1, #1
	add	r0, #6
	bl	__Func_801776c
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xf2
	bl	__Func_8078a08
	mov	r0, #0x14
	bl	__CutsceneWait
	ldr	r0, [r6]
	mov	r1, #4
	bl	__MapActor_SetAnim
	mov	r2, #0xa
	ldr	r0, [r6]
	mov	r1, #0
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #3
	bl	__MapActor_DoAnim
	ldr	r0, [r6]
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_2c20
	mov	r2, #0xa
	ldrsh	r1, [r0, r2]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	ldr	r0, [r6]
	bl	__MapActor_TravelTo
.Lm881_2c20:
	ldr	r0, [r6]
	bl	__MapActor_WaitMovement
	mov	r2, #0
	ldr	r0, [r6]
	mov	r1, #0
	bl	__MapActor_SetPos
	bl	__Func_808c4c0
	mov	r0, #0x80
	mov	r1, #6
	lsl	r0, #9
	bl	__Func_80936a0
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	OvlFunc_881_200a7dc
	ldr	r0, [r6]
	bl	__DeleteFieldActor
	mov	r0, #0x8d
	lsl	r0, #2
	bl	__ClearFlag
	ldr	r0, =0x85d
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200a8e8

