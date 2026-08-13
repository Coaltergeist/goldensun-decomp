	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Avoid  @ 0x0809b698
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	sub	sp, #8
	str	r3, [sp, #4]
	ldr	r1, [r3, #0x10]
	ldr	r6, [r1, #0x50]
	ldrh	r3, [r1, #6]
	ldr	r2, [r6, #0x28]
	mov	r10, r1
	str	r3, [sp]
	mov	r9, r2
	bl	AllocSpriteSlot
	ldr	r2, =0x71a
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	mov	r1, #0
	mov	r8, r1
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	lsl	r1, #1
	ldr	r2, =.L9c510
	asr	r0, #16
	bl	UploadSpriteGFX
	ldr	r5, =gState
	mov	r3, #0x91
	lsl	r3, #2
	add	r2, r5, r3
	mov	r3, #0x96
	lsl	r3, #20
	str	r3, [r2]
	ldr	r0, =0x145
	bl	_GetFlag
	mov	r1, #0x92
	lsl	r1, #2
	add	r3, r5, r1
	strb	r0, [r3]
	mov	r1, #0
	mov	r0, r10
	bl	_Actor_SetColorswap
	ldr	r3, =Func_809b5dc
	mov	r2, r10
	mov	r5, r10
	str	r3, [r2, #0x6c]
	add	r5, #0x64
	mov	r3, r8
	strh	r3, [r5]
	mov	r3, r10
	mov	r1, r8
	add	r3, #0x66
	strh	r1, [r3]
	mov	r0, #0x8c
	bl	_PlaySound
	mov	r0, #0xf
	bl	WaitFrames
	mov	r3, #1
	strh	r3, [r5]
	mov	r0, #0xa
	bl	WaitFrames
	mov	r2, #0x26
	add	r2, r6
	mov	r3, #7
	mov	r8, r2
	add	r6, #0x25
	mov	r7, #1
	mov	r5, #0x13
	mov	r11, r3
.L9b73a:
	mov	r1, r11
	mov	r2, r9
	strb	r1, [r2, #5]
	mov	r0, #2
	strb	r7, [r6]
	bl	WaitFrames
	mov	r3, #0
	mov	r1, r9
	mov	r2, r8
	strb	r7, [r6]
	strb	r3, [r1, #5]
	strb	r7, [r2]
	mov	r0, #3
	sub	r5, #1
	bl	WaitFrames
	cmp	r5, #0
	bge	.L9b73a
	mov	r2, sp
	ldrh	r2, [r2]
	ldr	r5, =Func_809b588
	mov	r3, #0
	mov	r1, r10
	str	r3, [r1, #0x6c]
	mov	r3, r10
	mov	r1, #0xc8
	strh	r2, [r3, #6]
	lsl	r1, #4
	mov	r0, r5
	bl	StartTask
	mov	r0, #0xf
	bl	WaitFrames
	mov	r0, #0xae
	bl	_PlaySound
	mov	r0, #0x37
	bl	WaitFrames
	mov	r0, r5
	bl	StopTask
	ldr	r3, =gState
	mov	r1, #0x93
	lsl	r1, #2
	add	r3, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L9b7ac
	mov	r0, r10
	mov	r1, #2
	bl	_Actor_SetSpriteFlags
	b	.L9b7b4
.L9b7ac:
	mov	r0, r10
	mov	r1, #1
	bl	_Actor_SetSpriteFlags
.L9b7b4:
	mov	r0, r10
	mov	r1, #0
	bl	_Actor_SetColorswap
	ldr	r2, =0x71a
	ldr	r1, [sp, #4]
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	Func_8003f3c
	ldr	r0, =0x922
	mov	r1, #1
	bl	_Func_801776c
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Avoid
