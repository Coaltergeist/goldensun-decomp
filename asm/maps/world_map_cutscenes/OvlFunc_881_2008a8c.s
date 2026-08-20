	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2008a8c
	push	{lr}
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	bl	__Func_808c44c
	ldr	r0, =0x94f
	bl	__SetFlag
	mov	r1, #0xb7
	mov	r0, #0xb
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__MapActor_SetPos
	mov	r1, #0x18
	mov	r2, #8
	mov	r0, #0xb
	bl	__MapActor_TravelBy
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0xb7
	mov	r0, #0xc
	lsl	r1, #21
	ldr	r2, =0x49c0000
	bl	__MapActor_SetPos
	mov	r1, #0xc
	mov	r2, #0x18
	mov	r0, #0xc
	bl	__MapActor_TravelBy
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r0, #0xb
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0xd0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0xc
	bl	__Func_8092adc
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #3
	bl	__MapActor_SetAnim
	mov	r1, #3
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r2, #0x97
	ldr	r1, =0x16f80000
	lsl	r2, #19
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xc
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_b48
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xc
	bl	__MapActor_TravelTo
.Lm881_b48:
	mov	r0, #0xc
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xb
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_b7e
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__MapActor_TravelTo
.Lm881_b7e:
	mov	r0, #0xb
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm881_bb4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__MapActor_TravelTo
.Lm881_bb4:
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0
	bl	__MapActor_SetPos
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r1, #0x38
	mov	r2, #8
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #0x28
	mov	r2, #0x28
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	mov	r1, #8
	mov	r2, #0x58
	mov	r0, #8
	bl	__MapActor_TravelBy
	mov	r0, #8
	bl	__MapActor_WaitMovement
	bl	__MapTransitionOut
	mov	r0, #0x6c
	bl	__Func_8091e9c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008a8c

