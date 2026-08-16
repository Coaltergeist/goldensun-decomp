	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start WaitTextPrompt  @ 0x080bb65c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	b	.Lbb674
.Lbb66e:
	mov	r0, #1
	bl	WaitFrames
.Lbb674:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.Lbb66e
	mov	r0, #0x80
	add	r7, sp, #4
	bl	AllocUploadSpriteGFX
	mov	r1, #0
	str	r1, [sp]
	mov	r11, r0
.Lbb68a:
	ldr	r2, =iwram_3001e40
	ldr	r5, [r2]
	mov	r3, #7
	lsr	r5, #2
	and	r5, r3
	ldr	r3, =Data_c3734
	lsl	r5, #7
	add	r5, r3
	ldr	r3, =iwram_3001ee4
	ldr	r3, [r3]
	ldr	r6, =REG_WINOUT
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	mov	r0, r6
	mov	r10, r1
	mov	r1, #4
	mov	r8, r2
	mov	r9, r3
	bl	Func_80039fc
	mov	r0, r6
	mov	r1, #0x10
	bl	Func_800393c
	mov	r2, #0x10
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	mov	r3, #0xa4
	lsl	r3, #8
	str	r3, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #8]
	mov	r1, r5
	mov	r0, r11
	bl	UploadSprite2
	ldr	r3, .Lbb704	@ 0x3ff
	ldr	r2, .Lbb708	@ 0xfffffc00
	and	r0, r3
	ldrh	r3, [r7, #8]
	and	r3, r2
	mov	r2, r10
	orr	r3, r0
	ldrh	r1, [r2, #0xc]
	mov	r2, r9
	strh	r3, [r7, #8]
	ldrh	r3, [r2, #4]
	lsl	r1, #3
	lsr	r3, #8
	add	r1, r3
	ldr	r3, .Lbb70c	@ 0x1ff
	add	r1, #4
	and	r1, r3
	ldr	r2, .Lbb710	@ 0xfffffe00
	ldrh	r3, [r7, #6]
	and	r3, r2
	orr	r3, r1
	strh	r3, [r7, #6]
	mov	r3, r8
	b	.Lbb728

	.align	2, 0
.Lbb704:
	.word	0x3ff
.Lbb708:
	.word	0xfffffc00
.Lbb70c:
	.word	0x1ff
.Lbb710:
	.word	0xfffffe00
	.pool

.Lbb728:
	ldr	r0, [r3]
	lsl	r0, #12
	bl	sin
	cmp	r0, #0
	bge	.Lbb738
	ldr	r1, =0x7fff
	add	r0, r1
.Lbb738:
	mov	r1, r10
	ldrh	r3, [r1, #0xe]
	asr	r2, r0, #15
	lsl	r3, #3
	mov	r1, r9
	add	r2, r3
	ldrh	r3, [r1, #6]
	lsr	r3, #8
	add	r3, r2
	add	r3, #6
	strb	r3, [r7, #4]
	mov	r1, #0xf0
	mov	r0, r7
	bl	Func_8003dec
	ldr	r1, =gKeyHeld
	ldr	r3, [r1]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
	ldr	r3, =gKeyPress
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
	ldr	r3, [sp]
	cmp	r3, #0xf
	ble	.Lbb77c
	ldr	r3, [r1]
	and	r3, r2
	cmp	r3, #0
	bne	.Lbb78a
.Lbb77c:
	mov	r0, #1
	bl	WaitFrames
	ldr	r1, [sp]
	add	r1, #1
	str	r1, [sp]
	b	.Lbb68a
.Lbb78a:
	mov	r0, #0x6f
	bl	_PlaySound
	mov	r0, r11
	bl	Func_8003f3c
	mov	r0, #1
	bl	WaitFrames
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end WaitTextPrompt
