	.include "macros.inc"

.thumb_func_start Field_Whirlwind
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r2, [r3, #0x10]
	mov	r10, r3
	ldr	r3, [r3, #0x14]
	mov	r11, r3
	mov	r3, #0
	sub	sp, #0x24
	mov	r8, r3
	ldr	r3, [r2, #8]
	add	r5, sp, #0xc
	str	r3, [r5]
	ldr	r3, [r2, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r2, #0x10]
	str	r3, [r5, #8]
	mov	r2, r10
	ldr	r3, [r2, #4]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r2, #8]
	ldr	r2, =0xfffc0000
	add	r3, r2
	str	r3, [r6, #4]
	mov	r2, r10
	ldr	r3, [r2, #0xc]
	mov	r0, #0xda
	str	r3, [r6, #8]
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	CreateParticleActor
	mov	r7, r0
	cmp	r7, #0
	bne	.L9a91c
	b	.L9aa64
.L9a91c:
	bl	Func_8097384
	mov	r0, r7
	mov	r1, #2
	bl	_Actor_SetAnim
	mov	r9, r5
.L9a92a:
	mov	r2, r9
	ldr	r5, [r2]
	ldr	r3, [r6]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #8]
	mov	r2, r9
	ldr	r5, [r2, #4]
	ldr	r3, [r6, #4]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	add	r5, r0
	str	r5, [r7, #0xc]
	mov	r2, r9
	ldr	r5, [r2, #8]
	ldr	r3, [r6, #8]
	sub	r3, r5
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0xa
	bl	__divsi3
	ldr	r3, =0x10ccc
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
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xb
	blt	.L9a92a
	ldr	r3, =0x1b333
	str	r3, [r7, #0x18]
	ldr	r3, =0x14ccc
	mov	r0, #0xa3
	str	r3, [r7, #0x1c]
	bl	_PlaySound
	mov	r0, #0x14
	bl	WaitFrames
	mov	r3, r10
	add	r3, #0x20
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L9aa40
	mov	r2, r11
	cmp	r2, #0
	beq	.L9a9be
	ldr	r3, =Func_809a890
	str	r3, [r2, #0x6c]
.L9a9be:
	mov	r3, #0
	mov	r8, r3
	add	r6, sp, #0x18
.L9a9c4:
	ldr	r3, [r7, #8]
	str	r3, [r6]
	ldr	r3, =0xcccc
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	mov	r2, #0x80
	lsl	r2, #11
	add	r3, r2
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
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	mov	r0, #0xf9
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L9aa24
	ldr	r3, =Func_809a7f4
	str	r3, [r5, #0x6c]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x64
	str	r7, [r5, #0x68]
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	bl	Random
	strh	r0, [r5, #6]
.L9aa24:
	mov	r0, #6
	bl	WaitFrames
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0xf
	ble	.L9a9c4
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x78
	bl	WaitFrames
.L9aa40:
	mov	r1, #1
	mov	r0, r7
	bl	_Actor_SetAnim
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r0, #0x88
	bl	_PlaySound
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, r7
	bl	_DeleteActor
	bl	Func_809748c
.L9aa64:
	add	sp, #0x24
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Whirlwind

.thumb_func_start Func_809aa98
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f30
	mov	r7, r0
	ldr	r3, [r3]
	mov	r2, #0x40
	add	r2, r7
	sub	sp, #0xc
	mov	r8, r3
	mov	r10, r2
.L9aab0:
	mov	r3, r10
	mov	r6, #0
	ldrsb	r6, [r3, r6]
	cmp	r6, #0
	bne	.L9ab06
	ldr	r3, [r7, #0x14]
	str	r3, [sp]
	ldr	r3, [r7, #0x18]
	mov	r8, sp
	str	r3, [sp, #8]
	bl	Random
	mov	r5, r0
	bl	Random
	lsl	r5, #16
	mov	r3, r0
	lsl	r0, r3, #4
	asr	r5, #16
	sub	r0, r3
	mov	r2, #0xa0
	lsl	r5, #16
	lsl	r2, #14
	lsl	r0, #1
	lsr	r5, #16
	add	r0, r2
	mov	r1, r5
	mov	r2, r8
	bl	vec3_translate
	mov	r2, r8
	ldr	r3, [r2]
	str	r3, [r7, #0xc]
	ldr	r3, [r2, #8]
	str	r3, [r7, #0x10]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r7, #0x24]
	str	r3, [r7, #0x20]
	mov	r3, r7
	add	r3, #0x42
	strb	r6, [r3]
	b	.L9ab66
.L9ab06:
	cmp	r6, #1
	bne	.L9ab1e
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9aab0
.L9ab1e:
	cmp	r6, #2
	bne	.L9ab70
	mov	r2, r8
	ldr	r3, [r2, #4]
	mov	r5, sp
	str	r3, [r5]
	ldr	r3, [r2, #8]
	mov	r2, #0x80
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #4]
	mov	r2, r8
	ldr	r3, [r2, #0xc]
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
	mov	r3, #0x80
	lsl	r3, #5
	mov	r2, r7
	strh	r3, [r7, #0x32]
	add	r2, #0x42
	mov	r3, #1
	strb	r3, [r2]
.L9ab66:
	mov	r2, r10
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	b	.L9ab84
.L9ab70:
	cmp	r6, #3
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809ba34
	cmp	r0, #0
	bne	.L9ab84
	mov	r0, r7
	bl	Func_809bb34
.L9ab84:
	add	sp, #0xc
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809aa98

