	.include "macros.inc"

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

.thumb_func_start Func_8099d18  @ 0x08099d18
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r5, [r3, #0x14]
	sub	sp, #0xc
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	bl	Random
	ldr	r3, [r5, #0xc]
	lsl	r0, #4
	mov	r2, #0xc0
	lsl	r2, #13
	sub	r3, r0
	add	r3, r2
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	bl	Random
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	vec3_translate
	ldr	r0, =0x11d
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L99d8a
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #2
	strb	r3, [r2]
	ldr	r3, =0x1999
	mov	r1, #0
	str	r3, [r5, #0x48]
	bl	_Actor_SetAnim
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #0xc
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Actor_SetScript
.L99d8a:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099d18

.thumb_func_start Field_Carry_Target  @ 0x08099da4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, [r3, #0x10]
	sub	sp, #0x7c
	str	r0, [sp, #0x1c]
	ldr	r7, [r3, #0x14]
	mov	r11, r3
	cmp	r7, #0
	bne	.L99dc6
	b	.L9a268
.L99dc6:
	bl	Func_8097384
	ldr	r1, [sp, #0x1c]
	str	r7, [r1, #0x68]
	ldr	r0, [sp, #0x1c]
	ldr	r1, =.L9f0bc
	bl	_Actor_SetScript
	mov	r3, r11
	ldr	r0, [r3, #4]
	add	r2, sp, #0x20
	str	r0, [r2]
	mov	r10, r2
	ldr	r1, [r3, #8]
	mov	r2, #0x80
	lsl	r2, #13
	add	r1, r2
	mov	r3, r10
	str	r1, [r3, #4]
	mov	r3, r11
	ldr	r2, [r3, #0xc]
	mov	r3, r10
	str	r2, [r3, #8]
	mov	r3, #0x80
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	lsl	r3, #8
	bl	Func_809a3c4
	mov	r1, r10
	mov	r6, r0
	ldr	r2, =0xffe00000
	ldr	r0, [r1]
	mov	r3, r10
	add	r0, r2
	ldr	r1, [r1, #4]
	ldr	r2, [r3, #8]
	mov	r3, #0
	str	r6, [sp, #0x14]
	bl	Func_809a3c4
	mov	r5, r0
	ldr	r0, [sp, #0x14]
	str	r5, [sp, #0x18]
	cmp	r0, #0
	beq	.L99e28
	cmp	r5, #0
	bne	.L99e2e
.L99e28:
	bl	Func_809748c
	b	.L9a268
.L99e2e:
	mov	r0, #0xf
	bl	WaitFrames
	ldr	r1, [r7, #8]
	mov	r2, r10
	str	r1, [r2]
	ldr	r2, [r7, #0xc]
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r3
	mov	r0, r10
	str	r2, [r0, #4]
	ldr	r3, [r7, #0x10]
	str	r3, [r0, #8]
	mov	r0, #0x80
	lsl	r0, #13
	add	r1, r0
	mov	r0, r6
	bl	_Actor_TravelTo
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, =0xfff00000
	mov	r0, r10
	add	r1, r3
	ldr	r2, [r2, #4]
	ldr	r3, [r0, #8]
	mov	r0, r5
	bl	_Actor_TravelTo
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r0, r5
	bl	_Actor_WaitMovement
	mov	r1, r10
	ldr	r3, [r1]
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	mov	r2, #0
	str	r2, [r6, #0x24]
	str	r3, [r6, #8]
	ldr	r0, =0xfff00000
	ldr	r3, [r1]
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, =Func_8096b88
	mov	r1, #0xc8
	str	r2, [r5, #0x24]
	str	r3, [r7, #0x6c]
	lsl	r1, #4
	ldr	r0, =Func_8099d18
	bl	StartTask
	mov	r0, #0x82
	bl	_PlaySound
	mov	r1, r7
	add	r1, #0x55
	mov	r3, #4
	str	r1, [sp, #0x10]
	mov	r0, r7
	strb	r3, [r1]
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r2, [sp, #0x14]
	cmp	r2, #0
	beq	.L99efe
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.L99efe
	ldr	r3, [r7, #0xc]
	ldr	r2, [r7, #0x14]
	mov	r0, #0xc0
	sub	r3, r2
	lsl	r0, #13
	cmp	r3, r0
	bgt	.L99efe
	mov	r1, #0xc0
	lsl	r1, #7
.L99ed4:
	ldr	r3, [r6, #0xc]
	add	r3, r1
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #0xc]
	add	r3, r1
	str	r3, [r5, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r1
	str	r3, [r7, #0xc]
	mov	r0, #1
	str	r1, [sp]
	bl	WaitFrames
	ldr	r2, [r7, #0x14]
	ldr	r3, [r7, #0xc]
	sub	r3, r2
	mov	r2, #0xc0
	lsl	r2, #13
	ldr	r1, [sp]
	cmp	r3, r2
	ble	.L99ed4
.L99efe:
	ldr	r3, [sp, #0x14]
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #8
	ldr	r0, [sp, #0x18]
	str	r1, [r3, #0x30]
	str	r2, [r3, #0x34]
	ldr	r3, =0x6666
	str	r1, [r0, #0x30]
	str	r2, [r0, #0x34]
	mov	r1, r7
	ldr	r2, =0x3333
	str	r3, [r7, #0x30]
	add	r1, #0x5a
	mov	r3, #0
	str	r2, [r7, #0x34]
	strb	r3, [r1]
	mov	r3, r7
	add	r3, #0x22
	str	r3, [sp, #0xc]
	ldr	r1, [sp, #0xc]
	mov	r3, #2
	strb	r3, [r1]
	mov	r3, #0x80
	lsl	r3, #13
	mov	r5, r10
	mov	r9, r3
	str	r0, [sp, #8]
	b	.L9a0e8
.L99f3a:
	ldr	r3, =gKeyHeld
	ldr	r0, [r3]
	bl	Func_8097b54
	lsl	r0, #16
	lsr	r6, r0, #16
	ldr	r0, =0xffff
	cmp	r6, r0
	bne	.L99f84
	ldr	r1, [r7, #8]
	str	r1, [r5]
	ldr	r2, [r7, #0xc]
	add	r2, r9
	str	r2, [r5, #4]
	ldr	r3, [r7, #0x10]
	ldr	r0, [sp, #0x14]
	str	r3, [r5, #8]
	add	r1, r9
	bl	_Actor_TravelTo
	ldr	r1, [r5]
	ldr	r2, =0xfff00000
	ldr	r0, [sp, #0x18]
	add	r1, r2
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #4]
	bl	_Actor_TravelTo
	ldr	r0, [sp, #0x14]
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r0, [sp, #0x18]
	mov	r1, #1
	bl	_Actor_SetAnim
	b	.L9a0e8
.L99f84:
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0xc]
	add	r3, r9
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x80
	str	r3, [r5, #8]
	lsl	r0, #10
	mov	r1, r6
	mov	r2, r5
	bl	vec3_translate
	ldr	r1, [r5]
	ldr	r0, [sp, #0x14]
	add	r1, r9
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	_Actor_TravelTo
	ldr	r1, [r5]
	ldr	r3, =0xfff00000
	ldr	r0, [sp, #0x18]
	add	r1, r3
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	bl	_Actor_TravelTo
	ldr	r0, [sp, #0x14]
	bl	_Actor_WaitMovement
	ldr	r0, [sp, #0x18]
	bl	_Actor_WaitMovement
	ldr	r3, [r7, #8]
	str	r3, [r5]
	ldr	r3, [r7, #0x14]
	str	r3, [r5, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r9
	str	r3, [r5, #8]
	mov	r1, r6
	mov	r2, r5
	bl	vec3_translate
	mov	r0, r7
	mov	r1, r5
	bl	_Func_800d924
	mov	r8, r0
	cmp	r0, #0
	bne	.L9a00a
	ldr	r3, [r7, #0x14]
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	str	r3, [r7, #0x14]
	mov	r1, r10
	mov	r0, r7
	bl	_TestCollision
	ldr	r3, [r7, #0x14]
	ldr	r1, =0xfff00000
	add	r3, r1
	str	r3, [r7, #0x14]
	cmp	r0, #0
	ble	.L9a02e
.L9a00a:
	ldr	r0, [sp, #0x14]
	mov	r1, #4
	bl	_Actor_SetAnim
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Actor_SetAnim
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.L9a0e8
	mov	r0, #0x72
	bl	_PlaySound
	b	.L9a0e8
.L9a02e:
	mov	r0, #0xaf
	bl	_PlaySound
	ldr	r0, [sp, #0x14]
	mov	r2, r10
	mov	r1, #4
	ldr	r5, [r2]
	ldr	r6, [r2, #8]
	bl	_Actor_SetAnim
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Actor_SetAnim
	mov	r0, #0xf
	bl	WaitFrames
	ldr	r1, =0x3333
	mov	r3, r7
	add	r3, #0x5b
	mov	r0, r8
	strb	r0, [r3]
	str	r1, [r7, #0x30]
	str	r1, [r7, #0x34]
	mov	r2, r10
	mov	r0, r10
	ldr	r1, [r2]
	ldr	r3, [r0, #8]
	ldr	r2, [r2, #4]
	mov	r0, r7
	bl	_Actor_TravelTo
	ldr	r3, [sp, #0x14]
	ldr	r1, =0x3333
	str	r1, [r3, #0x30]
	str	r1, [r3, #0x34]
	ldr	r2, [sp, #8]
	str	r1, [r2, #0x30]
	str	r1, [r2, #0x34]
	mov	r3, r10
	ldr	r1, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r1, r0
	ldr	r2, [r3, #4]
	ldr	r0, [sp, #0x14]
	ldr	r3, [r3, #8]
	bl	_Actor_TravelTo
	mov	r2, r10
	ldr	r1, [r2]
	ldr	r3, =0xfff00000
	mov	r0, r10
	add	r1, r3
	ldr	r2, [r2, #4]
	ldr	r3, [r0, #8]
	ldr	r0, [sp, #8]
	bl	_Actor_TravelTo
	mov	r0, r7
	bl	_Actor_WaitMovement
	mov	r1, r8
	str	r5, [r7, #8]
	str	r6, [r7, #0x10]
	str	r1, [r7, #0x24]
	str	r1, [r7, #0x2c]
	mov	r0, #0xa
	bl	WaitFrames
	b	.L9a0fc

	.pool_aligned

.L9a0e8:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, =gKeyPress
	ldr	r2, [r3]
	ldr	r3, =0x303
	and	r2, r3
	cmp	r2, #0
	bne	.L9a0fc
	b	.L99f3a
.L9a0fc:
	ldr	r0, [sp, #0x14]
	mov	r1, #4
	bl	_Actor_SetAnim
	ldr	r0, [sp, #0x18]
	mov	r1, #4
	bl	_Actor_SetAnim
	ldr	r0, =Func_8099d18
	bl	StopTask
	mov	r0, #0x87
	bl	_PlaySound
	mov	r0, #0xf
	bl	WaitFrames
	mov	r0, #0x87
	bl	_PlaySound
	mov	r0, #0xf
	bl	WaitFrames
	ldr	r3, [r7, #8]
	mov	r2, r10
	str	r3, [r2]
	ldr	r3, [r7, #0xc]
	mov	r0, #0x80
	lsl	r0, #13
	add	r3, r0
	str	r3, [r2, #4]
	ldr	r3, [r7, #0x10]
	mov	r1, sp
	str	r3, [r2, #8]
	add	r1, #0x2c
	mov	r2, #0x80
	lsl	r2, #10
	mov	r3, #0x13
	str	r1, [sp, #4]
	mov	r9, r2
	mov	r8, r3
.L9a14e:
	mov	r0, r10
	ldr	r1, [r0]
	ldr	r2, [r0, #4]
	ldr	r3, [r0, #8]
	ldr	r0, =0x11d
	bl	CreateParticleActor
	ldr	r2, [sp, #4]
	mov	r6, r0
	stmia	r2!, {r6}
	mov	r1, r2
	str	r1, [sp, #4]
	cmp	r6, #0
	beq	.L9a1a2
	ldr	r1, =.L9f0d4
	bl	_Actor_SetScript
	bl	Random
	mov	r3, r9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r9
	mov	r3, #0
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Random
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_8096bec
.L9a1a2:
	mov	r1, #1
	neg	r1, r1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0
	bge	.L9a14e
	mov	r0, #0x83
	bl	_PlaySound
	ldr	r0, [sp, #0x14]
	bl	_DeleteActor
	ldr	r0, [sp, #0x18]
	bl	_DeleteActor
	mov	r3, r11
	add	r3, #0x44
	ldrb	r1, [r3]
	mov	r0, r7
	bl	_Actor_SetColorswap
	mov	r3, r11
	ldr	r1, [r3, #0x3c]
	mov	r0, r7
	bl	_Actor_SetScript
	mov	r0, r11
	ldr	r3, [r0, #0x38]
	str	r3, [r7, #0x6c]
	ldr	r1, [sp, #0x10]
	mov	r3, #3
	strb	r3, [r1]
	mov	r3, #0xa0
	lsl	r3, #12
	str	r3, [r7, #0x28]
	ldr	r3, =0x3333
	str	r3, [r7, #0x44]
	ldr	r3, [sp, #0xc]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, [sp, #0x1c]
	str	r2, [r0, #0x6c]
	ldr	r0, [sp, #0x1c]
	mov	r1, #0
	bl	_Actor_SetColorswap
	mov	r3, r11
	add	r3, #0x34
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L9a264
	ldr	r3, [r7, #0x28]
	mov	r1, #0
	mov	r8, r1
	cmp	r3, #0
	blt	.L9a22c
.L9a216:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x59
	bgt	.L9a22c
	ldr	r3, [r7, #0x28]
	cmp	r3, #0
	bge	.L9a216
.L9a22c:
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r7, #0x28]
	mov	r0, #0
	mov	r8, r0
	cmp	r3, #0
	bge	.L9a252
.L9a23c:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #0x59
	bgt	.L9a252
	ldr	r3, [r7, #0x28]
	cmp	r3, #0
	blt	.L9a23c
.L9a252:
	mov	r0, r7
	bl	Func_809a6b8
	bl	Func_809748c
	mov	r0, #0x1e
	bl	WaitFrames
	b	.L9a268
.L9a264:
	bl	Func_809748c
.L9a268:
	add	sp, #0x7c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Carry_Target

.thumb_func_start Field_Carry  @ 0x0809a294
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #0x14
	mov	r10, r3
	bl	Func_8097384
	mov	r3, r10
	ldr	r0, [r3, #4]
	add	r5, sp, #8
	str	r0, [r5]
	ldr	r1, [r3, #8]
	mov	r3, #0x80
	lsl	r3, #13
	add	r1, r3
	str	r1, [r5, #4]
	mov	r3, r10
	ldr	r2, [r3, #0xc]
	mov	r3, #0x80
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	str	r2, [r5, #8]
	lsl	r3, #8
	bl	Func_809a3c4
	ldr	r3, =0xffe00000
	str	r0, [sp]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	add	r0, r3
	ldr	r2, [r5, #8]
	mov	r3, #0
	bl	Func_809a3c4
	str	r0, [sp, #4]
	mov	r0, #0xf
	mov	r11, sp
	bl	WaitFrames
	mov	r0, #1
	mov	r7, r11
	mov	r8, r0
.L9a2f6:
	ldmia	r7!, {r6}
	cmp	r6, #0
	beq	.L9a308
	mov	r1, #0xc0
	ldrh	r2, [r6, #6]
	mov	r0, r6
	lsl	r1, #13
	bl	Func_8096bec
.L9a308:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L9a2f6
	ldr	r0, [sp]
	bl	_Actor_WaitMovement
	mov	r0, #0x86
	bl	_PlaySound
	mov	r0, #0x80
	mov	r3, #0x17
	lsl	r0, #10
	mov	r7, r5
	mov	r8, r3
	mov	r9, r0
.L9a32c:
	mov	r3, r10
	ldr	r1, [r3, #4]
	str	r1, [r7]
	mov	r0, #0x80
	ldr	r2, [r3, #8]
	lsl	r0, #13
	add	r2, r0
	str	r2, [r7, #4]
	ldr	r3, [r3, #0xc]
	ldr	r0, =0x11d
	str	r3, [r7, #8]
	bl	CreateParticleActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L9a384
	ldr	r1, =.L9f0d4
	bl	_Actor_SetScript
	bl	Random
	mov	r3, r9
	mov	r2, r6
	add	r2, #0x55
	str	r3, [r6, #0x34]
	add	r0, r9
	mov	r3, #0
	str	r0, [r6, #0x30]
	strb	r3, [r2]
	bl	Random
	lsl	r5, r0, #1
	add	r5, r0
	mov	r0, #0x80
	lsl	r0, #12
	lsl	r5, #3
	add	r5, r0
	bl	Random
	mov	r1, r5
	mov	r2, r0
	mov	r0, r6
	bl	Func_8096bec
.L9a384:
	mov	r3, #1
	neg	r3, r3
	add	r8, r3
	mov	r0, r8
	cmp	r0, #0
	bge	.L9a32c
	ldr	r0, [sp]
	bl	_DeleteActor
	mov	r3, r11
	ldr	r0, [r3, #4]
	bl	_DeleteActor
	bl	Func_809748c
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Carry

.thumb_func_start Func_809a3c4  @ 0x0809a3c4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r5, r0
	mov	r6, r1
	mov	r8, r2
	mov	r0, #0x8a
	mov	r7, r3
	bl	_PlaySound
	mov	r1, r5
	mov	r0, #0xd7
	mov	r2, r6
	mov	r3, r8
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9a43e
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, r5
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	add	r2, #0x5a
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #1
	bl	_Actor_SetAnim
	mov	r2, #0x80
	ldr	r3, [r5, #0x18]
	lsl	r2, #9
	cmp	r3, r2
	bge	.L9a43c
	ldr	r6, =0x2000
.L9a414:
	mov	r2, #0x80
	lsl	r2, #4
	add	r3, r2
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	ldrh	r3, [r5, #6]
	add	r3, r6
	strh	r3, [r5, #6]
	mov	r0, #1
	bl	WaitFrames
	ldr	r3, [r5, #0x18]
	ldr	r2, =0xffff
	cmp	r3, r2
	ble	.L9a414
	b	.L9a43c
	.pool_aligned

.L9a43c:
	strh	r7, [r5, #6]
.L9a43e:
	mov	r0, r5
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_809a3c4

	.section .rodata
	.global .L9f0b4
	.global .L9f0bc
	.global .L9f0d4
	.global .L9f0f8
	.global .L9f118
	.global .L9f11c
	.global .L9f12c

.L9f0b4:
	.incrom 0x9f0b4, 0x9f0bc
.L9f0bc:
	.incrom 0x9f0bc, 0x9f0d4
.L9f0d4:
	.incrom 0x9f0d4, 0x9f0f8
.L9f0f8:
	.incrom 0x9f0f8, 0x9f118
.L9f118:
	.incrom 0x9f118, 0x9f11c
.L9f11c:
	.incrom 0x9f11c, 0x9f12c
.L9f12c:
	.incrom 0x9f12c, 0x9f160
