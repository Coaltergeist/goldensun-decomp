	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartLuckyDice  @ 0x080f4008
	push	{lr}
	ldr	r3, =0x40
	mov	r2, #0x80
	lsl	r2, #19
	strh	r3, [r2]
	mov	r0, #9
	bl	_PlaySound
	bl	LuckyDiceMain
	mov	r0, #0
	b	.Lf4024

	.pool_aligned

.Lf4024:
	pop	{r1}
	bx	r1
.func_end StartLuckyDice

.thumb_func_start Func_80f4028  @ 0x080f4028
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	mov	r3, #0x98
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	lsl	r3, #17
	str	r3, [r5, #0x20]
	ldr	r3, =gPhysVec
	mov	r6, #0
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	strh	r6, [r5, #0x36]
	str	r6, [r5, #0x1c]
	str	r6, [r3, #0xc]
	str	r6, [r3, #0x10]
	str	r6, [r5, #0x18]
	sub	sp, #0xc
	bl	InitMatrixStack
	mov	r0, r5
	add	r0, #0xc
	bl	MatrixTranslatev
	mov	r3, #0x36
	ldrsh	r0, [r5, r3]
	bl	MatrixYaw
	mov	r3, #0x34
	ldrsh	r0, [r5, r3]
	bl	MatrixPitch
	mov	r0, sp
	str	r6, [r0]
	str	r6, [r0, #4]
	ldr	r3, [r5, #0x20]
	mov	r1, r5
	str	r3, [r0, #8]
	ldr	r3, =Func_80009c0
	bl	_call_via_r3
	mov	r0, #0xfa
	mov	r1, #0xc0
	ldr	r3, =Func_80008ac
	lsl	r1, #8
	lsl	r0, #16
	bl	_call_via_r3
	mov	r1, r0
	mov	r0, #0xfa
	lsl	r0, #16
	ldr	r2, =0x7fff0000
	bl	Func_8005258
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80f4028

