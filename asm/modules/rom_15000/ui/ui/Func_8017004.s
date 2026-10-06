	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8017004  @ 0x08017004
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r1, [sp]
	mov	r7, r0
	mov	r3, #0x18
	ldrsh	r6, [r7, r3]
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	sub	r3, r0, r6
	mov	r10, r3
	ldrh	r3, [r7, #8]
	mov	r1, r3
	mul	r1, r6
	ldr	r3, =Func_80008ac
	add	r5, sp, #4
	lsl	r1, #16
	lsl	r0, #17
	mov	r8, r3
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xc]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r0, r3
	ldrh	r3, [r7, #8]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	mov	r9, r0
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xa]
	mov	r1, r3
	mul	r1, r6
	str	r0, [r5, #8]
	asr	r0, #15
	mov	r11, r0
	mov	r3, #0x1a
	ldrsh	r0, [r7, r3]
	lsl	r1, #16
	lsl	r0, #17
	str	r1, [r5]
	str	r0, [r5, #4]
	bl	_call_via_r8
	ldrh	r3, [r7, #0xe]
	str	r0, [r5, #8]
	asr	r0, #16
	add	r6, r0, r3
	ldrh	r3, [r7, #0xa]
	mov	r1, r10
	mul	r1, r3
	lsl	r1, #16
	str	r1, [r5]
	ldr	r0, [r5, #4]
	bl	_call_via_r8
	str	r0, [r5, #8]
	asr	r5, r0, #15
	mov	r3, r5
	mov	r0, r9
	mov	r1, r6
	mov	r2, r11
	bl	FillUIRegion
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L170ac
	mov	r3, r9
	strh	r3, [r7, #0x1c]
	mov	r3, r11
	strh	r6, [r7, #0x1e]
	strh	r3, [r7, #0x20]
	strh	r5, [r7, #0x22]
.L170ac:
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8017004

