	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_933_2009180
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #0x80
	mov	r3, #9
	lsl	r0, #2
	mov	r8, r3
	bl	__SetFlag
	mov	r7, #0x80
	lsl	r7, #13
	mov	r5, #9
.Lm933_11a8:
	mov	r0, r5
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm933_11ea
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	sub	r2, r3
	cmp	r2, #0
	bge	.Lm933_11c0
	ldr	r3, =0xffff
	add	r2, r3
.Lm933_11c0:
	asr	r1, r2, #16
	ldr	r3, [r0, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.Lm933_11d0
	ldr	r2, =0xffff
	add	r0, r2
.Lm933_11d0:
	mov	r2, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.Lm933_11da
	neg	r2, r2
.Lm933_11da:
	cmp	r0, #0
	bge	.Lm933_11e0
	neg	r0, r0
.Lm933_11e0:
	add	r0, r2, r0
	cmp	r0, r7
	bge	.Lm933_11ea
	mov	r8, r5
	mov	r7, r0
.Lm933_11ea:
	add	r5, #1
	cmp	r5, #0xc
	ble	.Lm933_11a8
	mov	r1, #1
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	mov	r2, #0
	mov	r1, r8
	mov	r0, #0
	bl	__MapActor_Face
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0x81
	mov	r0, #0
	lsl	r1, #1
	bl	__MapActor_Surprise
	mov	r1, #2
	mov	r0, #0
	bl	__Func_809259c
	mov	r0, #0x3c
	bl	__CutsceneWait
	ldr	r1, =0x101
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldrh	r3, [r0, #6]
	lsl	r2, #8
	add	r3, r2
	ldr	r2, .Lm933_1284	@ 0xfffff000
	and	r3, r2
	strh	r3, [r5, #6]
	mov	r0, #0
	mov	r1, #5
	bl	__MapActor_SetAnim
	mov	r0, #0
	mov	r1, #0x18
	bl	__MapActor_SetAnimSpeed
	mov	r0, #0
	ldr	r1, =0x1999
	ldr	r2, =0xccc
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_933_2008344
	str	r3, [r0, #0x6c]
	mov	r0, r8
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm933_12ae
	b	.Lm933_12a0

	.align	2, 0
.Lm933_1284:
	.word	0xfffff000
	.pool

.Lm933_12a0:
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0
	bl	__MapActor_TravelTo
.Lm933_12ae:
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x82
	mov	r2, #0
	mov	r0, r8
	lsl	r1, #1
	bl	__MapActor_Emote
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #0x80
	lsl	r1, #1
	mov	r0, #0
	bl	__MapActor_Surprise
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r3, [r0]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0
	str	r3, [r0, #0x6c]
	mov	r1, #4
	mov	r0, #0x35
	bl	__StartMapBattle
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_933_2009180

