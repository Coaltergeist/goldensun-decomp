	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80df90c  @ 0x080df90c
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	mov	r6, r1
	mov	r11, r2
	bl	_GetBattleActor
	mov	r5, r0
	mov	r0, r6
	bl	_GetBattleActor
	ldr	r6, [r5]
	ldr	r0, [r0]
	mov	r2, #0x50
	mov	r10, r2
	ldr	r3, [r0, #8]
	ldr	r2, [r6, #8]
	sub	r3, r2
	mov	r8, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	mov	r9, r2
	bl	__divsi3
	mov	r2, r8
	ldr	r3, [r2, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r3, r2
	mov	r5, r0
	mov	r1, #0x64
	mov	r0, r10
	mul	r0, r3
	mov	r8, r2
	bl	__divsi3
	add	r9, r5
	add	r8, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_8000948
	bl	_call_via_r2
	mov	r1, r11
	lsl	r0, #8
	bl	__divsi3
	mov	r3, r6
	mov	r1, #1
	add	r3, #0x58
	str	r0, [r6, #0x34]
	str	r0, [r6, #0x30]
	strb	r1, [r3]
	ldr	r3, =0xab85
	str	r3, [r6, #0x48]
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x5a
	str	r2, [r6, #0x28]
	str	r2, [r6, #0x44]
	mov	r0, r6
	strb	r1, [r3]
	bl	_Actor_Stop
	mov	r0, r6
	mov	r1, r9
	mov	r2, #0
	mov	r3, r8
	bl	_Actor_TravelTo
	mov	r0, r6
	mov	r1, #2
	bl	_Actor_SetAnim
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80df90c

.thumb_func_start Func_80df9d0  @ 0x080df9d0
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x90
	lsl	r3, #1
	mov	r14, r0
	mov	r6, r1
	mov	r12, r2
	mov	r7, #0
	mov	r8, r3
	mov	r5, #0
.Ldf9e6:
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r0, r3, #1
	mov	r3, r14
	mov	r1, #0
	add	r4, r5, r3
.Ldf9f2:
	lsr	r3, r1, #31
	add	r3, r1, r3
	ldrb	r2, [r4]
	asr	r3, #1
	add	r3, r0, r3
	add	r1, #1
	add	r4, #1
	strb	r2, [r6, r3]
	cmp	r1, #0x28
	bne	.Ldf9f2
	add	r7, #1
	add	r5, r12
	cmp	r7, r8
	bne	.Ldf9e6
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80df9d0

	.section .rodata
	.global .Leebe9
	.global .Leebec
	.global .Leec28
	.global .Leec2f
	.global .Leec36
	.global .Leec3d
	.global .Leec44
	.global .Leec52

.Leebe9:
	.incrom 0xeebe9, 0xeebec
.Leebec:
	.incrom 0xeebec, 0xeec28
.Leec28:
	.incrom 0xeec28, 0xeec2f
.Leec2f:
	.incrom 0xeec2f, 0xeec36
.Leec36:
	.incrom 0xeec36, 0xeec3d
.Leec3d:
	.incrom 0xeec3d, 0xeec44
.Leec44:
	.incrom 0xeec44, 0xeec52
.Leec52:
	.incrom 0xeec52, 0xeec5a
