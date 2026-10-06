	.include "macros.inc"
	.include "gba.inc"

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

