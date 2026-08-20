	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_2009c18
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #0x34]
	ldr	r1, [sp, #0x38]
	mov	r9, sp
	mov	r11, r3
	ldr	r3, =.Lm922_2418
	mov	r6, r2
	mov	r2, r9
	mov	r8, r0
	mov	r10, r1
	ldmia	r3!, {r0, r1, r7}
	stmia	r2!, {r0, r1, r7}
	mov	r3, r6
	mov	r0, #0xde
	mov	r1, r4
	mov	r2, r5
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	bne	.Lm922_1c56
	b	.Lm922_1d5a
.Lm922_1c56:
	mov	r1, r8
	mov	r5, #0xf
	add	r1, #1
	and	r1, r5
	ldr	r7, [r6, #0x50]
	bl	__Actor_SetAnim
	mov	r3, r8
	and	r3, r5
	lsl	r5, r3, #2
	mov	r2, r9
	ldr	r1, [r2, r5]
	mov	r0, r6
	bl	__Actor_SetScript
	mov	r3, r6
	mov	r2, #0
	add	r3, #0x55
	strb	r2, [r3]
	mov	r3, r7
	add	r3, #0x26
	strb	r2, [r3]
	ldr	r3, =OvlFunc_922_2009bdc
	str	r3, [r6, #0x6c]
	mov	r3, r11
	str	r3, [r6, #0x44]
	ldr	r3, [sp, #0x2c]
	str	r3, [r6, #0x48]
	ldr	r3, [sp, #0x30]
	mov	r0, #0xd
	str	r3, [r6, #0x4c]
	str	r2, [r6, #0x30]
	str	r2, [r6, #0x34]
	neg	r0, r0
	ldrb	r2, [r7, #9]
	mov	r11, r0
	mov	r3, r11
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r7, #9]
	ldr	r3, =0xffff0000
	mov	r1, r8
	and	r3, r1
	cmp	r3, #0
	beq	.Lm922_1d5a
	mov	r2, r10
	cmp	r2, #0
	beq	.Lm922_1d5a
	mov	r3, #0x80
	lsl	r3, #9
	and	r3, r1
	cmp	r3, #0
	beq	.Lm922_1cca
	ldr	r1, [r2, #4]
	mov	r0, r6
	bl	__Func_80929d8
.Lm922_1cca:
	mov	r3, #0x80
	lsl	r3, #10
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.Lm922_1cf6
	mov	r1, r6
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r1]
	mov	r1, r10
	ldrb	r2, [r1]
	mov	r3, #3
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, r11
	lsl	r2, #2
	and	r3, r1
	orr	r3, r2
	strb	r3, [r7, #9]
.Lm922_1cf6:
	mov	r2, #0x80
	lsl	r2, #12
	mov	r3, r8
	and	r2, r3
	cmp	r2, #0
	beq	.Lm922_1d0c
	mov	r7, r10
	ldr	r3, [r7, #8]
	str	r3, [r6, #0x18]
	ldr	r3, [r7, #0xc]
	str	r3, [r6, #0x1c]
.Lm922_1d0c:
	mov	r3, #0x80
	lsl	r3, #11
	mov	r0, r8
	and	r3, r0
	cmp	r3, #0
	beq	.Lm922_1d5a
	mov	r1, r9
	ldr	r5, [r1, r5]
	cmp	r2, #0
	beq	.Lm922_1d3c
	mov	r2, r10
	ldr	r0, [r2, #0x10]
	ldr	r3, [r6, #0x18]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	bl	_divsi3_RAM
	str	r0, [r6, #0x30]
	mov	r3, r10
	ldr	r0, [r3, #0x14]
	ldr	r3, [r6, #0x1c]
	ldr	r1, [r5, #0xc]
	sub	r0, r3
	b	.Lm922_1d54
.Lm922_1d3c:
	mov	r7, r10
	ldr	r0, [r7, #0x10]
	ldr	r1, =0xffff0000
	add	r0, r1
	ldr	r1, [r5, #0xc]
	bl	_divsi3_RAM
	str	r0, [r6, #0x30]
	ldr	r0, [r7, #0x14]
	ldr	r2, =0xffff0000
	ldr	r1, [r5, #0xc]
	add	r0, r2
.Lm922_1d54:
	bl	_divsi3_RAM
	str	r0, [r6, #0x34]
.Lm922_1d5a:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_2009c18

