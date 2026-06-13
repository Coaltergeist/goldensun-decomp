	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_200a030
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r3, [r3]
	sub	sp, #0x1c
	ldr	r2, [r2]
	mov	r0, #0xfa
	str	r3, [sp, #0xc]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	ldr	r1, [sp, #0xc]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r1, r3]
	mov	r8, r2
	mov	r2, r7
	add	r2, #0x55
	str	r2, [sp]
	ldrb	r3, [r2]
	str	r3, [sp, #4]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #4
	ldr	r1, =.L27f4
	and	r3, r2
	lsl	r3, #1
	ldrh	r6, [r1, r3]
	ldrsh	r3, [r1, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	bne	.L2086
	b	.L2356
.L2086:
	mov	r2, #0x10
	ldr	r4, [r7, #8]
	ldr	r1, =0xfff00000
	add	r2, sp
	mov	r11, r2
	mov	r2, #0x80
	and	r4, r1
	lsl	r2, #12
	add	r5, r4, r2
	mov	r3, r11
	str	r5, [r3]
	ldr	r3, [r7, #0x14]
	mov	r0, r11
	str	r3, [r0, #4]
	ldr	r0, [r7, #0x10]
	and	r0, r1
	add	r2, r0, r2
	mov	r1, r11
	str	r2, [r1, #8]
	cmp	r2, #0
	bge	.L20b4
	ldr	r3, =0x17ffff
	add	r2, r0, r3
.L20b4:
	asr	r3, r2, #20
	lsl	r2, r3, #7
	mov	r3, r5
	cmp	r3, #0
	bge	.L20c2
	ldr	r0, =0x17ffff
	add	r3, r4, r0
.L20c2:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =gBuffer
	lsl	r3, #2
	mov	r0, #0x80
	add	r5, r3, r1
	mov	r2, r11
	lsl	r0, #14
	mov	r1, r6
	bl	__vec3_translate
	mov	r2, r11
	ldr	r3, [r2, #8]
	cmp	r3, #0
	bge	.L20e4
	ldr	r0, =0xfffff
	add	r3, r0
.L20e4:
	asr	r3, #20
	mov	r1, r11
	lsl	r2, r3, #7
	ldr	r3, [r1]
	cmp	r3, #0
	bge	.L20f4
	ldr	r0, =0xfffff
	add	r3, r0
.L20f4:
	asr	r3, #20
	add	r3, r2, r3
	ldr	r1, =gBuffer
	lsl	r3, #2
	add	r1, r3, r1
	str	r1, [sp, #8]
	mov	r2, r8
	ldrb	r3, [r5, #2]
	ldr	r1, [r2, #4]
	cmp	r3, r1
	beq	.L211a
	ldr	r0, [sp, #8]
	ldrb	r3, [r0, #2]
	cmp	r3, r1
	bne	.L211a
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L211a
	b	.L2356
.L211a:
	bl	__CutsceneStart
	mov	r0, r7
	add	r1, sp, #0x10
	bl	__TestCollision
	mov	r10, r0
	cmp	r0, #0
	beq	.L212e
	b	.L2356
.L212e:
	mov	r1, r8
	ldr	r5, [r1, #0x18]
	cmp	r5, #0
	beq	.L2154
	mov	r3, r5
	add	r3, #0x64
	mov	r2, r10
	strh	r2, [r3]
	ldr	r1, =gScript_923__0200a7dc
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, r5
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, r10
	mov	r0, r8
	str	r3, [r0, #0x18]
.L2154:
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L2234
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L2234
	ldr	r6, [r0, #0x14]
	mov	r0, #0x1a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L21d4
	ldr	r1, [r5, #0x50]
	ldr	r3, [r6, #0x14]
	mov	r9, r1
	str	r3, [r5, #0x14]
	ldr	r1, =gScript_923__0200a7d0
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r2, r10
	strb	r2, [r3]
	mov	r0, r10
	add	r3, #0xf
	mov	r2, r5
	strh	r0, [r3]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r2, r11
	mov	r0, r11
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r5
	bl	__Actor_TravelTo
	mov	r1, r9
	cmp	r1, #0
	beq	.L21d0
	mov	r0, r9
	mov	r1, #6
	bl	__Sprite_SetAnim
	mov	r2, r9
	ldr	r3, .L21f4	@ 0
	add	r2, #0x26
	strb	r3, [r2]
.L21d0:
	mov	r2, r8
	str	r5, [r2, #0x18]
.L21d4:
	mov	r0, r8
	ldr	r3, [r0]
	sub	r5, r3, #1
	str	r5, [r0]
	cmp	r5, #0
	bne	.L2224
	ldr	r0, [r0, #0x14]
	bl	__DeleteActor
	mov	r1, r8
	str	r5, [r1, #0x14]
	ldr	r0, =0x161
	bl	__ClearFlag
	b	.L2234

	.align	2, 0
.L21f4:
	.word	0
	.pool

.L2224:
	mov	r2, r8
	ldr	r0, [r2, #0x14]
	cmp	r0, #0
	beq	.L2234
	mov	r1, #6
	sub	r1, r5
	bl	__Actor_SetAnim
.L2234:
	mov	r1, #6
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #3
	bl	__WaitFrames
	mov	r0, #0x98
	bl	__PlaySound
	mov	r0, r7
	mov	r1, #7
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r7, #0x30]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r7, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	ldr	r3, [sp]
	ldrb	r2, [r3]
	ldr	r0, [sp]
	mov	r3, #0x7e
	and	r3, r2
	strb	r3, [r0]
	mov	r1, #0
	mov	r0, r7
	bl	__Actor_SetSpriteFlags
	mov	r3, r11
	mov	r2, #2
	ldrsh	r1, [r3, r2]
	mov	r0, #0xa
	ldrsh	r2, [r3, r0]
	mov	r0, #0
	bl	__Func_8092158
	mov	r1, #6
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #2
	bl	__WaitFrames
	ldr	r1, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r1, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L22aa
	mov	r0, r7
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	b	.L22b0
.L22aa:
	mov	r0, #0xd7
	bl	__PlaySound
.L22b0:
	mov	r0, #1
	bl	__WaitFrames
	add	r1, sp, #4
	ldr	r2, [sp]
	ldrb	r1, [r1]
	strb	r1, [r2]
	ldr	r3, [sp, #8]
	mov	r0, r8
	ldrb	r2, [r3, #2]
	ldr	r3, [r0, #4]
	cmp	r2, r3
	bne	.L232a
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L232a
	mov	r1, #0x12
	mov	r0, r7
	bl	__Actor_SetAnim
	mov	r0, #0xf1
	bl	__PlaySound
	mov	r1, #0xf
	ldr	r6, =gKeyPress
	mov	r5, #0
	mov	r10, r1
	b	.L22f0
.L22e8:
	mov	r0, #1
	bl	__WaitFrames
	add	r5, #1
.L22f0:
	mov	r3, r5
	mov	r2, r10
	and	r3, r2
	cmp	r3, #0
	bne	.L2300
	mov	r0, r7
	bl	OvlFunc_923_2009bc8
.L2300:
	cmp	r5, #0x1f
	ble	.L22e8
	ldr	r3, [r6]
	cmp	r3, #0
	beq	.L22e8
	mov	r0, #0x90
	lsl	r0, #1
	bl	__PlaySound
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, r8
	ldr	r3, [r0, #0xc]
	str	r3, [r7, #8]
	ldr	r3, [r0, #0x10]
	mov	r1, #1
	str	r3, [r7, #0x10]
	mov	r0, r7
	bl	__Actor_SetSpriteFlags
.L232a:
	mov	r1, r8
	mov	r3, #0
	str	r3, [r1, #8]
	bl	__CutsceneEnd
	mov	r0, #0xd8
	ldr	r2, [sp, #0xc]
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, #0x80
	ldr	r4, =Func_8000888
	ldr	r0, [r3]
	lsl	r1, #14
	.call_via r4
	ldr	r1, [sp, #0xc]
	mov	r3, #0xda
	lsl	r3, #1
	add	r2, r1, r3
	ldr	r3, [r2]
	add	r3, r0
	str	r3, [r2]
.L2356:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_200a030

.thumb_func_start OvlFunc_923_200a370
	push	{r5, lr}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	sub	r3, #0x20
	ldr	r5, [r2]
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r0, [r2, r3]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L2396
	sub	r3, #1
	b	.L23a8
.L2396:
	bl	OvlFunc_923_2009bc8
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	add	r3, #0xa
.L23a8:
	str	r3, [r5, #8]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_200a370

