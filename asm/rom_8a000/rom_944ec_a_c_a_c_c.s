	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095fcc
	push	{r5, r6, r7, lr}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r3, r7
	add	r3, #0x64
	ldrh	r1, [r3]
	sub	r1, #1
	strh	r1, [r3]
	mov	r6, r0
	ldr	r3, [r6, #8]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r6, #0x10]
	lsl	r1, #16
	str	r3, [r5, #8]
	ldr	r3, =0x6666
	asr	r1, #16
	mov	r0, r1
	mul	r0, r3
	mov	r3, r7
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	lsl	r1, #11
	add	r1, r3
	mov	r2, r5
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #8]
	ldr	r3, [r5, #8]
	ldr	r2, [r7, #0xc]
	str	r3, [r7, #0x10]
	ldr	r3, =0xffff0000
	add	r2, r3
	str	r2, [r7, #0xc]
	mov	r1, #0xa0
	ldr	r3, [r6, #0xc]
	lsl	r1, #13
	add	r3, r1
	cmp	r2, r3
	bge	.L96034
	mov	r0, r7
	bl	_DeleteActor
.L96034:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095fcc

.thumb_func_start Func_8096048
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r3, #0x40
	add	r3, r7
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	mov	r10, r3
	mov	r8, r2
	cmp	r2, #0
	bne	.L960fa
	ldr	r3, [r0, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r0, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #2
	add	r5, r0
	mov	r3, #0xa0
	lsl	r3, #12
	lsl	r5, #1
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	mov	r0, r6
	bl	Func_80974d8
	ldr	r2, [r6]
	str	r2, [r7, #0x14]
	ldr	r3, [r6, #8]
	mov	r0, #0xf0
	mov	r1, #0xc0
	str	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	lsl	r0, #15
	str	r2, [r6]
	lsl	r1, #8
	mov	r2, r6
	str	r3, [r6, #8]
	bl	vec3_translate
	ldr	r3, [r6]
	str	r3, [r7, #0xc]
	ldr	r3, [r6, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x24]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r8
	strb	r2, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9612a
	mov	r0, #0x90
	bl	_PlaySound
	b	.L9612a
.L960fa:
	mov	r3, r8
	cmp	r3, #1
	bne	.L96114
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r2, r10
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	b	.L9612a
.L96114:
	mov	r3, r8
	cmp	r3, #2
	bne	.L9612a
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9612a
	mov	r0, r7
	bl	Func_809bb34
.L9612a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8096048

.thumb_func_start GetVenusDjinni
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =gState
	mov	r5, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r7, r3, r0
	ldr	r0, [r7]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r10, r0
	mov	r0, r5
	bl	MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L9616c
	b	.L963fa
.L9616c:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x201204
	mov	r9, r3
	bl	_Func_80b0840
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, #0x98
	bl	_PlaySound
	mov	r0, r5
	mov	r1, #4
	mov	r2, #0xf
	bl	Func_8092560
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0xf
	mov	r0, r5
	bl	Func_8092560
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r3, =Func_809592c
	mov	r0, #0x99
	str	r3, [r6, #0x6c]
	bl	_PlaySound
	mov	r0, r5
	mov	r1, #8
	mov	r2, #0x16
	bl	Func_8092560
	mov	r0, #0x8c
	bl	_PlaySound
	mov	r5, #0x80
	ldr	r1, =0x14ccc
	lsl	r5, #9
	mov	r2, r5
	mov	r0, r1
	bl	_Func_8012330
	ldr	r3, =Func_8095f9c
	mov	r0, r6
	str	r3, [r6, #0x6c]
	mov	r1, #3
	bl	_Actor_SetAnim
	mov	r0, #0x5a
	bl	WaitFrames
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r7]
	bl	Func_8092adc
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r0, [r7]
	bl	MapActor_GetActor
	mov	r1, #0x1c
	bl	_Actor_SetAnim
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r1, =0x19999
	mov	r2, r5
	mov	r0, r1
	bl	_Func_8012330
	ldr	r3, [r6, #8]
	str	r3, [sp]
	ldr	r3, [r6, #0xc]
	str	r3, [sp, #4]
	mov	r8, sp
	ldr	r3, [r6, #0x10]
	mov	r0, r8
	str	r3, [sp, #8]
	bl	Func_80974d8
	mov	r5, r9
	add	r5, #0x58
	mov	r7, #0x17
	mov	r6, r8
.L96234:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8096048
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r5]
	mov	r1, #0xb
	bl	_Func_800b684
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x28]
	bl	Random
	mov	r2, #0xc0
	lsl	r2, #9
	add	r0, r2
	str	r0, [r5, #0x2c]
	sub	r7, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #0x48
	cmp	r7, #0
	bge	.L96234
	mov	r0, #0x8c
	bl	WaitFrames
	mov	r2, r9
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L96288:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L96292
	strb	r1, [r2]
.L96292:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L96288
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	bl	_Func_8012330
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r3, .L962bc	@ 0
	mov	r7, #0
	mov	r5, r8
	mov	r9, r3
	b	.L962e0

	.align	2, 0
.L962bc:
	.word	0
	.pool

.L962e0:
	mov	r0, r10
	ldr	r1, [r0, #8]
	str	r1, [r5]
	mov	r3, #0xf0
	ldr	r2, [r0, #0xc]
	lsl	r3, #15
	add	r2, r3
	str	r2, [r5, #4]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x8e
	str	r3, [r5, #8]
	lsl	r0, #1
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L96348
	bl	Random
	mov	r1, #3
	bl	__udivsi3
	mov	r2, #0x80
	lsl	r2, #9
	add	r0, r2
	mov	r2, r6
	add	r2, #0x64
	mov	r3, #0x64
	str	r0, [r6, #0x1c]
	str	r0, [r6, #0x18]
	mov	r1, #0x18
	strh	r3, [r2]
	lsl	r0, r7, #16
	bl	__divsi3
	mov	r3, r6
	add	r3, #0x66
	strh	r0, [r3]
	ldr	r3, =Func_8095fcc
	str	r3, [r6, #0x6c]
	mov	r3, r6
	add	r3, #0x55
	mov	r0, r9
	strb	r0, [r3]
	mov	r1, #7
	mov	r0, r6
	bl	_Actor_SetAnim
	mov	r0, r6
	mov	r1, #0xb
	bl	_Actor_SetColorswap
.L96348:
	add	r7, #1
	cmp	r7, #0x17
	ble	.L962e0
	mov	r0, #0x64
	bl	WaitFrames
	mov	r0, #0x90
	lsl	r0, #1
	bl	_PlaySound
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #0x97
	bl	_PlaySound
	mov	r2, r10
	ldr	r3, [r2, #8]
	mov	r0, r8
	str	r3, [r0]
	ldr	r3, [r2, #0xc]
	mov	r2, #0x90
	lsl	r2, #13
	add	r3, r2
	str	r3, [r0, #4]
	mov	r0, r10
	ldr	r3, [r0, #0x10]
	mov	r2, r8
	mov	r7, #0
	mov	r5, r8
	str	r3, [r2, #8]
	b	.L963d4
.L96388:
	ldr	r3, =0x9999
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x1c]
	str	r3, [r6, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r6, #0x28]
	ldr	r3, [r6, #0xc]
	str	r3, [r6, #0x14]
	bl	Random
	ldr	r3, =0x16666
	add	r0, r3
	str	r0, [r6, #0x30]
	bl	Random
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, r6
	mov	r1, #0xb
	bl	_Actor_SetColorswap
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #8
	strh	r3, [r2]
	mov	r0, r6
	ldr	r1, =Data_9f0b0
	bl	_Actor_SetScript
	add	r7, #1
.L963d4:
	cmp	r7, #7
	bgt	.L963ec
	mov	r0, #0x8e
	ldr	r1, [r5]
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	lsl	r0, #1
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L96388
.L963ec:
	mov	r0, #0xf
	bl	WaitFrames
	bl	_Func_80b0894
	bl	Func_80958e4
.L963fa:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GetVenusDjinni

.thumb_func_start Func_809641c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =gState
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	mov	r7, r0
	ldr	r0, [r3]
	sub	sp, #0xc
	bl	MapActor_GetActor
	mov	r2, #0x40
	add	r2, r7
	mov	r1, #0
	ldrsb	r1, [r2, r1]
	mov	r5, r0
	mov	r8, r2
	ldrb	r3, [r2]
	mov	r10, r1
	cmp	r1, #0
	bne	.L964d0
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Random
	ldr	r3, [r5, #0xc]
	lsl	r2, r0, #2
	add	r2, r0
	add	r3, r2
	mov	r2, #0xf0
	lsl	r2, #12
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r3, #0x80
	lsl	r3, #10
	lsl	r5, #1
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	ldr	r2, [r6]
	str	r2, [r7, #0xc]
	ldr	r1, =0xff9c0000
	ldr	r3, [r6, #8]
	mov	r5, #0xc0
	str	r3, [r7, #0x10]
	lsl	r5, #10
	add	r3, r1
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	str	r5, [r7, #0x24]
	bl	Random
	lsl	r3, r0, #1
	add	r3, r0
	add	r3, r5
	str	r3, [r7, #0x20]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r3, r7
	add	r3, #0x42
	mov	r2, r10
	strb	r2, [r3]
	mov	r2, r7
	mov	r3, #1
	add	r2, #0x41
	strb	r3, [r2]
	mov	r1, r8
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	b	.L9655a
.L964d0:
	sub	r3, #1
	mov	r2, #0x80
	lsl	r3, #24
	lsl	r2, #17
	cmp	r3, r2
	bhi	.L9654e
	mov	r0, r7
	bl	Func_809ba34
	mov	r6, r0
	cmp	r6, #0
	bne	.L9655a
	ldr	r3, [r7, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r7, #8]
	str	r3, [r5, #8]
	bl	Random
	mov	r1, r0
	mov	r0, #0xc0
	mov	r2, r5
	lsl	r0, #12
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r3, r7
	add	r3, #0x41
	strb	r6, [r3]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x1c]
	str	r6, [r7, #0x24]
	bl	Random
	ldr	r3, =0x23333
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #8
	str	r0, [r7, #0x20]
	str	r3, [r7, #0x28]
	str	r3, [r7, #0x2c]
	mov	r0, #0x8f
	bl	_PlaySound
	mov	r1, r8
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	ldrb	r2, [r1]
	cmp	r3, #1
	bne	.L96542
	sub	r3, r2, #1
	strb	r3, [r1]
	b	.L96548
.L96542:
	add	r3, r2, #1
	mov	r2, r8
	strb	r3, [r2]
.L96548:
	mov	r3, #6
	strh	r3, [r7, #0x3a]
	b	.L9655a
.L9654e:
	mov	r3, r10
	cmp	r3, #3
	bne	.L9655a
	mov	r0, r7
	bl	Func_809bb34
.L9655a:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809641c

.thumb_func_start Func_8096574
	ldr	r4, [r0, #0x68]
	ldr	r1, [r0, #8]
	ldr	r3, [r4, #8]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #8]
	ldr	r1, [r0, #0xc]
	ldr	r3, [r4, #0xc]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0xc]
	ldr	r1, [r0, #0x10]
	ldr	r3, [r4, #0x10]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	add	r1, r3
	str	r1, [r0, #0x10]
	bx	lr
.func_end Func_8096574

.thumb_func_start GetMercuryDjinni
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	mov	r5, r0
	bl	MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L965c6
	b	.L967be
.L965c6:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x204084
	str	r3, [sp, #4]
	bl	_Func_80b0840
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r5
	bl	Func_80925cc
	mov	r0, #0xaf
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r5
	bl	Func_80925cc
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #3
	mov	r2, #0xe
	mov	r0, r5
	bl	Func_8092560
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #5
	mov	r2, #0x10
	mov	r0, r5
	bl	Func_8092560
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #7
	mov	r2, #0x12
	mov	r0, r5
	bl	Func_8092560
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r9, r1
	add	r1, sp, #0x14
	mov	r3, #0
	str	r1, [sp]
	mov	r10, r3
	mov	r8, r6
	mov	r11, r1
	mov	r7, #7
.L96654:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r9
	bl	_CreateActor
	ldr	r3, [sp]
	mov	r5, r0
	stmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L966be
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_8096574
	str	r3, [r5, #0x6c]
	ldrh	r3, [r6, #6]
	mov	r1, #9
	strh	r3, [r5, #6]
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	_Func_800c528
	mov	r1, r10
	ldr	r0, [r5, #0x50]
	bl	Func_8096c48
	mov	r1, r8
	str	r1, [r5, #0x68]
	mov	r10, r0
	mov	r8, r5
.L966be:
	sub	r7, #1
	cmp	r7, #0
	bge	.L96654
	mov	r2, r10
	ldrb	r2, [r2, #0x1c]
	mov	r0, #0x99
	mov	r8, r2
	bl	_PlaySound
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r7, #0xe
.L966da:
	ldr	r3, [r6, #0xc]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r7, #1
	bl	WaitFrames
	cmp	r7, #0
	bge	.L966da
	mov	r0, r6
	bl	_DeleteActor
	mov	r5, r11
	mov	r7, #7
.L966fa:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	_DeleteActor
	cmp	r7, #0
	bge	.L966fa
	mov	r2, r8
	cmp	r2, #0x60
	beq	.L96712
	mov	r0, r8
	bl	Func_8003f3c
.L96712:
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r5, =gState
	mov	r3, #0xfa
	lsl	r3, #1
	add	r5, r3
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	ldr	r0, [r5]
	bl	Func_8092adc
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r0, [r5]
	bl	MapActor_GetActor
	mov	r1, #0x1c
	bl	_Actor_SetAnim
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #8]
	add	r5, sp, #8
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_80974d8
	ldr	r6, [sp, #4]
	mov	r7, #0x17
	add	r6, #0x58
.L9675e:
	ldr	r2, [r5]
	ldr	r3, [r5, #8]
	mov	r0, r6
	mov	r1, #0xf0
	bl	Func_809ba90
	mov	r0, r6
	ldr	r1, =Func_809641c
	bl	Func_809ba7c
	mov	r0, r6
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r6]
	mov	r1, #9
	bl	_Func_800b684
	sub	r7, #1
	mov	r0, #1
	bl	WaitFrames
	add	r6, #0x48
	cmp	r7, #0
	bge	.L9675e
	mov	r0, #0x78
	bl	WaitFrames
	ldr	r2, [sp, #4]
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L9679e:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L967a8
	strb	r1, [r2]
.L967a8:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L9679e
	mov	r0, #0x32
	bl	WaitFrames
	bl	_Func_80b0894
	bl	Func_80958e4
.L967be:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GetMercuryDjinni

