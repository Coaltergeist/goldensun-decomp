	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_95fcc, "ax", %progbits

	.section .text.after_96048, "ax", %progbits

.thumb_func_start GetVenusDjinni  @ 0x08096140
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
	bl	MapActor_Jump
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0xf
	mov	r0, r5
	bl	MapActor_Jump
	mov	r0, #0x1e
	bl	WaitFrames
	ldr	r3, =Func_809592c
	mov	r0, #0x99
	str	r3, [r6, #0x6c]
	bl	_PlaySound
	mov	r0, r5
	mov	r1, #8
	mov	r2, #0x16
	bl	MapActor_Jump
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
	bl	_Sprite_SetColorswap
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

.thumb_func_start Func_809641c  @ 0x0809641c
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
