	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8093e28  @ 0x08093e28
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =gState
	mov	r1, #0xfa
	mov	r8, r0
	lsl	r1, #1
	add	r1, r8
	ldr	r0, [r1]
	mov	r11, r1
	sub	sp, #0x18
	bl	MapActor_GetActor
	mov	r6, r0
	ldr	r3, =0xfff0
	mov	r2, #0xa
	ldrsh	r5, [r6, r2]
	mov	r1, #0x12
	ldrsh	r7, [r6, r1]
	and	r5, r3
	and	r7, r3
	mov	r0, #8
	mov	r2, #8
	add	r0, r5
	add	r2, r7
	mov	r10, r0
	mov	r9, r2
	bl	CutsceneStart
	mov	r3, #0xf9
	lsl	r3, #1
	add	r8, r3
	mov	r0, r8
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L93f2e
	mov	r3, r10
	cmp	r3, #0
	bge	.L93e82
	mov	r3, r5
	add	r3, #0x17
.L93e82:
	asr	r2, r3, #4
	mov	r3, r9
	cmp	r3, #0
	bge	.L93e8e
	mov	r3, r7
	add	r3, #0x17
.L93e8e:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r1, =gBuffer
	ldr	r0, =ewram_2010200
	lsl	r3, #2
	add	r2, r3, r1
	add	r3, r0
	ldrb	r2, [r2, #2]
	ldrb	r3, [r3, #2]
	cmp	r2, r3
	bne	.L93f72
	ldr	r3, [r6, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #0xc]
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r6, #0x10]
	str	r3, [r0, #8]
	bl	_Func_801219c
	mov	r7, r0
	cmp	r7, #0
	bne	.L93f72
	mov	r2, r11
	ldr	r0, [r2]
	mov	r1, r10
	mov	r2, r9
	bl	MapActor_TravelToWait
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r6, #0x30]
	mov	r1, #0xc0
	mov	r3, r11
	mov	r2, #0
	ldr	r0, [r3]
	lsl	r1, #8
	bl	Func_8092adc
	mov	r1, r11
	ldr	r0, [r1]
	bl	MapActor_WaitScript
	mov	r3, r6
	add	r3, #0x5a
	mov	r5, #1
	strb	r5, [r3]
	sub	r3, #5
	strb	r7, [r3]
	mov	r0, r6
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r0, r6
	mov	r1, #0xd
	bl	_Actor_SetAnim
	mov	r2, r10
	lsl	r1, r2, #16
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #0xc]
	mov	r0, r9
	add	r2, r3
	lsl	r3, r0, #16
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r1, r11
	ldr	r0, [r1]
	bl	MapActor_WaitMovement
	mov	r2, r8
	strb	r5, [r2]
	b	.L93f6a
.L93f2e:
	mov	r0, r6
	mov	r1, #0xa
	bl	_Actor_SetAnim
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #3
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, [r6, #0xc]
	mov	r0, r6
	str	r3, [r6, #0x14]
	mov	r1, #1
	bl	_Actor_SetSpriteFlags
	mov	r0, #6
	bl	CutsceneWait
	mov	r5, #0
	mov	r3, r8
	mov	r2, r6
	strb	r5, [r3]
	add	r2, #0x5a
	mov	r3, #1
	strb	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r6, #6]
.L93f6a:
	bl	CutsceneEnd
	mov	r0, #0
	b	.L93f7a
.L93f72:
	bl	CutsceneEnd
	mov	r0, #1
	neg	r0, r0
.L93f7a:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093e28

