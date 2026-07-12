	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200820c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.L224
	ldr	r0, =.L4940
	b	.L276
.L224:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L22e
	ldr	r0, =.L49a0
	b	.L276
.L22e:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L238
	ldr	r0, =gScript_882__0200ca00
	b	.L276
.L238:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L242
	ldr	r0, =.L4a60
	b	.L276
.L242:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L24c
	ldr	r0, =.L4aa8
	b	.L276
.L24c:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L256
	ldr	r0, =.L4b68
	b	.L276
.L256:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L260
	ldr	r0, =.L4b98
	b	.L276
.L260:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L26a
	ldr	r0, =.L4c40
	b	.L276
.L26a:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L274
	ldr	r0, =.L4cd0
	b	.L276
.L274:
	ldr	r0, =.L4928
.L276:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_200820c

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
	bge	.L312
	sub	r3, r2, r1
.L312:
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
	b	.L350
.L34a:
	mov	r0, #1
	bl	__WaitFrames
.L350:
	ldr	r2, [r5, #0xc]
	ldr	r3, [r6, #0xc]
	asr	r2, #14
	asr	r3, #14
	cmp	r2, r3
	blt	.L34a
	bl	__CutsceneEnd
	mov	r0, #0x9f
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #0
	bl	OvlFunc_932_200b850
	mov	r0, #0x14
	bl	__WaitFrames
	bl	__Func_809202c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20082cc
