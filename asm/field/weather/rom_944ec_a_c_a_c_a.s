	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095c08  @ 0x08095c08
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
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
	mov	r6, #0
	ldrsb	r6, [r2, r6]
	mov	r9, r0
	mov	r10, r2
	cmp	r6, #0
	bne	.L95cc2
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0x18]
	str	r2, [r7, #4]
	str	r3, [r7, #8]
	mov	r8, sp
	str	r2, [sp]
	str	r3, [sp, #8]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r1, r5, #1
	lsl	r3, r0, #1
	add	r3, r0
	add	r1, r5
	lsl	r1, #11
	lsl	r3, #11
	lsr	r3, #16
	lsr	r1, #16
	sub	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	mov	r0, #0xf0
	add	r1, r3
	lsl	r0, #15
	mov	r2, r8
	bl	vec3_translate
	mov	r1, r8
	ldr	r3, [r1]
	str	r3, [r7, #0xc]
	ldr	r3, [r1, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0xa0
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	mov	r1, r9
	add	r3, #1
	strb	r3, [r2]
	ldr	r3, [r1, #0x50]
	ldr	r0, [r7]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r0, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r0, #9]
	mov	r3, r7
	add	r3, #0x47
	strb	r6, [r3]
	strh	r6, [r7, #0x38]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x86
	bl	_PlaySound
	b	.L95db6
.L95cc2:
	cmp	r6, #1
	bne	.L95ce4
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	cmp	r3, #3
	bne	.L95d8e
	ldr	r1, [r7]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	strb	r3, [r1, #9]
	add	r2, #0x47
	mov	r3, #4
	strb	r3, [r2]
	b	.L95d8e
.L95ce4:
	cmp	r6, #2
	bne	.L95d22
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	ldr	r3, [r7, #4]
	str	r3, [r7, #0x14]
	ldr	r3, [r7, #8]
	ldr	r1, [r7]
	str	r3, [r7, #0x18]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, r7
	add	r2, #0x47
	strb	r3, [r1, #9]
	mov	r3, #4
	strb	r3, [r2]
	mov	r3, r7
	add	r3, #0x44
	strb	r0, [r3]
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r3, #0x28
	strh	r3, [r7, #0x3a]
	b	.L95db6
.L95d22:
	cmp	r6, #3
	bne	.L95d8a
	mov	r1, #1
	mov	r8, r1
	mov	r3, r7
	add	r3, #0x44
	mov	r2, r8
	strb	r2, [r3]
	ldr	r3, [r7, #0x14]
	str	r3, [r7, #4]
	ldr	r3, [r7, #0x18]
	str	r3, [r7, #8]
	mov	r1, r9
	ldr	r3, [r1, #8]
	mov	r5, sp
	str	r3, [r5]
	mov	r2, #0xa0
	ldr	r3, [r1, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #4]
	ldr	r3, [r1, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_80974d8
	bl	Random
	mov	r1, r0
	mov	r0, #0x80
	mov	r2, r5
	lsl	r0, #11
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r7, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r7, #0x10]
	mov	r1, r10
	ldrb	r3, [r1]
	add	r3, #1
	strb	r3, [r1]
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.L95db6
	mov	r0, #0x91
	bl	_PlaySound
	b	.L95db6
.L95d8a:
	cmp	r6, #4
	bne	.L95da2
.L95d8e:
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r1, r10
	ldrb	r3, [r1]
	sub	r3, #1
	strb	r3, [r1]
	b	.L95db6
.L95da2:
	cmp	r6, #5
	bne	.L95db6
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L95db6
	mov	r0, r7
	bl	Func_809bb34
.L95db6:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095c08

.thumb_func_start GetMarsDjinni  @ 0x08095dd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0xc
	mov	r6, r0
	bl	MapActor_GetActor
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r5, r0
	ldr	r0, [r3]
	bl	MapActor_GetActor
	mov	r8, r0
	cmp	r5, #0
	bne	.L95df8
	b	.L95f72
.L95df8:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x201090
	mov	r10, r3
	bl	_Func_80b0840
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, r6
	bl	Func_8092adc
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0xad
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xae
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xaf
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r6
	bl	Func_80925cc
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x8c
	bl	_PlaySound
	ldr	r3, =Func_8095bac
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0
	strh	r3, [r2]
	mov	r0, #0x50
	bl	WaitFrames
	ldr	r3, =Func_8095bd8
	mov	r0, r5
	str	r3, [r5, #0x6c]
	mov	r1, #3
	bl	_Actor_SetAnim
	ldr	r3, [r5, #8]
	mov	r7, sp
	str	r3, [r7]
	ldr	r3, [r5, #0xc]
	str	r3, [r7, #4]
	ldr	r3, [r5, #0x10]
	mov	r0, r7
	str	r3, [r7, #8]
	bl	Func_80974d8
	mov	r5, r10
	add	r5, #0x58
	mov	r6, #0x17
.L95e8e:
	mov	r1, #0x8e
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8095c08
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r5]
	mov	r1, #0xa
	bl	_Sprite_SetColorswap
	bl	Random
	mov	r1, #3
	bl	__udivsi3
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r6, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #0x48
	cmp	r6, #0
	bge	.L95e8e
	mov	r0, #0x3c
	bl	WaitFrames
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
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
	mov	r2, r10
	mov	r1, #2
	add	r2, #0x98
	mov	r6, #0x17
.L95f10:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L95f1a
	strb	r1, [r2]
.L95f1a:
	sub	r6, #1
	add	r2, #0x48
	cmp	r6, #0
	bge	.L95f10
	mov	r0, #0x3c
	bl	WaitFrames
	ldr	r3, =Func_8095b8c
	mov	r2, r8
	str	r3, [r2, #0x6c]
	mov	r0, #0x64
	bl	WaitFrames
	mov	r2, r10
	mov	r1, #5
	add	r2, #0x98
	mov	r6, #0x17
.L95f3c:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L95f46
	strb	r1, [r2]
.L95f46:
	sub	r6, #1
	add	r2, #0x48
	cmp	r6, #0
	bge	.L95f3c
	mov	r0, #0xa
	bl	WaitFrames
	mov	r5, #0
	mov	r3, r8
	str	r5, [r3, #0x6c]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, r8
	str	r3, [r2, #0x18]
	str	r3, [r2, #0x1c]
	mov	r0, #0x1e
	bl	WaitFrames
	bl	_Func_80b0894
	bl	Func_80958e4
.L95f72:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GetMarsDjinni

