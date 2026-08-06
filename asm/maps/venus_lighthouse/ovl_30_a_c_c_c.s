	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008cc8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0
	sub	sp, #0xc
	bl	__MapActor_GetActor
	mov	r2, #0x55
	mov	r5, r0
	add	r2, r5
	ldrb	r3, [r2]
	ldr	r7, =0xfff00000
	mov	r9, r3
	ldr	r3, [r5, #8]
	mov	r8, r2
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	mov	r6, sp
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r2, #0x80
	ldrh	r1, [r5, #6]
	lsl	r2, #6
	mov	r3, #0xc0
	lsl	r3, #8
	add	r1, r2
	mov	r0, #0x80
	and	r1, r3
	lsl	r0, #13
	mov	r2, r6
	mov	r10, r3
	bl	__vec3_translate
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #1
	beq	.Lm968_dec
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	bne	.Lm968_dec
	ldr	r3, [r5, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r7
	add	r3, r2
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	and	r3, r7
	add	r3, r2
	str	r3, [r6, #8]
	mov	r3, #0x80
	ldrh	r1, [r5, #6]
	lsl	r3, #6
	add	r1, r3
	mov	r2, r10
	mov	r0, #0x80
	and	r1, r2
	lsl	r0, #14
	mov	r2, r6
	bl	__vec3_translate
	mov	r0, r6
	mov	r1, r5
	bl	OvlFunc_968_200832c
	cmp	r0, #0
	bne	.Lm968_dec
	mov	r0, r5
	mov	r1, r6
	bl	__TestCollision
	cmp	r0, #0
	bne	.Lm968_dec
	bl	__CutsceneStart
	mov	r1, #6
	mov	r0, r5
	bl	__Actor_SetAnim
	mov	r0, #6
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x28]
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #0x7e
	and	r3, r2
	mov	r2, r8
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #0xa
	ldrsh	r2, [r6, r3]
	mov	r3, #2
	ldrsh	r1, [r6, r3]
	mov	r0, #0
	bl	__MapActor_TravelToWait
	mov	r0, r5
	mov	r1, #6
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	mov	r2, r9
	mov	r3, r8
	strb	r2, [r3]
	bl	__CutsceneEnd
	mov	r0, #1
	b	.Lm968_dee
.Lm968_dec:
	mov	r0, #0
.Lm968_dee:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_968_2008cc8

.thumb_func_start VenusLighthouse_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb5
	cmp	r2, r3
	bne	.Lm968_e1c
	ldr	r0, =.Lm968_5d68
	b	.Lm968_e46
.Lm968_e1c:
	ldr	r3, =0xb7
	cmp	r2, r3
	bne	.Lm968_e26
	ldr	r0, =.Lm968_6020
	b	.Lm968_e46
.Lm968_e26:
	ldr	r3, =0xb8
	cmp	r2, r3
	bne	.Lm968_e30
	ldr	r0, =.Lm968_6230
	b	.Lm968_e46
.Lm968_e30:
	ldr	r3, =0xb9
	cmp	r2, r3
	bne	.Lm968_e3a
	ldr	r0, =.Lm968_6350
	b	.Lm968_e46
.Lm968_e3a:
	ldr	r3, =0xba
	cmp	r2, r3
	bne	.Lm968_e44
	ldr	r0, =.Lm968_6548
	b	.Lm968_e46
.Lm968_e44:
	ldr	r0, =.Lm968_5dc8
.Lm968_e46:
	pop	{r1}
	bx	r1
.func_end VenusLighthouse_GetEntrances

