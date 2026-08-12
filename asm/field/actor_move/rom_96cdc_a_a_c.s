	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8096d2c  @ 0x08096d2c
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L96d4e
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Actor_SetScript
	b	.L96d78
.L96d4e:
	lsl	r0, #10
	bl	sin
	str	r0, [r5, #0x18]
	str	r0, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	add	r3, r2
	mov	r2, #0x90
	lsl	r2, #12
	add	r3, r2
	str	r3, [r5, #0x10]
.L96d78:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8096d2c

.thumb_func_start Func_8096d84  @ 0x08096d84
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r2, r5
	add	r2, #0x64
	ldrh	r3, [r2]
	add	r3, #1
	ldr	r6, [r5, #0x68]
	strh	r3, [r2]
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0x1f
	ble	.L96da6
	ldr	r1, =Data_9f0b0
	mov	r0, r5
	bl	_Actor_SetScript
	b	.L96dd2
.L96da6:
	lsl	r0, #10
	bl	sin
	neg	r3, r0
	str	r0, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r3, [r6, #8]
	mov	r1, #0x80
	str	r3, [r5, #8]
	ldr	r3, [r5, #0xc]
	lsl	r1, #9
	add	r3, r1
	str	r3, [r5, #0xc]
	sub	r1, r0
	ldr	r3, [r6, #0x10]
	lsl	r2, r1, #2
	add	r2, r1
	sub	r3, r2
	mov	r2, #0x80
	lsl	r2, #13
	add	r3, r2
	str	r3, [r5, #0x10]
.L96dd2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8096d84

.thumb_func_start Func_8096ddc  @ 0x08096ddc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f30
	ldr	r3, [r3]
	ldr	r1, [r3, #0x10]
	sub	sp, #0xc
	mov	r2, #4
	mov	r10, r3
	add	r2, sp
	mov	r3, #0x3f
	str	r1, [sp]
	mov	r6, r0
	mov	r7, #0
	mov	r9, r2
	mov	r11, r3
.L96e04:
	ldr	r1, [r6, #8]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0xc]
	mov	r0, #0x1a
	bl	_CreateActor
	lsl	r3, r7, #2
	mov	r1, r9
	str	r0, [r3, r1]
	cmp	r0, #0
	beq	.L96ebc
	ldr	r3, [r6, #0x14]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, #0
	ldr	r5, [r0, #0x50]
	strb	r2, [r3]
	add	r3, #0xf
	strh	r2, [r3]
	ldr	r1, .L96e40	@ 0
	ldr	r3, =0x1999
	mov	r8, r1
	str	r6, [r0, #0x68]
	str	r3, [r0, #0x1c]
	str	r3, [r0, #0x18]
	cmp	r5, #0
	beq	.L96ebc
	b	.L96e4c

	.align	2, 0
.L96e40:
	.word	0
	.pool

.L96e4c:
	mov	r1, #0
	mov	r0, r5
	bl	_Sprite_SetAnim
	mov	r3, r5
	add	r3, #0x26
	mov	r2, r8
	strb	r2, [r3]
	ldrb	r0, [r5, #0x1c]
	bl	Func_8003f3c
	mov	r3, r10
	add	r3, #0x46
	ldrh	r3, [r3]
	strb	r3, [r5, #0x1c]
	ldrb	r3, [r5, #0x1d]
	mov	r2, #1
	orr	r3, r2
	strb	r3, [r5, #0x1d]
	ldrb	r3, [r5, #0x1c]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r1, [r3, #2]
	ldr	r2, .L96eb4	@ 0xfffffc00
	ldrh	r3, [r5, #8]
	lsl	r1, #17
	lsr	r1, #22
	and	r3, r2
	orr	r3, r1
	mov	r1, #0x21
	neg	r1, r1
	strh	r3, [r5, #8]
	ldrb	r3, [r5, #5]
	mov	r2, r1
	and	r3, r2
	mov	r2, r11
	and	r3, r2
	mov	r2, #0x40
	orr	r3, r2
	ldrb	r2, [r5, #7]
	strb	r3, [r5, #5]
	mov	r3, r11
	and	r3, r2
	mov	r2, #0x80
	orr	r3, r2
	strb	r3, [r5, #7]
	ldr	r3, [r5, #0x28]
	mov	r1, r8
	strb	r1, [r3, #0x16]
	b	.L96ebc

	.align	2, 0
.L96eb4:
	.word	0xfffffc00
	.pool

.L96ebc:
	add	r7, #1
	cmp	r7, #1
	ble	.L96e04
	ldr	r2, [sp, #4]
	ldr	r3, =Func_8096d84
	ldr	r0, [r2, #0x50]
	str	r3, [r2, #0x6c]
	mov	r2, #0xd
	ldrb	r1, [r0, #9]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0, #9]
	mov	r3, r9
	ldr	r0, [r3, #4]
	ldr	r3, =Func_8096d2c
	str	r3, [r0, #0x6c]
	ldr	r1, [sp]
	ldr	r3, [r1, #0x50]
	ldr	r4, [r0, #0x50]
	ldrb	r1, [r3, #9]
	mov	r3, #0xc
	and	r3, r1
	ldrb	r1, [r4, #9]
	and	r2, r1
	orr	r2, r3
	add	r0, #0x23
	mov	r3, #2
	strb	r2, [r4, #9]
	strb	r3, [r0]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8096ddc

