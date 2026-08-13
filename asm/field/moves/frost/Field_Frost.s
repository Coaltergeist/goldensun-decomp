	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Frost  @ 0x08099160
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x14]
	sub	sp, #0x10
	mov	r8, r3
	mov	r9, r2
	bl	Func_8097384
	mov	r0, #0x73
	bl	_PlaySound
	mov	r3, #0xf
	add	r7, sp, #4
	mov	r10, r3
.L99186:
	mov	r0, #0xe8
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L99212
	bl	Random
	mov	r2, #0x80
	lsl	r2, #8
	lsr	r0, #1
	add	r0, r2
	str	r0, [r6, #0x1c]
	str	r0, [r6, #0x18]
	bl	Random
	mov	r3, #1
	and	r0, r3
	cmp	r0, #0
	beq	.L991b8
	ldr	r3, =Func_8099070
	b	.L991ba
.L991b8:
	ldr	r3, =Func_80990cc
.L991ba:
	str	r3, [r6, #0x6c]
	bl	Random
	mov	r2, r6
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r0, [r6, #6]
	strh	r3, [r2]
	bl	Random
	mov	r3, r6
	add	r3, #0x66
	mov	r1, #9
	strh	r0, [r3]
	mov	r0, r6
	bl	_Actor_SetColorswap
	mov	r2, r8
	ldr	r3, [r2, #4]
	str	r3, [r7]
	ldr	r3, [r2, #8]
	str	r3, [r7, #4]
	ldr	r3, [r2, #0xc]
	str	r3, [r7, #8]
	bl	Random
	mov	r3, #0x80
	mov	r5, r0
	lsl	r3, #10
	lsl	r5, #2
	add	r5, r3
	bl	Random
	mov	r2, r7
	mov	r1, r0
	mov	r0, r5
	bl	vec3_translate
	ldr	r3, [r7]
	str	r3, [r6, #0x38]
	ldr	r3, [r7, #4]
	str	r3, [r6, #0x3c]
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x40]
.L99212:
	mov	r0, #3
	bl	WaitFrames
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99186
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0x73
	bl	_PlaySound
	mov	r0, #0x32
	bl	WaitFrames
	mov	r2, r9
	cmp	r2, #0
	beq	.L992c2
	mov	r3, r8
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L992c2
	mov	r0, #0xd4
	bl	_PlaySound
	mov	r3, #0xf
	mov	r10, r3
.L99254:
	mov	r1, #7
	mov	r0, r9
	bl	_Actor_SetColorswap
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r9
	mov	r1, #0
	bl	_Actor_SetColorswap
	mov	r0, #4
	bl	WaitFrames
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	cmp	r3, #0
	bge	.L99254
	mov	r3, r8
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L99298
	mov	r0, #0xdc
	bl	_PlaySound
	mov	r0, r9
	mov	r1, #2
	bl	_Actor_SetAnim
.L99298:
	ldr	r3, =Func_8099018
	mov	r2, r9
	str	r3, [r2, #0x6c]
	ldr	r0, =0x50000005
	mov	r2, sp
	mov	r1, #6
	bl	FindFieldMoveEvent
	cmp	r0, #0
	beq	.L992bc
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r1, [r3]
	ldr	r2, [sp]
	bl	Func_8096b28
.L992bc:
	mov	r0, #0x14
	bl	WaitFrames
.L992c2:
	bl	Func_809748c
	add	sp, #0x10
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Frost
