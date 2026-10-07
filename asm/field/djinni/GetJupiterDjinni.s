	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetJupiterDjinni  @ 0x08095a44
	push	{r5, r6, r7, lr}
	sub	sp, #0xc
	mov	r6, r0
	bl	MapActor_GetActor
	mov	r7, r0
	cmp	r7, #0
	bne	.L95a56
	b	.L95b6e
.L95a56:
	bl	Func_80958a8
	ldr	r3, =iwram_3001f30
	ldr	r0, =0x20118c
	ldr	r5, [r3]
	bl	_Func_80b0840
	mov	r0, #0xad
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xae
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #1
	bl	Func_80925cc
	mov	r0, #0xaf
	bl	_PlaySound
	mov	r1, #1
	mov	r0, r6
	bl	Func_80925cc
	mov	r0, #0x14
	bl	WaitFrames
	mov	r0, #0x8c
	bl	_PlaySound
	ldr	r3, =Func_809592c
	mov	r0, #0x28
	str	r3, [r7, #0x6c]
	bl	WaitFrames
	mov	r0, #0x99
	bl	_PlaySound
	mov	r1, #0xc
	mov	r2, #0x16
	mov	r0, r6
	bl	MapActor_Jump
	ldr	r3, [r7, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r7, #0x10]
	mov	r0, r6
	str	r3, [r6, #8]
	bl	Func_80974d8
	mov	r0, r7
	bl	_DeleteActor
	mov	r0, #0xa4
	bl	_PlaySound
	add	r5, #0x58
	mov	r7, #0x17
.L95ad8:
	mov	r1, #0x8e
	ldr	r2, [r6]
	ldr	r3, [r6, #8]
	mov	r0, r5
	lsl	r1, #1
	bl	Func_809ba90
	mov	r0, r5
	ldr	r1, =Func_8095938
	bl	Func_809ba7c
	mov	r0, r5
	mov	r1, #7
	bl	Func_809ba70
	bl	Random
	lsl	r1, r0, #3
	sub	r1, r0
	lsr	r1, #16
	ldr	r0, [r5]
	bl	_Sprite_SetColorswap
	bl	Random
	mov	r1, #3
	bl	__udivsi3
	mov	r3, #0x80
	lsl	r3, #9
	add	r0, r3
	str	r0, [r5, #0x2c]
	str	r0, [r5, #0x28]
	sub	r7, #1
	mov	r0, #1
	bl	WaitFrames
	add	r5, #0x48
	cmp	r7, #0
	bge	.L95ad8
	mov	r0, #0x3c
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
	mov	r0, #0x28
	bl	WaitFrames
	mov	r0, #0xa4
	bl	_PlaySound
	mov	r0, #0x64
	bl	WaitFrames
	bl	_Func_80b0894
	bl	Func_80958e4
.L95b6e:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end GetJupiterDjinni

