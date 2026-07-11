	.include "macros.inc"

.thumb_func_start Field_Force  @ 0x08098cd8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x14]
	sub	sp, #0x2c
	mov	r9, r3
	str	r0, [sp, #8]
	bl	Func_8097384
	mov	r0, #0x82
	bl	_PlaySound
	add	r1, sp, #0x10
	mov	r5, r9
	mov	r10, r1
	mov	r2, #0xb
	add	r5, #0x58
	mov	r6, r10
	mov	r8, r2
.L98d0a:
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	str	r3, [r6]
	mov	r0, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r0, #13
	add	r3, r0
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8098b10
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r5]
	mov	r1, #9
	bl	_Sprite_SetColorswap
	ldr	r3, =0xb333
	mov	r0, #2
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	WaitFrames
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	add	r5, #0x48
	cmp	r2, #0
	bge	.L98d0a
	mov	r3, r9
	ldr	r2, [r3, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #12
	mov	r2, r10
	bl	vec3_translate
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, #0xd7
	ldr	r3, [r3, #8]
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L98db4
	bl	Func_809748c
	b	.L98ff2

	.pool_aligned

.L98db4:
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r6, #6]
	mov	r3, #0x80
	lsl	r3, #11
	ldr	r2, =0
	str	r3, [r6, #0x30]
	str	r3, [r6, #0x34]
	mov	r3, r6
	add	r3, #0x55
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #5
	bl	_Actor_SetAnim
	mov	r1, #3
	mov	r0, r6
	bl	_Actor_SetColorswap
	mov	r1, #0x80
	ldr	r3, [r6, #0x18]
	lsl	r1, #9
	cmp	r3, r1
	bge	.L98e0c
	b	.L98df4

	.pool_aligned

.L98df4:
	mov	r2, #0xa0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r6, #0x18]
	ldr	r0, =0xffff
	cmp	r3, r0
	ble	.L98df4
.L98e0c:
	mov	r0, #3
	bl	WaitFrames
	mov	r3, sp
	add	r3, #0x1c
	mov	r1, #0
	mov	r2, #2
	str	r3, [sp, #4]
	mov	r11, r1
	mov	r8, r2
	add	r7, sp, #0x24
.L98e22:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xd7
	bl	CreateParticleActor
	mov	r5, r0
	str	r0, [r7]
	sub	r7, #4
	cmp	r5, #0
	beq	.L98e70
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r0, r9
	ldr	r3, [r0]
	strh	r3, [r5, #6]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	mov	r0, r5
	mov	r1, #5
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetColorswap
	mov	r1, r11
	ldr	r0, [r5, #0x50]
	bl	Func_8096c48
	mov	r11, r0
.L98e70:
	mov	r2, #1
	neg	r2, r2
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0
	bge	.L98e22
	mov	r3, r9
	mov	r0, r11
	add	r3, #0x20
	ldrb	r0, [r0, #0x1c]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r11, r0
	cmp	r3, #0
	beq	.L98eb8
	mov	r1, r9
	ldr	r2, [r1, #0x10]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r3, [r2, #0xc]
	lsl	r1, #13
	add	r3, r1
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0xe0
	ldr	r1, [r2]
	lsl	r0, #14
	mov	r2, r10
	bl	vec3_translate
	b	.L98ece
.L98eb8:
	mov	r0, r9
	ldr	r3, [r0, #4]
	mov	r1, r10
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r0, #0xc]
	str	r3, [r1, #8]
.L98ece:
	mov	r3, r10
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	mov	r0, r6
	ldr	r3, [r3, #8]
	bl	_Actor_TravelTo
	ldr	r1, =.L9f12c
	mov	r0, r6
	bl	_Actor_SetScript
	ldr	r0, [sp, #4]
	mov	r1, #2
	str	r0, [sp]
	mov	r7, r10
	mov	r8, r1
.L98eee:
	ldr	r3, [sp]
	ldmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L98f14
	mov	r0, #3
	bl	WaitFrames
	ldr	r1, [r7]
	mov	r0, r5
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	bl	_Actor_TravelTo
	mov	r0, r5
	ldr	r1, =.L9f0b4
	bl	_Actor_SetScript
.L98f14:
	mov	r0, #1
	neg	r0, r0
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0
	bge	.L98eee
	ldr	r3, [r6]
	mov	r2, #0
	mov	r8, r2
	cmp	r3, #0
	beq	.L98f40
.L98f2a:
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #1
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0x3b
	bgt	.L98f40
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L98f2a
.L98f40:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L98fb8
	mov	r3, r9
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L98fb8
	mov	r3, r9
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L98f68
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r1, #0x28]
.L98f68:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #8]
	mov	r0, r10
	str	r3, [r0]
	ldr	r3, [r2, #0xc]
	str	r3, [r0, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r0, #8]
	mov	r2, r9
	mov	r0, #0x80
	ldr	r1, [r2]
	lsl	r0, #13
	mov	r2, r10
	bl	vec3_translate
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	_TestCollision
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r1, r10
	bl	_Func_800d924
	cmp	r0, #0
	bne	.L98fb8
	ldr	r0, [sp, #8]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x34]
	str	r3, [r0, #0x30]
	mov	r2, r10
	mov	r0, r10
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	ldr	r0, [sp, #8]
	bl	_Actor_TravelTo
.L98fb8:
	ldr	r0, =0x50000005
	add	r2, sp, #0xc
	mov	r1, #4
	bl	Func_808e4b4
	cmp	r0, #0
	beq	.L98fd6
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r1, [r3]
	ldr	r2, [sp, #0xc]
	bl	Func_8096b28
.L98fd6:
	mov	r0, #0xa
	bl	WaitFrames
	bl	Func_809748c
	mov	r0, #0x14
	bl	WaitFrames
	mov	r2, r11
	cmp	r2, #0x60
	beq	.L98ff2
	mov	r0, r11
	bl	Func_8003f3c
.L98ff2:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Force

