	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b3050  @ 0x080b3050
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r1, #0xe0
	mov	r8, r3
	lsl	r1, #2
	add	r1, r8
	ldr	r3, [r1]
	ldr	r2, =0x3ab
	ldrb	r3, [r3, #5]
	add	r2, r8
	mov	r11, r3
	mov	r3, #0xff
	strb	r3, [r2]
	ldr	r2, [r1]
	mov	r3, #0xd
	strb	r3, [r2, #5]
	ldr	r3, =0x3aa
	add	r3, r8
	ldr	r2, =.Lb4ab2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r10, r0
	ldrsb	r0, [r2, r3]
	sub	sp, #0xc
	bl	_PlaySound
	ldr	r0, =0x202108
	bl	Func_80b0840
	mov	r0, r10
	lsl	r0, #2
	mov	r3, #0x8a
	mov	r9, r0
	lsl	r3, #1
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Sprite_SetAnimSpeed
	mov	r0, #0x14
	bl	WaitFrames
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =Func_80b2ffc
	bl	StartTask
	mov	r3, r10
	mov	r0, #0x9a
	lsl	r2, r3, #1
	lsl	r0, #1
	add	r3, r2, r0
	mov	r1, r8
	ldrsh	r3, [r1, r3]
	mov	r6, sp
	lsl	r3, #16
	mov	r1, #0xa2
	str	r3, [r6]
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r8
	ldrsh	r3, [r2, r3]
	ldr	r1, =0xfff40000
	lsl	r3, #16
	add	r3, r1
	mov	r5, #0xec
	lsl	r5, #2
	str	r3, [r6, #8]
	mov	r7, #0
	add	r5, r8
.Lb30ee:
	mov	r1, #0x8e
	ldr	r3, [r6, #8]
	ldr	r2, [r6]
	mov	r0, r5
	lsl	r1, #1
	bl	_Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_80b2f4c
	bl	_Func_809ba7c
	mov	r1, #7
	mov	r0, r5
	bl	_Func_809ba70
	bl	Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Sprite_SetColorswap
	ldr	r3, =0xb333
	mov	r0, #3
	str	r3, [r5, #0x2c]
	str	r3, [r5, #0x28]
	bl	WaitFrames
	cmp	r7, #5
	bne	.Lb3134
	ldr	r3, =0x3ab
	mov	r2, r10
	add	r3, r8
	strb	r2, [r3]
.Lb3134:
	add	r7, #1
	add	r5, #0x48
	cmp	r7, #0x11
	ble	.Lb30ee
	bl	Func_80b04c4
	mov	r2, #0xfc
	lsl	r2, #2
	mov	r1, #2
	add	r2, r8
	mov	r7, #0x17
.Lb314a:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.Lb3154
	strb	r1, [r2]
.Lb3154:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.Lb314a
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x7e
	bl	_PlaySound
	ldr	r2, =0x3ab
	mov	r3, #0xff
	add	r2, r8
	strb	r3, [r2]
	add	r3, #0x15
	add	r3, r9
	mov	r1, r8
	ldr	r0, [r1, r3]
	mov	r1, #0
	bl	_Sprite_SetColorswap
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r6, =0x3f5
	mov	r5, #0xec
	lsl	r5, #2
	add	r6, r8
	add	r5, r8
	mov	r7, #0x17
.Lb3190:
	ldrb	r3, [r6]
	lsl	r3, #24
	add	r6, #0x48
	cmp	r3, #0
	beq	.Lb31a0
	mov	r0, r5
	bl	_Func_809bb34
.Lb31a0:
	sub	r7, #1
	add	r5, #0x48
	cmp	r7, #0
	bge	.Lb3190
	ldr	r0, =Func_80b2ffc
	bl	StopTask
	mov	r3, #0x8a
	lsl	r3, #1
	add	r3, r9
	mov	r2, r8
	ldr	r0, [r2, r3]
	mov	r1, #0x10
	bl	_Sprite_SetAnimSpeed
	bl	Func_80b0894
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r3, #0xe0
	lsl	r3, #2
	add	r3, r8
	ldr	r3, [r3]
	mov	r0, r11
	strb	r0, [r3, #5]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b3050

