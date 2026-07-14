	.include "macros.inc"

	.section .text.after_b0dc, "ax", %progbits

.thumb_func_start Func_809b11c  @ 0x0809b11c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r1, #0x40
	add	r1, r7
	ldr	r2, [r3, #0x10]
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	sub	sp, #0xc
	mov	r10, r1
	mov	r8, r3
	cmp	r3, #0
	bne	.L9b1c2
	ldr	r3, [r2, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r2, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	ldr	r2, [r6]
	str	r2, [r7, #4]
	mov	r1, #0x80
	ldr	r3, [r6, #8]
	lsl	r1, #12
	add	r3, r1
	str	r3, [r7, #8]
	str	r3, [r7, #0x18]
	str	r2, [r7, #0x14]
	str	r3, [r6, #8]
	str	r2, [r6]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r5, #13
	lsl	r0, #13
	lsr	r0, #16
	lsr	r5, #16
	mov	r2, #0xc0
	sub	r5, r0
	lsl	r2, #8
	add	r5, r2
	mov	r0, #0xf0
	mov	r1, r5
	mov	r2, r6
	lsl	r0, #15
	bl	vec3_translate
	ldr	r3, [r6]
	str	r3, [r7, #0xc]
	ldr	r3, [r6, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	mov	r1, r8
	strb	r1, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L9b1f2
	mov	r0, #0xf6
	bl	_PlaySound
	b	.L9b1f2
.L9b1c2:
	mov	r3, r8
	cmp	r3, #1
	bne	.L9b1dc
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9b1f2
	mov	r1, r10
	ldrb	r3, [r1]
	sub	r3, #1
	strb	r3, [r1]
	b	.L9b1f2
.L9b1dc:
	mov	r2, r8
	cmp	r2, #2
	bne	.L9b1f2
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9b1f2
	mov	r0, r7
	bl	Func_809bb34
.L9b1f2:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809b11c

.thumb_func_start Field_Retreat  @ 0x0809b208
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #0xc
	ldr	r5, [r3, #0x10]
	mov	r8, r3
	bl	CutsceneStart
	mov	r2, #1
	neg	r2, r2
	mov	r0, r2
	mov	r1, r2
	mov	r3, #0
	bl	Func_80933f8
	bl	Func_8097384
	mov	r0, #0xa
	bl	WaitFrames
	mov	r3, r8
	mov	r1, #0x80
	mov	r2, #0x18
	ldrsh	r0, [r3, r2]
	lsl	r1, #7
	mov	r2, #0
	bl	Func_8092adc
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r3, =Func_8096b88
	mov	r0, #0x83
	str	r3, [r5, #0x6c]
	bl	_PlaySound
	mov	r1, #0x1c
	mov	r0, r5
	bl	_Actor_SetAnim
	mov	r0, #0x28
	bl	WaitFrames
	mov	r0, #0xdc
	bl	_PlaySound
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #3
	bl	_Actor_SetAnim
	ldr	r3, =Func_809b0b0
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x46
	bl	WaitFrames
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r6, .L9b2c0	@ 0
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	ldr	r3, =Func_809b0dc
	str	r3, [r5, #0x6c]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r5, #0x38]
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	mov	r5, r8
	mov	r7, #0
	add	r5, #0x58
	b	.L9b2d4

	.align	2, 0
.L9b2c0:
	.word	0
	.pool

.L9b2d4:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_809b11c
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	bl	Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Sprite_SetColorswap
	bl	Random
	ldr	r2, =0x13333
	lsr	r0, #1
	add	r0, r2
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	add	r7, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #0x48
	cmp	r7, #0x17
	bls	.L9b2d4
	mov	r0, #0x46
	bl	WaitFrames
	mov	r2, r8
	mov	r7, #0
	mov	r1, #2
	add	r2, #0x98
.L9b32c:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L9b336
	strb	r1, [r2]
.L9b336:
	add	r7, #1
	add	r2, #0x48
	cmp	r7, #0x17
	bls	.L9b32c
	mov	r0, #0x28
	bl	WaitFrames
	bl	Func_809748c
	mov	r0, #0xa
	bl	WaitFrames
	add	sp, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Retreat

	.section .text.after_b364, "ax", %progbits

	.section .text.after_b3d8, "ax", %progbits

.thumb_func_start Func_809b450  @ 0x0809b450
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r1, [r3, #0x10]
	sub	sp, #0xc
	mov	r2, #4
	mov	r10, r3
	add	r2, sp
	mov	r3, #0x3f
	str	r1, [sp]
	mov	r6, r0
	mov	r7, #0
	mov	r9, r2
	mov	r11, r3
.L9b478:
	ldr	r2, [r6, #0xc]
	mov	r3, #0x80
	lsl	r3, #15
	ldr	r1, [r6, #8]
	add	r2, r3
	mov	r0, #0x1a
	ldr	r3, [r6, #0x10]
	bl	_CreateActor
	lsl	r3, r7, #2
	mov	r1, r9
	str	r0, [r3, r1]
	cmp	r0, #0
	beq	.L9b538
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, #0
	ldr	r5, [r0, #0x50]
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	ldr	r1, .L9b4e0	@ 0
	ldr	r3, =0x6666
	mov	r8, r1
	str	r6, [r0, #0x68]
	str	r3, [r0, #0x1c]
	str	r3, [r0, #0x18]
	cmp	r5, #0
	beq	.L9b538
	mov	r1, #0
	mov	r0, r5
	bl	_Sprite_SetAnim
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	Func_8003f3c
	ldr	r3, =0x71a
	add	r3, r10
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	b	.L9b4f0

	.align	2, 0
.L9b4e0:
	.word	0
	.pool

.L9b4f0:
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L9b530	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r11
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r11
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L9b538

	.align	2, 0
.L9b530:
	.word	0xfffffc00
	.pool

.L9b538:
	add	r7, #1
	cmp	r7, #1
	ble	.L9b478
	ldr	r2, [sp, #4]
	ldr	r3, =Func_809b3d8
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0, #9]
	mov	r3, r9
	ldr	r1, [r3, #4]
	ldr	r3, =Func_809b364
	str	r3, [r1, #0x6c]
	ldr	r0, [r1, #0x50]
	ldr	r1, [sp]
	ldr	r3, [r1, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r0, #9]
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #9]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809b450

	.section .text.after_b588, "ax", %progbits

	.section .rodata
	.global .L9f160

.L9f160:
	.incrom 0x9f160, 0x9f168
