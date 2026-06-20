	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b8178  @ 0x080b8178
	push	{r5, r6, lr}
	bl	GetBattleActor
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Actor_Stop
	ldr	r3, [r6, #0xc]
	lsl	r1, r3, #1
	add	r1, r3
	lsr	r3, r1, #31
	add	r1, r3
	asr	r1, #1
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Actor_TravelTo
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b8178

.thumb_func_start Func_80b81c8  @ 0x080b81c8
	push	{r5, r6, lr}
	bl	GetBattleActor
	mov	r6, r0
	ldr	r5, [r6]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x28]
	ldr	r3, =0x9999
	mov	r2, r5
	str	r3, [r5, #0x48]
	add	r2, #0x5a
	mov	r3, #0
	str	r3, [r5, #0x44]
	mov	r0, r5
	strb	r3, [r2]
	bl	_Actor_Stop
	ldr	r3, =Func_8000888
	ldr	r0, [r6, #0xc]
	ldr	r1, =0x14ccc
	.call_via r3
	mov	r1, r0
	ldr	r3, [r6, #0x10]
	mov	r0, r5
	mov	r2, #0
	bl	_Actor_TravelTo
	mov	r0, r5
	mov	r1, #5
	bl	_Actor_SetAnim
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80b81c8

	.section .rodata
	.global .Lc2a7c
	.global .Lc2a62

.Lc2a62:
	.incrom 0xc2a62, 0xc2a7c
.Lc2a7c:
	.incrom 0xc2a7c, 0xc2ab8
