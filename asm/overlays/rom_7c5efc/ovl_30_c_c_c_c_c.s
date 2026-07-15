	.include "macros.inc"

.thumb_func_start OvlFunc_941_2009448
	push	{r5, lr}
	mov	r0, #1
	ldr	r1, =0x105
	mov	r2, #0x3c
	bl	__MapActor_Emote
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	ldr	r5, =0x254e
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r1, #0xd
	mov	r0, #2
	bl	__Func_809280c
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #0xd
	mov	r1, #2
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0x46
	ldr	r1, =0x105
	mov	r0, #0xd
	bl	__MapActor_Emote
	add	r0, r5, #3
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r0, r5, #4
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_809228c
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x84
	mov	r1, #0x9c
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x84
	mov	r1, #0xa4
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0x6e
	bl	__CutsceneWait
	add	r0, r5, #5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x1e
	bl	__CutsceneWait
	add	r0, r5, #6
	bl	__MessageID
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	add	r0, r5, #7
	bl	__MessageID
	mov	r1, #0
	mov	r0, #2
	bl	__ActorMessage
	mov	r0, #0x8c
	bl	__CutsceneWait
	add	r5, #8
	mov	r2, #0
	mov	r1, #0
	mov	r0, #1
	bl	__Func_809280c
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16bc
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L16bc:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L16ec
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L16ec:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L171c
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L171c:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r2, #0
	mov	r1, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8093500
	bl	__Func_8093530
	mov	r0, #0
	mov	r1, #0
	bl	__SetCameraTarget
	ldr	r0, =0x94f
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2009448

.thumb_func_start OvlFunc_941_2009760
	push	{r5, lr}
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #1
	bl	__Func_8092adc
	ldr	r5, =0x2558
	mov	r0, r5
	bl	__MessageID
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #2
	bl	__MapActor_DoAnim
	add	r0, r5, #1
	bl	__MessageID
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__MessageID
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0
	mov	r0, #0xc
	lsl	r1, #6
	bl	__Func_8092adc
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_DoAnim
	add	r5, #3
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	bl	__MessageID
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #3
	bl	__MapActor_SetAnim
	mov	r0, #0x50
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0xd
	bl	__Func_809228c
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r1, #1
	mov	r0, #0xd
	bl	__MapActor_SetAnim
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r1, #0xa0
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0xd
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #1
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #2
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r0, #3
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r2, #0x84
	mov	r1, #0x98
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r2, #0x84
	mov	r1, #0xa0
	lsl	r2, #2
	mov	r0, #0xd
	bl	__Func_809218c
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0xc
	bl	__Func_809218c
	mov	r0, #0xd
	bl	__MapActor_WaitMovement
	mov	r2, #0xa0
	mov	r0, #0xd
	mov	r1, #0xa8
	lsl	r2, #2
	bl	__Func_809218c
	mov	r1, #0xa0
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xa0
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r0, #0
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #2
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #3
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	lsl	r1, #7
	mov	r2, #0
	mov	r0, #1
	bl	__Func_8092adc
	mov	r0, #0xc8
	bl	__CutsceneWait
	mov	r0, #0xd
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1954
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #1
	bl	__MapActor_TravelTo
.L1954:
	mov	r0, #1
	bl	__MapActor_WaitMovement
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #2
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L1984
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #2
	bl	__MapActor_TravelTo
.L1984:
	mov	r0, #2
	bl	__MapActor_WaitMovement
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #3
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L19b4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #3
	bl	__MapActor_TravelTo
.L19b4:
	mov	r0, #3
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #3
	bl	__MapActor_SetPos
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0x10
	mov	r2, #0
	neg	r1, r1
	mov	r0, #0
	bl	__Func_809228c
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #0
	mov	r1, #1
	bl	__Func_8093500
	mov	r2, #0xa0
	mov	r1, #0xa8
	lsl	r2, #2
	mov	r0, #0
	bl	__Func_809218c
	mov	r0, #0x3c
	bl	__CutsceneWait
	bl	__MapTransitionOut
	mov	r0, #3
	bl	__Func_8091e9c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_941_2009760

	.section .data
	.global gOvl_02009cac
	.global .L1cc0
	.global .L1cd8
	.global gOvl_02009dd4
	.global gOvl_02009c34
	.global MapEntrance_ARRAY_941__02009c34
	.global gScript_885__02009c34
gOvl_02009c34:
MapEntrance_ARRAY_941__02009c34:
gScript_885__02009c34:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1c34, (0x1cac-0x1c34)
gOvl_02009cac:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cac, (0x1cc0-0x1cac)
.L1cc0:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cc0, (0x1cd8-0x1cc0)
.L1cd8:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1cd8, (0x1dd4-0x1cd8)
gOvl_02009dd4:
	.incbin "overlays/rom_7c5efc/orig.bin", 0x1dd4
