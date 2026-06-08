	.include "macros.inc"

.thumb_func_start OvlFunc_941_2009368
	push	{lr}
	ldr	r0, =0x254a
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_2009368

.thumb_func_start OvlFunc_941_2009394
	push	{r5, lr}
	mov	r0, #2
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #2
	bl	__MapActor_Emote
	ldr	r5, =0x255e
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #6
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x81
	mov	r2, #0x3c
	lsl	r1, #1
	mov	r0, #3
	add	r5, #2
	bl	__MapActor_Emote
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #3
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_2009394

.thumb_func_start OvlFunc_941_200941c
	push	{lr}
	ldr	r0, =0x255c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #1
	bl	__Func_8092c40
	mov	r1, #0
	mov	r0, #0
	bl	__Func_8091c7c
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r0, #1
	sub	r0, r3
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_200941c

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
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #1
	mov	r0, #3
	bl	__Func_80925cc
	add	r0, r5, #1
	bl	__Func_8092b94
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
	bl	__Func_8092b94
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
	bl	__Func_8092b94
	mov	r0, #0xd
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #4
	mov	r0, #0xc
	bl	__Func_8092548
	add	r0, r5, #4
	bl	__Func_8092b94
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
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #3
	bl	__Func_8092548
	mov	r0, #0x1e
	bl	__CutsceneWait
	add	r0, r5, #6
	bl	__Func_8092b94
	mov	r0, #3
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	add	r0, r5, #7
	bl	__Func_8092b94
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
	bl	__Func_8092b94
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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
	bl	__Func_8092b94
	mov	r0, #1
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #2
	bl	__Func_8092548
	add	r0, r5, #1
	bl	__Func_8092b94
	mov	r0, #2
	mov	r1, #0
	bl	__ActorMessage
	mov	r2, #0
	mov	r0, #0xd
	mov	r1, #2
	bl	__Func_809280c
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__CutsceneWait
	add	r0, r5, #2
	bl	__Func_8092b94
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
	bl	__Func_8092548
	add	r5, #3
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	bl	__Func_8092b94
	mov	r0, #0xc
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #3
	mov	r0, #0xd
	bl	__Func_8092548
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
	bl	__Func_8092548
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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
	bl	__Func_8092128
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

.thumb_func_start OvlFunc_941_2009a0c
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	mov	r5, #0x81
	lsl	r2, #1
	lsl	r5, #2
	str	r5, [r3, r2]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x6a
	cmp	r2, r3
	bne	.L1ab0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =0xf333
	str	r3, [r0, #0x1c]
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a6e
	bl	OvlFunc_941_2008210
.L1a6e:
	ldr	r0, =0x202
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a7c
	bl	OvlFunc_941_2008384
.L1a7c:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a8c
	bl	OvlFunc_941_20080d4
.L1a8c:
	ldr	r0, =0x203
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1a9e
	mov	r0, #0xb
	mov	r1, #5
	bl	__MapActor_SetAnim
.L1a9e:
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1ab0
	mov	r0, #9
	mov	r1, #5
	bl	__MapActor_SetAnim
.L1ab0:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_941_2009a0c

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
