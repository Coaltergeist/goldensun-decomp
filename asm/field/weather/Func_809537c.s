	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809537c  @ 0x0809537c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x30
	mov	r10, r0
	bl	MapActor_GetActor
	ldr	r3, =gState
	mov	r6, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	MapActor_GetActor
	mov	r1, #0x80
	ldrh	r3, [r0, #6]
	lsl	r1, #6
	add	r1, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r1, r3
	mov	r11, r1
	bl	CutsceneStart
	mov	r0, #0xa
	bl	WaitFrames
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	mov	r5, #0x80
	mov	r0, #0xaf
	bl	_PlaySound
	lsl	r5, #8
	mov	r1, #1
	mov	r0, r10
	bl	Func_80925cc
	add	r5, r11
	mov	r0, #0x14
	bl	WaitFrames
	mov	r1, r5
	mov	r2, #0
	mov	r0, r10
	bl	Func_8092adc
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	strb	r3, [r1, #9]
	strh	r5, [r6, #6]
	mov	r0, r10
	bl	MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r5, #0x80
	mov	r2, r6
	strb	r3, [r0]
	add	r2, #0x55
	mov	r3, #2
	lsl	r5, #13
	str	r2, [sp, #4]
	mov	r1, r5
	strb	r3, [r2]
	mov	r0, r6
	mov	r2, r11
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r1, r5
	mov	r2, r11
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #4
	mov	r2, #0
	mov	r0, r10
	bl	MapActor_Jump
	mov	r0, r6
	bl	_Actor_WaitMovement
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r2, #9
	mov	r8, r0
	str	r2, [sp, #8]
	cmp	r0, #0x5a
	bne	.L9549c
	mov	r3, #2
	str	r3, [sp, #8]
.L9549c:
	mov	r0, r8
	cmp	r0, #0x5c
	bne	.L954a6
	mov	r1, #0xa
	str	r1, [sp, #8]
.L954a6:
	mov	r2, r8
	cmp	r2, #0x5b
	bne	.L954b0
	mov	r3, #9
	str	r3, [sp, #8]
.L954b0:
	mov	r1, sp
	mov	r0, #0
	add	r1, #0x10
	str	r0, [sp, #0xc]
	str	r1, [sp]
	mov	r9, r6
	mov	r7, #0
.L954be:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r8
	bl	_CreateActor
	ldr	r2, [sp]
	mov	r5, r0
	lsl	r3, r7, #2
	str	r5, [r2, r3]
	cmp	r5, #0
	beq	.L95536
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, r5
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	sub	r2, #0x32
	mov	r3, #2
	strb	r3, [r2]
	mov	r1, r5
	add	r1, #0x5a
	ldrb	r3, [r1]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r1]
	ldr	r3, =Func_8095348
	str	r3, [r5, #0x6c]
	ldr	r1, [r5, #0x50]
	ldrh	r3, [r6, #6]
	mov	r0, #0xd
	strh	r3, [r5, #6]
	neg	r0, r0
	ldrb	r3, [r1, #9]
	mov	r2, r0
	and	r3, r2
	strb	r3, [r1, #9]
	ldr	r1, [sp, #8]
	mov	r0, r5
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	ldr	r0, [r5, #0x50]
	ldr	r1, [sp, #0xc]
	bl	Func_8096c48
	mov	r1, r9
	str	r0, [sp, #0xc]
	str	r1, [r5, #0x68]
	mov	r9, r5
.L95536:
	add	r7, #1
	cmp	r7, #7
	ble	.L954be
	mov	r2, #0x80
	mov	r1, #0x80
	lsl	r2, #8
	add	r2, r11
	lsl	r1, #15
	mov	r0, r6
	bl	Func_8096bec
	mov	r0, #0x88
	bl	_PlaySound
	mov	r0, r10
	mov	r1, #0xc
	mov	r2, #0
	bl	MapActor_Jump
	mov	r0, #0x18
	bl	WaitFrames
	ldr	r2, [sp, #4]
	mov	r3, #0
	strb	r3, [r2]
	str	r3, [r6, #0x24]
	str	r3, [r6, #0x2c]
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x40]
	str	r3, [r6, #0x3c]
	mov	r0, r6
	mov	r1, #0
	bl	_Actor_SetAnim
	ldr	r1, [r6, #0x50]
	mov	r3, #0xd
	ldrb	r2, [r1, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	bl	CutsceneEnd
	add	sp, #0x30
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_809537c

