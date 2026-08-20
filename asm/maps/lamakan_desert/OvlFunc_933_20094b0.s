	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_20094b0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	sub	sp, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_933_2009054
	ldr	r0, =0x90a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm933_14cc
	b	.Lm933_1618
.Lm933_14cc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm933_14dc
	b	.Lm933_1618
.Lm933_14dc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #1
	bl	OvlFunc_933_2009c78
	ldr	r3, =0xcba
	add	r7, r5, r3
	mov	r3, #0x96
	lsl	r3, #2
	mov	r8, r3
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r6, [r0, #0x24]
	mov	r0, #0
	bl	__MapActor_GetActor
	str	r6, [r0, #0x2c]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, #0x80
	lsl	r5, #24
	str	r5, [r0, #0x38]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, #1
	str	r5, [r0, #0x40]
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r2, #0
	mov	r1, #8
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	mov	r5, sp
	and	r3, r2
	strb	r3, [r0]
	str	r6, [r5]
	str	r6, [r5, #4]
	str	r6, [r5, #8]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r5
	ldrh	r1, [r0, #6]
	ldr	r0, =0xfff00000
	bl	__vec3_translate
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r1, #2
	mov	r0, #0
	bl	__MapActor_SetAnim
	ldr	r1, [r5]
	cmp	r1, #0
	bge	.Lm933_1594
	ldr	r3, =0xffff
	add	r1, r3
.Lm933_1594:
	ldr	r2, [r5, #8]
	asr	r1, #16
	cmp	r2, #0
	bge	.Lm933_15a0
	ldr	r3, =0xffff
	add	r2, r3
.Lm933_15a0:
	asr	r2, #16
	mov	r0, #0
	bl	__MapActor_TravelBy
	mov	r0, #0
	bl	__MapActor_WaitMovement
	mov	r0, #2
	bl	__CutsceneWait
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x94
	bl	__PlaySound
	mov	r1, #2
	mov	r0, #8
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xa0
	mov	r2, #0xa0
	mov	r0, #8
	lsl	r1, #10
	lsl	r2, #9
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x68
	bl	__MapActor_TravelToAnimWait
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #8
	lsl	r1, #8
	lsl	r2, #7
	bl	__MapActor_SetSpeed
	mov	r0, #8
	mov	r1, #0xa8
	mov	r2, #0x5c
	bl	__MapActor_TravelToAnimWait
	mov	r3, r8
	strh	r3, [r7]
	mov	r0, #0
	bl	OvlFunc_933_2009c78
.Lm933_1618:
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_20094b0

