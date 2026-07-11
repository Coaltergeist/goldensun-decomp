	.include "macros.inc"

.thumb_func_start Field_Cloak  @ 0x08099838
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	mov	r2, #0xfa
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	GetFieldActor
	mov	r5, r0
	ldr	r6, [r5, #0x50]
	ldr	r3, [r6, #0x28]
	mov	r0, #0x82
	mov	r9, r3
	bl	_PlaySound
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x25
	add	r6, #0x26
	str	r3, [r5, #0x6c]
	mov	r11, r6
	mov	r8, r3
	str	r2, [sp]
	mov	r3, #1
	mov	r6, r2
	mov	r10, r3
	mov	r5, r11
.L9988a:
	mov	r3, r9
	mov	r2, #7
	strb	r2, [r3, #5]
	mov	r7, #2
	mov	r2, r10
	strb	r2, [r6]
	mov	r0, #2
	strb	r7, [r5]
	bl	WaitFrames
	mov	r3, r10
	mov	r2, #0
	strb	r3, [r6]
	mov	r0, #2
	strb	r2, [r5]
	bl	WaitFrames
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #9
	bls	.L9988a
	mov	r3, #0
	mov	r8, r3
	mov	r2, r8
	mov	r3, r9
	strb	r2, [r3, #5]
	mov	r2, r11
	strb	r7, [r2]
	ldr	r3, [sp]
	ldr	r5, =Func_8099678
	mov	r6, #1
	mov	r1, #0xc8
	strb	r6, [r3]
	lsl	r1, #4
	mov	r0, r5
	bl	StartTask
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	strh	r6, [r3]
	bl	_call_via_r5
	mov	r2, #0xbf
	ldr	r3, [sp, #4]
	lsl	r2, #1
	add	r5, r3, r2
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	ldr	r2, =0x2092
	cmp	r3, r2
	bne	.L998fe
	bl	Func_8099738
	mov	r3, r8
	strh	r3, [r5]
.L998fe:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Cloak

.thumb_func_start Func_8099920  @ 0x08099920
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	cmp	r2, r3
	bgt	.L9999a
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #2
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	bl	_Actor_SetScript
	mov	r5, #0
	mov	r7, #0
	str	r5, [r6, #0x6c]
	b	.L99984
.L99942:
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x28]
	bl	Random
	ldr	r3, =0x13333
	add	r0, r3
	str	r0, [r5, #0x30]
	bl	Random
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r5
	bl	Func_8096bec
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #6
	strh	r3, [r2]
	mov	r0, r5
	ldr	r1, =Data_9f0b0
	bl	_Actor_SetScript
	add	r7, #1
.L99984:
	cmp	r7, #2
	bgt	.L9999a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xf0
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	bne	.L99942
.L9999a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8099920

