	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Lift_Target  @ 0x08098848
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	ldr	r7, [r6, #0x14]
	sub	sp, #0x14
	ldr	r5, [r6, #0x10]
	cmp	r7, #0
	beq	.L98936
	bl	Func_8097384
	mov	r0, r5
	str	r7, [r5, #0x68]
	ldr	r1, =gScript_0809f0bc
	bl	_Actor_SetScript
	ldr	r0, [r6, #4]
	add	r5, sp, #8
	str	r0, [r5]
	mov	r2, #0x80
	ldr	r1, [r6, #8]
	lsl	r2, #13
	add	r1, r2
	str	r1, [r5, #4]
	mov	r3, #0x80
	ldr	r2, [r6, #0xc]
	lsl	r3, #14
	add	r0, r3
	mov	r3, #0x80
	str	r2, [r5, #8]
	lsl	r3, #8
	bl	Func_8098a84
	ldr	r2, =0xffe00000
	str	r0, [sp]
	ldr	r0, [r5]
	ldr	r1, [r5, #4]
	add	r0, r2
	mov	r3, #0
	ldr	r2, [r5, #8]
	bl	Func_8098a84
	str	r0, [sp, #4]
	mov	r0, #0xf
	mov	r8, sp
	bl	WaitFrames
	mov	r6, r8
	mov	r5, #1
.L988ac:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.L988bc
	mov	r1, #0xe0
	ldrh	r2, [r0, #6]
	lsl	r1, #12
	bl	Func_8096bec
.L988bc:
	sub	r5, #1
	cmp	r5, #0
	bge	.L988ac
	ldr	r0, [sp]
	bl	_Actor_WaitMovement
	ldr	r3, =Func_8096b88
	mov	r0, #0x82
	str	r3, [r7, #0x6c]
	bl	_PlaySound
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #4
	ldr	r0, [sp]
	strb	r3, [r2]
	ldr	r5, [r7, #0xc]
	cmp	r0, #0
	beq	.L98926
	mov	r2, r8
	ldr	r3, [r2, #4]
	cmp	r3, #0
	beq	.L98926
	mov	r2, #0x80
	lsl	r2, #14
	add	r3, r5, r2
	cmp	r5, r3
	bgt	.L98926
	b	.L988f8
.L988f6:
	ldr	r0, [sp]
.L988f8:
	ldr	r3, [r0, #0xc]
	mov	r1, #0x80
	lsl	r1, #7
	add	r3, r1
	str	r3, [r0, #0xc]
	mov	r3, r8
	ldr	r2, [r3, #4]
	ldr	r3, [r2, #0xc]
	add	r3, r1
	str	r3, [r2, #0xc]
	ldr	r3, [r7, #0xc]
	add	r3, r1
	str	r3, [r7, #0xc]
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x80
	lsl	r3, #14
	add	r2, r5, r3
	ldr	r3, [r7, #0xc]
	cmp	r3, r2
	ble	.L988f6
	ldr	r0, [sp]
.L98926:
	bl	Func_80981b0
	mov	r2, r8
	ldr	r0, [r2, #4]
	bl	Func_80981b0
	bl	Func_809748c
.L98936:
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Field_Lift_Target
