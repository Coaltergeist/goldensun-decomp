	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b0fa4  @ 0x080b0fa4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r1, [sp, #8]
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x9b
	ldr	r5, [r3]
	lsl	r2, #2
	add	r7, r5, r2
	ldr	r2, =0x3a6
	add	r3, r5, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r0
	mov	r0, r1
	mov	r1, #7
	str	r3, [sp, #4]
	bl	__modsi3
	ldr	r3, [sp, #8]
	mov	r2, r9
	sub	r6, r3, r0
	cmp	r2, #0
	beq	.Lb10ac
	mov	r0, r9
	bl	_Func_8016478
	cmp	r6, #0
	beq	.Lb100c
	ldr	r2, =0x392
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r3, #0x10
	neg	r3, r3
	mov	r1, #0x80
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_801eadc
	mov	r2, #0
	mov	r3, #0x11
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb100c:
	ldr	r2, [sp, #4]
	add	r3, r6, #7
	cmp	r3, r2
	bge	.Lb1036
	mov	r2, #0xe5
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	mov	r1, #0x80
	mov	r3, #0x18
	str	r3, [sp]
	mov	r2, r9
	mov	r3, #0xd8
	lsl	r1, #23
	bl	_Func_801eadc
	mov	r2, #0
	mov	r3, #0xf
	strb	r2, [r0, #4]
	strb	r3, [r0, #5]
	strh	r2, [r0, #0xc]
.Lb1036:
	ldr	r2, [sp, #4]
	mov	r3, #0
	mov	r10, r3
	cmp	r6, r2
	bcs	.Lb10ac
	lsl	r3, r6, #1
	add	r3, r7
	mov	r8, r3
	mov	r3, #0x10
	mov	r11, r3
.Lb104a:
	mov	r3, r8
	mov	r2, #0
	ldrsh	r5, [r3, r2]
	mov	r0, r5
	bl	_GetItemInfo
	mov	r2, r10
	lsl	r3, r2, #5
	mov	r2, #0
	str	r2, [sp]
	mov	r7, r0
	mov	r1, #1
	mov	r0, r5
	mov	r2, r9
	bl	_Func_801eb90
	mov	r3, #0xfc
	strb	r3, [r0, #0xf]
	ldr	r3, [sp, #8]
	cmp	r6, r3
	bne	.Lb1080
	mov	r3, #9
	strb	r3, [r0, #5]
	mov	r3, #0xa
	strh	r3, [r0, #0xc]
	mov	r3, #0xfd
	strb	r3, [r0, #0xf]
.Lb1080:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r3, #0
	mov	r2, r11
	mov	r1, r9
	bl	Func_80b0744
	mov	r3, #0xfb
	mov	r2, #1
	strb	r3, [r0, #0xf]
	add	r10, r2
	mov	r3, #0x20
	add	r11, r3
	mov	r2, r10
	mov	r3, #2
	add	r8, r3
	add	r6, #1
	cmp	r2, #6
	bhi	.Lb10ac
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bcc	.Lb104a
.Lb10ac:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b0fa4

