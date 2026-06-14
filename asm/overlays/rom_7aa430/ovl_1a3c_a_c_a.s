	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_923_2009cb4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #10
	str	r3, [r6, #0x30]
	mov	r3, #0x80
	lsl	r3, #9
	ldr	r2, [r6, #0x68]
	str	r3, [r6, #0x34]
	ldr	r3, [r2, #8]
	mov	r11, r3
	mov	r3, #0x80
	ldr	r2, [r2, #0x10]
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	ldr	r3, [r6, #8]
	mov	r9, r2
	mov	r2, r11
	sub	r0, r2, r3
	sub	sp, #4
	cmp	r0, #0
	bge	.L1cf4
	ldr	r3, =0xffff
	add	r0, r3
.L1cf4:
	ldr	r3, [r6, #0x10]
	asr	r0, #16
	mov	r2, r9
	mov	r10, r0
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L1d06
	ldr	r3, =0xffff
	add	r0, r3
.L1d06:
	asr	r0, #16
	mov	r8, r0
	mov	r2, r10
	mov	r0, r10
	mul	r0, r2
	mov	r2, r8
	mov	r3, r8
	mul	r3, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	ldr	r3, [r6, #8]
	mov	r2, r11
	sub	r2, r3
	ldr	r3, [r6, #0x10]
	mov	r10, r2
	mov	r2, r9
	sub	r2, r3
	mov	r3, #0x80
	lsl	r7, r0, #16
	lsl	r3, #15
	mov	r8, r2
	cmp	r7, r3
	bge	.L1d5a
	ldr	r4, =Func_8000888
	mov	r0, r10
	mov	r1, r10
	.call_via r4
	mov	r3, r0
	mov	r1, r8
	mov	r0, r8
	.call_via r4
	add	r3, r0
	mov	r0, r3
	bl	__FastIntSqrtFP1616_RAM
	mov	r7, r0
.L1d5a:
	mov	r1, r7
	cmp	r7, #0
	bge	.L1d62
	add	r1, r7, #7
.L1d62:
	ldr	r3, [r6, #0x30]
	asr	r5, r1, #3
	cmp	r5, r3
	ble	.L1d6c
	mov	r5, r3
.L1d6c:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r7, r2
	bge	.L1d7e
	mov	r3, r11
	mov	r2, r9
	str	r3, [r6, #8]
	str	r2, [r6, #0x10]
	b	.L1dba
.L1d7e:
	cmp	r7, r5
	ble	.L1dae
	ldr	r3, =Func_80008ac
	mov	r1, r10
	mov	r9, r3
	mov	r0, r7
	bl	_call_via_r9
	ldr	r3, =Func_8000888
	mov	r1, r5
	.call_via r3
	mov	r1, r8
	str	r3, [sp]
	mov	r10, r0
	mov	r0, r7
	bl	_call_via_r9
	mov	r1, r5
	ldr	r3, [sp]
	.call_via r3
	mov	r8, r0
.L1dae:
	ldr	r3, [r6, #8]
	add	r3, r10
	str	r3, [r6, #8]
	ldr	r3, [r6, #0x10]
	add	r3, r8
	str	r3, [r6, #0x10]
.L1dba:
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r0, #1
	ldr	r1, [r6, #0x50]
	lsr	r2, #1
	and	r2, r0
	ldr	r4, [r1, #0x28]
	lsl	r3, r2, #3
	sub	r3, r2
	add	r1, #0x25
	strb	r3, [r4, #5]
	strb	r0, [r1]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_923_2009cb4

.thumb_func_start OvlFunc_923_2009df8
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r1, #1
	add	r3, r1
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	ldr	r7, [r2, r3]
	mov	r0, #0x1a
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1e5c
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_923__0200a7c4
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r2, #0
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	str	r7, [r5, #0x68]
	cmp	r6, #0
	beq	.L1e5c
	mov	r0, r6
	mov	r1, #2
	bl	__Sprite_SetAnim
	ldr	r3, .L1e80	@ 0
	mov	r2, r6
	add	r2, #0x26
	strb	r3, [r2]
	mov	r3, #0xd
	ldrb	r2, [r6, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #9]
.L1e5c:
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #0xc]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1eb6
	ldr	r3, [r7, #0x14]
	ldr	r1, =gScript_923__0200a7c4
	str	r3, [r5, #0x14]
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	mov	r2, #0
	b	.L1e90

	.align	2, 0
.L1e80:
	.word	0
	.pool

.L1e90:
	add	r3, #0x55
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	cmp	r6, #0
	beq	.L1eb6
	mov	r0, r6
	mov	r1, #1
	bl	__Sprite_SetAnim
	mov	r2, r6
	ldr	r3, =0
	add	r2, #0x26
	strb	r3, [r2]
.L1eb6:
	mov	r0, #0x82
	bl	__PlaySound
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2009df8

.thumb_func_start OvlFunc_923_2009ec8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001edc
	ldr	r2, [r3]
	ldr	r2, [r2]
	sub	r3, #0x20
	mov	r8, r2
	mov	r0, #0xfa
	ldr	r2, [r3]
	ldr	r3, =gState
	lsl	r0, #1
	add	r3, r0
	ldr	r3, [r3]
	lsl	r3, #2
	add	r3, #0x14
	mov	r1, r8
	ldr	r7, [r2, r3]
	ldr	r3, [r1]
	sub	sp, #4
	cmp	r3, #2
	bhi	.L1fc0
	bl	__CutsceneStart
	mov	r2, r8
	ldr	r6, [r2, #0x14]
	cmp	r6, #0
	bne	.L1f68
	ldr	r2, [r7, #0xc]
	mov	r3, #0xc0
	lsl	r3, #13
	add	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #0x10]
	mov	r0, #0x1a
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L1f64
	ldr	r3, [r7, #0x14]
	ldr	r4, [r5, #0x50]
	str	r3, [r5, #0x14]
	ldr	r1, =gScript_923__0200a7e8
	str	r4, [sp]
	bl	__Actor_SetScript
	mov	r2, r5
	mov	r3, #4
	add	r2, #0x55
	str	r7, [r5, #0x68]
	strb	r3, [r2]
	ldr	r0, =0xffff8000
	ldr	r3, [r5, #0xc]
	ldr	r4, [sp]
	add	r3, r0
	str	r3, [r5, #0xc]
	cmp	r4, #0
	beq	.L1f56
	mov	r3, r4
	add	r3, #0x26
	strb	r6, [r3]
	mov	r2, #0xd
	ldrb	r3, [r4, #9]
	neg	r2, r2
	and	r2, r3
	mov	r3, #4
	orr	r2, r3
	strb	r2, [r4, #9]
.L1f56:
	mov	r3, r5
	add	r3, #0x54
	mov	r1, r8
	strb	r6, [r3]
	str	r5, [r1, #0x14]
	mov	r6, r5
	b	.L1f68
.L1f64:
	mov	r2, r8
	ldr	r6, [r2, #0x14]
.L1f68:
	mov	r3, r8
	ldr	r5, [r3]
	cmp	r5, #2
	bgt	.L1f9a
	mov	r7, r6
	mov	r0, #1
	mov	r1, #5
	add	r7, #0x54
	mov	r9, r0
	mov	r10, r1
.L1f7c:
	bl	OvlFunc_923_2009df8
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r2, r9
	mov	r3, r10
	sub	r1, r3, r5
	strb	r2, [r7]
	mov	r0, r6
	add	r5, #1
	bl	__Actor_SetAnim
	cmp	r5, #2
	ble	.L1f7c
.L1f9a:
	mov	r0, r8
	mov	r3, #3
	str	r3, [r0]
	ldr	r1, =0xfff00000
	ldr	r3, [r6, #8]
	mov	r2, #0x80
	lsl	r2, #12
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r3, [r6, #0x10]
	and	r3, r1
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r0, =0x161
	bl	__SetFlag
	bl	__CutsceneEnd
.L1fc0:
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_923_2009ec8

