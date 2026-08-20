	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2008c00
	push	{r5, lr}
	mov	r0, #0x10
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x809
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c16
	b	.Lm890_d80
.Lm890_c16:
	ldr	r0, =0x814
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_c26
	bl	OvlFunc_890_2008108
	b	.Lm890_d80
.Lm890_c26:
	ldr	r0, =0x819
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_c32
	b	.Lm890_d80
.Lm890_c32:
	bl	__CutsceneStart
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetAnim
	ldr	r0, =_MSG_1000
	bl	__MessageID
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c5a
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c84
.Lm890_c5a:
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_c6e
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0x10
	bl	__MapActor_SetPos
.Lm890_c6e:
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	b	.Lm890_cbc
.Lm890_c84:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_c9a
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lm890_cbc
.Lm890_c9a:
	mov	r1, #0xc4
	mov	r2, #0xa8
	lsl	r1, #17
	lsl	r2, #16
	mov	r0, #0x10
	bl	__MapActor_SetPos
	mov	r0, #4
	bl	__CutsceneWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x10
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
.Lm890_cbc:
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_cd2
	mov	r2, #0xaa
	ldr	r3, [r5, #8]
	lsl	r2, #17
	cmp	r3, r2
	ble	.Lm890_ce0
.Lm890_cd2:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	b	.Lm890_ce6
.Lm890_ce0:
	ldr	r0, =0x80a
	bl	__GetFlag
.Lm890_ce6:
	mov	r1, #0x90
	mov	r0, #0x10
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0xc0
	mov	r0, #0
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r0, #0x10
	lsl	r1, #7
	mov	r2, #0xa
	bl	__Func_8092adc
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0xa
	bl	__ActorMessage_Wait
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r0, #0x81
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_d32
	ldr	r0, =0x80a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm890_d70
.Lm890_d32:
	mov	r0, #0x10
	mov	r1, #2
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm890_d52
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0x10
	bl	__MapActor_TravelTo
.Lm890_d52:
	mov	r0, #0x10
	bl	__MapActor_WaitMovement
	mov	r0, #0x10
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xe8
	bl	__MapActor_TravelToAnimWait
	b	.Lm890_d7c
.Lm890_d70:
	mov	r1, #0x90
	mov	r0, #0
	lsl	r1, #1
	mov	r2, #0xf8
	bl	__MapActor_TravelToAnimWait
.Lm890_d7c:
	bl	__CutsceneEnd
.Lm890_d80:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008c00

