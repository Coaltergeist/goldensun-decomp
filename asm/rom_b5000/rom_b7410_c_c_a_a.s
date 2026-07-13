	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b7f9c  @ 0x080b7f9c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e80
	ldr	r5, [r3]
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r5, #0x36]
	mov	r3, #0xfe
	lsl	r3, #8
	strh	r3, [r5, #0x34]
	mov	r3, #0xff
	mov	r6, #0
	lsl	r3, #17
	str	r3, [r5, #0x20]
	str	r6, [r5, #0xc]
	str	r6, [r5, #0x10]
	str	r6, [r5, #0x14]
	str	r6, [r5, #0x1c]
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
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b7f9c

.thumb_func_start Func_80b8000  @ 0x080b8000
	push	{r5, r6, lr}
	bl	GetBattleActor
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #12
	str	r3, [r5, #0x30]
	ldr	r3, =0xab85
	str	r3, [r5, #0x48]
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x5a
	str	r2, [r5, #0x28]
	str	r2, [r5, #0x44]
	strb	r2, [r3]
	mov	r2, r5
	add	r2, #0x58
	mov	r3, #1
	strb	r3, [r2]
	mov	r0, r5
	bl	_Actor_Stop
	mov	r0, r5
	ldr	r1, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r2, #0
	bl	_Actor_TravelTo
	ldr	r0, [r6, #0x10]
	cmp	r0, #0
	bge	.Lb8048
	add	r0, #7
.Lb8048:
	ldr	r1, [r6, #0xc]
	asr	r0, #3
	bl	atan2
	mov	r3, #0x80
	lsl	r3, #8
	add	r0, r3
	strh	r0, [r5, #6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8000

