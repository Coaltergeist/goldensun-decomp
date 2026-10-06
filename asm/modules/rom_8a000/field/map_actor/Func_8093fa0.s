	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8093fa0  @ 0x08093fa0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_2000434
	ldr	r0, =gState
	mov	r9, r0
	ldr	r0, [r1]
	sub	sp, #0x18
	bl	MapActor_GetActor
	mov	r7, r0
	mov	r3, #0xa
	ldrsh	r5, [r7, r3]
	mov	r1, #0x12
	ldrsh	r6, [r7, r1]
	ldr	r3, =0xfff0
	mov	r2, #1
	and	r5, r3
	and	r6, r3
	mov	r11, r2
	mov	r0, #8
	mov	r2, #8
	add	r0, r5
	add	r2, r6
	mov	r8, r0
	mov	r10, r2
	bl	CutsceneStart
	mov	r3, r7
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L93ff2
	ldr	r3, [r7, #0x50]
	add	r3, #0x26
	ldrb	r3, [r3]
	mov	r11, r3
.L93ff2:
	mov	r3, #0xf9
	lsl	r3, #1
	add	r9, r3
	mov	r0, r9
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L940b8
	mov	r3, r8
	cmp	r3, #0
	bge	.L9400a
	mov	r3, r5
	add	r3, #0x17
.L9400a:
	asr	r2, r3, #4
	mov	r3, r10
	cmp	r3, #0
	bge	.L94016
	mov	r3, r6
	add	r3, #0x17
.L94016:
	asr	r3, #4
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r1, =gBuffer
	ldr	r0, =ewram_200fe00
	lsl	r3, #2
	add	r2, r3, r1
	add	r3, r0
	ldrb	r2, [r2, #2]
	ldrb	r3, [r3, #2]
	cmp	r2, r3
	beq	.L94030
	b	.L94138
.L94030:
	ldr	r3, [r7, #8]
	mov	r0, sp
	str	r3, [r0]
	ldr	r3, [r7, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	bl	_Func_801219c
	mov	r5, r0
	cmp	r5, #0
	bne	.L94138
	mov	r6, r7
	add	r6, #0x5a
	ldr	r1, =ewram_2000434
	strb	r5, [r6]
	mov	r2, r10
	ldr	r0, [r1]
	mov	r1, r8
	bl	MapActor_TravelToWait
	mov	r1, #6
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r0, #4
	bl	WaitFrames
	mov	r1, #7
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x28]
	mov	r0, #4
	bl	WaitFrames
	mov	r3, r7
	add	r3, #0x55
	strb	r5, [r3]
	mov	r2, r11
	mov	r3, #0xfe
	and	r2, r3
	mov	r11, r2
	mov	r0, r7
	mov	r1, r11
	bl	_Actor_SetSpriteFlags
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x30]
	mov	r0, r7
	mov	r1, #0xc
	str	r5, [r7, #0x28]
	bl	_Actor_SetAnim
	mov	r0, #4
	bl	WaitFrames
	mov	r3, #1
	mov	r0, r9
	strb	r3, [r0]
	strb	r3, [r6]
	mov	r0, #8
	bl	WaitFrames
	b	.L94112
.L940b8:
	mov	r5, r7
	add	r5, #0x55
	mov	r6, #0
	strb	r6, [r5]
	mov	r0, r7
	mov	r1, #0xb
	bl	_Actor_SetAnim
	mov	r2, r8
	lsl	r1, r2, #16
	mov	r3, #0x80
	ldr	r2, [r7, #0xc]
	lsl	r3, #12
	mov	r0, r10
	add	r2, r3
	lsl	r3, r0, #16
	ldr	r0, =0xfff00000
	add	r3, r0
	mov	r0, r7
	bl	_Actor_TravelTo
	ldr	r1, =ewram_2000434
	ldr	r0, [r1]
	bl	MapActor_WaitMovement
	mov	r3, #3
	strb	r3, [r5]
	ldr	r5, .L9411c	@ 1
	mov	r2, r11
	ldr	r3, [r7, #0xc]
	orr	r2, r5
	mov	r11, r2
	str	r3, [r7, #0x14]
	mov	r0, r7
	mov	r1, r11
	bl	_Actor_SetSpriteFlags
	mov	r0, #4
	bl	CutsceneWait
	mov	r3, r9
	strb	r6, [r3]
	mov	r3, r7
	add	r3, #0x5a
	strb	r5, [r3]
.L94112:
	bl	CutsceneEnd
	mov	r0, #0
	b	.L94140

	.align	2, 0
.L9411c:
	.word	1
	.pool

.L94138:
	bl	CutsceneEnd
	mov	r0, #1
	neg	r0, r0
.L94140:
	add	sp, #0x18
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093fa0

