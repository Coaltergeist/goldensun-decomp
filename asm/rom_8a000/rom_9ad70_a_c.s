	.include "macros.inc"

.thumb_func_start Field_Catch
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r5, [r3]
	ldr	r1, [r5, #0x14]
	ldr	r7, [r5, #0x10]
	sub	sp, #0x28
	str	r1, [sp]
	ldr	r3, [r7, #8]
	add	r2, sp, #0x10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r1, #0x80
	lsl	r1, #13
	add	r3, r1
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	mov	r3, r5
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r11, r2
	cmp	r3, #0
	beq	.L9aec4
	ldr	r3, [r7, #8]
	add	r2, sp, #4
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	lsl	r0, #14
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r2, #8]
	ldr	r1, [r5]
	mov	r9, r2
	bl	vec3_translate
	b	.L9aedc

	.pool_aligned

.L9aec4:
	add	r3, sp, #4
	mov	r9, r3
	ldr	r3, [r5, #4]
	mov	r1, r9
	str	r3, [r1]
	mov	r2, #0x80
	ldr	r3, [r5, #8]
	lsl	r2, #14
	add	r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r5, #0xc]
	str	r3, [r1, #8]
.L9aedc:
	ldr	r1, [r5, #4]
	add	r0, sp, #0x1c
	str	r1, [r0]
	mov	r3, #0x80
	ldr	r2, [r5, #8]
	lsl	r3, #14
	add	r2, r3
	str	r2, [r0, #4]
	ldr	r3, [r5, #0xc]
	str	r3, [r0, #8]
	mov	r0, #0xd7
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L9aefe
	b	.L9b092
.L9aefe:
	bl	Func_8097384
	mov	r0, #0x8a
	bl	_PlaySound
	ldrh	r3, [r7, #6]
	strh	r3, [r6, #6]
	ldr	r3, =0x14ccc
	ldr	r2, .L9af30	@ 0
	str	r3, [r6, #0x30]
	mov	r3, r6
	add	r3, #0x55
	strb	r2, [r3]
	mov	r0, r6
	mov	r1, #5
	bl	_Actor_SetAnim
	mov	r0, r6
	mov	r1, #1
	bl	_Actor_SetColorswap
	mov	r7, #0
	mov	r10, r11
	mov	r8, r9
	b	.L9af38

	.align	2, 0
.L9af30:
	.word	0
	.pool

.L9af38:
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2]
	ldr	r3, [r1]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2, #4]
	ldr	r3, [r1, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r10
	mov	r1, r8
	ldr	r5, [r2, #8]
	ldr	r3, [r1, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	mov	r3, #0xc0
	lsl	r3, #8
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	add	r0, r3
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	WaitFrames
	cmp	r7, #0xb
	blt	.L9af38
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, r6
	mov	r1, #6
	bl	_Actor_SetAnim
	mov	r0, #0xf
	bl	WaitFrames
	mov	r5, #9
.L9afba:
	ldr	r3, [r6, #0xc]
	ldr	r1, =0xfffe0000
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	bge	.L9afba
	mov	r0, r6
	mov	r1, #5
	bl	_Actor_SetAnim
	mov	r0, #0x84
	bl	_PlaySound
	ldr	r2, [sp]
	cmp	r2, #0
	beq	.L9afee
	ldr	r3, =0xfff70000
	ldr	r2, [r2, #0xc]
	ldr	r0, [sp]
	mov	r1, r3
	bl	_Func_800d130
.L9afee:
	mov	r0, #0x14
	bl	WaitFrames
	mov	r5, #0xc
.L9aff6:
	ldr	r3, [r6, #0xc]
	mov	r1, #0xc0
	lsl	r1, #9
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	bge	.L9aff6
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0x72
	bl	_PlaySound
	mov	r7, #0
	mov	r10, r9
	mov	r8, r11
.L9b01e:
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2]
	ldr	r5, [r1]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r6, #8]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #4]
	ldr	r5, [r1, #4]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r6, #0xc]
	mov	r2, r8
	mov	r1, r10
	ldr	r3, [r2, #8]
	ldr	r5, [r1, #8]
	sub	r3, r5
	mov	r0, r7
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	ldr	r3, =0xffff4000
	add	r5, r0
	mov	r1, #0xa
	mov	r0, r7
	mul	r0, r3
	str	r5, [r6, #0x10]
	bl	__divsi3
	mov	r2, #0x80
	lsl	r2, #9
	add	r0, r2
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	add	r7, #1
	mov	r0, #1
	bl	WaitFrames
	cmp	r7, #0xb
	blt	.L9b01e
	mov	r0, r6
	bl	_DeleteActor
	bl	Func_809748c
.L9b092:
	add	sp, #0x28
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Catch

