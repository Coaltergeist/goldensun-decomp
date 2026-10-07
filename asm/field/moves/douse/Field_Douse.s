	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Douse  @ 0x080999f0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	ldr	r0, [r6, #0x10]
	mov	r1, #0
	mov	r10, r0
	mov	r2, #0
	mov	r0, #0xef
	mov	r3, #0
	sub	sp, #0x2c
	mov	r8, r1
	bl	CreateParticleActor
	mov	r7, r0
	cmp	r7, #0
	bne	.L99a1e
	b	.L99cf0
.L99a1e:
	bl	Func_8097384
	mov	r0, #0x8a
	bl	_PlaySound
	ldr	r3, [r6, #0x14]
	cmp	r3, #0
	bne	.L99a52
	mov	r2, r10
	ldr	r3, [r2, #8]
	str	r3, [r6, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r6, #0xc]
	mov	r5, r6
	ldmia	r5!, {r1}
	mov	r0, #0x80
	lsl	r0, #13
	mov	r2, r5
	bl	vec3_translate
	ldr	r1, [r5]
	ldr	r2, [r6, #0xc]
	mov	r0, #0
	bl	_Func_8011f54
	str	r0, [r6, #8]
.L99a52:
	mov	r3, sp
	add	r3, #0x14
	str	r3, [sp, #4]
	mov	r0, r10
	ldr	r1, [sp, #4]
	ldr	r3, [r0, #8]
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r0, #0x10]
	str	r3, [r1, #8]
	add	r3, sp, #8
	mov	r11, r3
	ldr	r3, [r6, #4]
	mov	r0, r11
	str	r3, [r0]
	mov	r1, #0x80
	ldr	r2, [r6, #8]
	lsl	r1, #14
	add	r3, r2, r1
	str	r3, [r0, #4]
	ldr	r3, [r6, #0xc]
	str	r3, [r0, #8]
	mov	r3, r6
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L99a9e
	mov	r0, #0xa0
	lsl	r0, #15
	add	r3, r2, r0
	mov	r1, r11
	str	r3, [r1, #4]
.L99a9e:
	ldr	r2, [sp, #4]
	mov	r10, r11
	mov	r9, r2
.L99aa4:
	mov	r0, r10
	mov	r1, r9
	ldr	r5, [r1]
	ldr	r3, [r0]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #8]
	mov	r2, r10
	mov	r0, r9
	ldr	r3, [r2, #4]
	ldr	r5, [r0, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r9
	mov	r1, r10
	ldr	r5, [r2, #8]
	ldr	r3, [r1, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xb
	blt	.L99aa4
	mov	r0, #0xa
	bl	WaitFrames
	mov	r3, r6
	add	r3, #0x45
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L99bd4
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r2, #0xa
	mov	r9, r2
	cmp	r3, #0
	bne	.L99b3e
	mov	r3, #0x18
	mov	r9, r3
.L99b3e:
	mov	r0, #0
	mov	r8, r0
	cmp	r8, r9
	bge	.L99bcc
	mov	r1, r9
	sub	r1, #1
	add	r6, sp, #0x20
	str	r1, [sp]
	mov	r10, r6
.L99b50:
	ldr	r3, [r7, #8]
	mov	r2, r10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	bl	Random
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Random
	mov	r2, r10
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	ldr	r0, [sp]
	cmp	r8, r0
	bne	.L99b92
	mov	r0, #0x19
	bl	WaitFrames
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
.L99b92:
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xf0
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L99bb8
	ldr	r3, [r6, #4]
	ldr	r1, =0xffe00000
	add	r3, r1
	str	r3, [r5, #0x14]
	ldr	r3, =Func_8099920
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
.L99bb8:
	mov	r0, #0x84
	bl	_PlaySound
	mov	r0, #6
	bl	WaitFrames
	mov	r2, #1
	add	r8, r2
	cmp	r8, r9
	blt	.L99b50
.L99bcc:
	mov	r0, #0xa
	bl	WaitFrames
	b	.L99c76
.L99bd4:
	mov	r3, r6
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r0, #0xa
	mov	r9, r0
	cmp	r3, #0
	bne	.L99bea
	mov	r1, #0x1e
	mov	r9, r1
.L99bea:
	mov	r2, r9
	cmp	r2, #0
	beq	.L99c70
	add	r6, sp, #0x20
	mov	r8, r9
.L99bf4:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r6, #8]
	bl	Random
	mov	r3, #0xc0
	lsl	r5, r0, #2
	lsl	r3, #10
	add	r5, r0
	add	r5, r3
	bl	Random
	mov	r2, r6
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	mov	r0, #0x8e
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	lsl	r0, #1
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L99c5e
	ldr	r3, =Func_80999a8
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	mov	r0, #0xd
	ldrb	r2, [r1, #9]
	neg	r0, r0
	mov	r3, r0
	and	r2, r3
	mov	r3, #8
	orr	r2, r3
	strb	r2, [r1, #9]
	mov	r0, r5
	mov	r1, #8
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #7
	bl	_Actor_SetColorswap
.L99c5e:
	mov	r0, #6
	bl	WaitFrames
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bne	.L99bf4
.L99c70:
	mov	r0, #0x46
	bl	WaitFrames
.L99c76:
	mov	r3, #0
	ldr	r6, [sp, #4]
	mov	r8, r3
	mov	r10, r11
.L99c7e:
	mov	r0, r10
	ldr	r5, [r0]
	ldr	r3, [r6]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #8]
	mov	r1, r10
	ldr	r5, [r1, #4]
	ldr	r3, [r6, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r10
	ldr	r5, [r2, #8]
	ldr	r3, [r6, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	ldr	r3, =0xffff4000
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r8
	mul	r0, r3
	str	r5, [r7, #0x10]
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r7, #0x18]
	str	r0, [r7, #0x1c]
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #1
	add	r8, r0
	mov	r1, r8
	cmp	r1, #0xb
	blt	.L99c7e
	mov	r0, r7
	bl	_DeleteActor
	bl	Func_809748c
.L99cf0:
	add	sp, #0x2c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Douse
