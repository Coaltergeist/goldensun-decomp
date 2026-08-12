	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetMercuryDjinni  @ 0x080965a8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x34
	mov	r5, r0
	bl	MapActor_GetActor
	mov	r6, r0
	cmp	r6, #0
	bne	.L965c6
	b	.L967be
.L965c6:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r0, =0x204084
	str	r3, [sp, #4]
	bl	_Func_80b0840
	mov	r0, #0x1e
	bl	WaitFrames
	mov	r2, r6
	mov	r3, #0
	add	r2, #0x5b
	strb	r3, [r2]
	mov	r0, #0xad
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r5
	bl	Func_80925cc
	mov	r0, #0xaf
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r5
	bl	Func_80925cc
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #3
	mov	r2, #0xe
	mov	r0, r5
	bl	MapActor_Jump
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #5
	mov	r2, #0x10
	mov	r0, r5
	bl	MapActor_Jump
	mov	r0, #0x98
	bl	_PlaySound
	mov	r1, #7
	mov	r2, #0x12
	mov	r0, r5
	bl	MapActor_Jump
	mov	r0, #0x14
	bl	WaitFrames
	ldr	r3, [r6, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r9, r1
	add	r1, sp, #0x14
	mov	r3, #0
	str	r1, [sp]
	mov	r10, r3
	mov	r8, r6
	mov	r11, r1
	mov	r7, #7
.L96654:
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	ldr	r1, [r6, #8]
	mov	r0, r9
	bl	_CreateActor
	ldr	r3, [sp]
	mov	r5, r0
	stmia	r3!, {r5}
	mov	r2, r3
	str	r2, [sp]
	cmp	r5, #0
	beq	.L966be
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
	ldr	r3, =Func_8096574
	str	r3, [r5, #0x6c]
	ldrh	r3, [r6, #6]
	mov	r1, #9
	strh	r3, [r5, #6]
	bl	_Actor_SetColorswap
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r1, r10
	ldr	r0, [r5, #0x50]
	bl	Func_8096c48
	mov	r1, r8
	str	r1, [r5, #0x68]
	mov	r10, r0
	mov	r8, r5
.L966be:
	sub	r7, #1
	cmp	r7, #0
	bge	.L96654
	mov	r2, r10
	ldrb	r2, [r2, #0x1c]
	mov	r0, #0x99
	mov	r8, r2
	bl	_PlaySound
	mov	r2, r6
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r7, #0xe
.L966da:
	ldr	r3, [r6, #0xc]
	mov	r1, #0x80
	lsl	r1, #12
	add	r3, r1
	str	r3, [r6, #0xc]
	mov	r0, #1
	sub	r7, #1
	bl	WaitFrames
	cmp	r7, #0
	bge	.L966da
	mov	r0, r6
	bl	_DeleteActor
	mov	r5, r11
	mov	r7, #7
.L966fa:
	ldmia	r5!, {r0}
	sub	r7, #1
	bl	_DeleteActor
	cmp	r7, #0
	bge	.L966fa
	mov	r2, r8
	cmp	r2, #0x60
	beq	.L96712
	mov	r0, r8
	bl	Func_8003f3c
.L96712:
	mov	r0, #0xa
	bl	WaitFrames
	ldr	r5, =gState
	mov	r3, #0xfa
	lsl	r3, #1
	add	r5, r3
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
	ldr	r3, [r6, #8]
	add	r5, sp, #8
	str	r3, [r5]
	ldr	r3, [r6, #0xc]
	str	r3, [r5, #4]
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	str	r3, [r5, #8]
	bl	Func_80974d8
	ldr	r6, [sp, #4]
	mov	r7, #0x17
	add	r6, #0x58
.L9675e:
	ldr	r2, [r5]
	ldr	r3, [r5, #8]
	mov	r0, r6
	mov	r1, #0xf0
	bl	Func_809ba90
	mov	r0, r6
	ldr	r1, =Func_809641c
	bl	Func_809ba7c
	mov	r0, r6
	mov	r1, #7
	bl	Func_809ba70
	ldr	r0, [r6]
	mov	r1, #9
	bl	_Sprite_SetColorswap
	sub	r7, #1
	mov	r0, #1
	bl	WaitFrames
	add	r6, #0x48
	cmp	r7, #0
	bge	.L9675e
	mov	r0, #0x78
	bl	WaitFrames
	ldr	r2, [sp, #4]
	mov	r1, #2
	add	r2, #0x98
	mov	r7, #0x17
.L9679e:
	mov	r3, #5
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L967a8
	strb	r1, [r2]
.L967a8:
	sub	r7, #1
	add	r2, #0x48
	cmp	r7, #0
	bge	.L9679e
	mov	r0, #0x32
	bl	WaitFrames
	bl	_Func_80b0894
	bl	Func_80958e4
.L967be:
	add	sp, #0x34
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GetMercuryDjinni

