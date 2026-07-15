	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_b8228, "ax", %progbits

.thumb_func_start Func_80b82c4  @ 0x080b82c4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r1
	mov	r9, r2
	mov	r11, r3
	bl	GetBattleActor
	mov	r5, r0
	mov	r0, r6
	bl	GetBattleActor
	ldr	r7, [r5]
	ldr	r6, [r0]
	mov	r2, #0x4b
	mov	r8, r2
	ldr	r3, [r6, #8]
	ldr	r2, [r7, #8]
	sub	r3, r2
	mov	r0, r8
	mul	r0, r3
	mov	r1, #0x64
	mov	r10, r2
	bl	__divsi3
	ldr	r3, [r6, #0x10]
	ldr	r6, [r7, #0x10]
	sub	r3, r6
	mov	r5, r0
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r3
	bl	__divsi3
	mov	r3, r10
	add	r3, r5
	add	r6, r0
	asr	r5, #8
	asr	r0, #8
	mov	r2, r0
	mul	r2, r0
	mov	r8, r3
	mov	r3, r5
	mul	r3, r5
	add	r3, r2
	mov	r0, r3
	ldr	r2, =Func_8000948
	bl	_call_via_r2
	mov	r1, r9
	lsl	r0, #8
	bl	__divsi3
	mov	r3, r7
	add	r3, #0x58
	mov	r1, #1
	str	r0, [r7, #0x34]
	str	r0, [r7, #0x30]
	strb	r1, [r3]
	sub	r3, #3
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	cmp	r3, #0
	beq	.Lb8352
	mov	r2, r11
	str	r2, [r7, #0x28]
.Lb8352:
	mov	r3, r11
	str	r3, [r7, #0x28]
	ldr	r3, =0xab85
	str	r3, [r7, #0x48]
	mov	r3, r7
	add	r3, #0x5a
	strb	r1, [r3]
	mov	r0, r7
	bl	_Actor_Stop
	mov	r0, r7
	mov	r1, r8
	mov	r2, #0
	mov	r3, r6
	bl	_Actor_TravelTo
	mov	r0, r7
	mov	r1, #2
	bl	_Actor_SetAnim
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b82c4

