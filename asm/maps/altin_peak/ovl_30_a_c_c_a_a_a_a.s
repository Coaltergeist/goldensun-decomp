	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lm932_224
	ldr	r0, =.Lm932_4940
	b	.Lm932_276
.Lm932_224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.Lm932_22e
	ldr	r0, =.Lm932_49a0
	b	.Lm932_276
.Lm932_22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.Lm932_238
	ldr	r0, =gScript_882__0200ca00
	b	.Lm932_276
.Lm932_238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.Lm932_242
	ldr	r0, =.Lm932_4a60
	b	.Lm932_276
.Lm932_242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.Lm932_24c
	ldr	r0, =.Lm932_4aa8
	b	.Lm932_276
.Lm932_24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.Lm932_256
	ldr	r0, =.Lm932_4b68
	b	.Lm932_276
.Lm932_256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_260
	ldr	r0, =.Lm932_4b98
	b	.Lm932_276
.Lm932_260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.Lm932_26a
	ldr	r0, =.Lm932_4c40
	b	.Lm932_276
.Lm932_26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.Lm932_274
	ldr	r0, =.Lm932_4cd0
	b	.Lm932_276
.Lm932_274:
	ldr	r0, =.Lm932_4928
.Lm932_276:
	pop	{r1}
	bx	r1
.func_end AltinPeak_GetActors

.thumb_func_start OvlFunc_932_20082cc
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_808e118
	bl	__CutsceneStart
	mov	r1, #0x16
	mov	r0, #0
	bl	__MapActor_SetAnim
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x98
	bl	__PlaySound
	ldr	r1, =0x33333
	ldr	r2, =0x19999
	mov	r0, #0
	bl	__MapActor_SetSpeed
	ldr	r1, [r5, #0xc]
	ldr	r2, [r6, #0xc]
	sub	r3, r1, r2
	cmp	r3, #0
	bge	.Lm932_312
	sub	r3, r2, r1
.Lm932_312:
	asr	r3, #14
	mov	r2, #0x80
	lsl	r3, #14
	lsl	r2, #11
	add	r3, r2
	str	r3, [r6, #0x28]
	mov	r0, #0
	mov	r1, #7
	bl	__MapActor_SetAnim
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	bl	__Actor_TravelTo
	mov	r0, #0xa
	bl	__WaitFrames
	ldr	r1, [r6, #0x50]
	ldrb	r3, [r1, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, #0
	bl	__MapActor_WaitMovement
	b	.Lm932_350
.Lm932_34a:
	mov	r0, #1
	bl	__WaitFrames
.Lm932_350:
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	asr	r2, #14
	asr	r3, #14
	cmp	r2, r3
	blt	.Lm932_34a
	bl	__CutsceneEnd
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #0
	bl	OvlFunc_932_200b850
	mov	r0, #0x14
	bl	__WaitFrames
	bl	__MapActor_PlayPendingSound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20082cc

.thumb_func_start OvlFunc_932_2008388
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4d
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008388

.thumb_func_start OvlFunc_932_20083b4
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x4f
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20083b4

.thumb_func_start OvlFunc_932_20083e0
	push	{lr}
	ldr	r3, =gState
	ldr	r2, =0x22b
	add	r3, r2
	mov	r2, #3
	strb	r2, [r3]
	ldr	r0, =0x51
	mov	r1, #0x63
	bl	__Func_8091f90
	mov	r0, #0x35
	mov	r1, #2
	bl	__StartMapBattle
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20083e0

.thumb_func_start OvlFunc_932_200840c
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm932_474
	mov	r3, #1
	mov	r7, #0x18
	mov	r6, #0x1a
	mov	r0, #0x18
	mov	r1, #0x1b
	mov	r2, #2
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
	ldr	r3, [r5, #8]
	asr	r3, #20
	cmp	r3, #0x19
	bne	.Lm932_44a
	str	r3, [sp]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp, #4]
	bl	__Func_8010704
	b	.Lm932_45a
.Lm932_44a:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	str	r7, [sp]
	str	r6, [sp, #4]
	bl	__Func_8010704
.Lm932_45a:
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm932_474:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200840c

