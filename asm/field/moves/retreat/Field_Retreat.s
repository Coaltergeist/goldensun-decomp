	.include "macros.inc"
	.include "gba.inc"

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
