	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_2009d84
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =bss_36d0
	sub	sp, #0x14
	mov	r0, #8
	mov	r2, #0x10
	mov	r8, r1
	add	r2, sp
	mov	r3, #0
	str	r0, [sp, #0xc]
	str	r0, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r11, r8
.Lm947_1daa:
	ldr	r0, [sp, #0xc]
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x22
	mov	r3, #2
	strb	r3, [r2]
	ldr	r0, [sp, #0xc]
	sub	r0, #8
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r3, [r6, #8]
	mov	r0, r8
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm947_1de2
	ldr	r1, [sp, #4]
	ldr	r3, [r6, #0x10]
	ldr	r2, [r1, r0]
	asr	r3, #20
	cmp	r3, r2
	bne	.Lm947_1de2
	ldr	r3, [r6, #0x28]
	cmp	r3, #0
	bne	.Lm947_1de2
	b	.Lm947_1f90
.Lm947_1de2:
	mov	r0, r6
	ldr	r3, =REG_DMA3SAD
	add	r0, #8
	ldr	r1, =.Lm947_3720
	ldr	r2, =0x84000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x80
	ldr	r1, =REG_DMA3SAD
	lsl	r2, #24
.Lm947_1df6:
	ldr	r3, [r1, #8]
	and	r3, r2
	cmp	r3, #0
	bne	.Lm947_1df6
	mov	r0, r6
	ldr	r1, =.Lm947_3720
	bl	__TestCollision
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	bne	.Lm947_1e18
	mov	r7, r6
	add	r7, #0x55
	mov	r3, #3
	strb	r3, [r7]
	b	.Lm947_1e1c
.Lm947_1e18:
	mov	r7, r6
	add	r7, #0x55
.Lm947_1e1c:
	mov	r0, r8
	mov	r3, r10
	mov	r5, r8
	ldr	r1, [r3, r0]
	add	r5, #0xc
	ldr	r3, [sp, #4]
	add	r5, r10
	ldr	r2, [r3, r0]
	mov	r0, #0
	mov	r3, r5
	bl	OvlFunc_947_200901c
	mov	r0, r11
	ldr	r3, [sp, #4]
	ldr	r1, [r0]
	mov	r0, r8
	ldr	r2, [r3, r0]
	mov	r3, r5
	mov	r0, #2
	bl	OvlFunc_947_200901c
	ldrb	r2, [r7]
	mov	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm947_1ed0
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x32
	bne	.Lm947_1e82
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	mov	r1, #1
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_947_2009074
	ldrb	r3, [r5]
	mov	r1, #1
	orr	r3, r1
	strb	r3, [r5]
	b	.Lm947_1ecc
.Lm947_1e82:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	mov	r0, #2
	bl	__Func_8012038
	cmp	r0, #0x33
	bne	.Lm947_1ec6
	mov	r1, #0
	mov	r0, r6
	bl	OvlFunc_947_2008da8
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r2, #0
	str	r2, [r6, #0xc]
	mov	r5, r6
	add	r5, #0x23
	ldrb	r3, [r5]
	mov	r2, #0xfe
	and	r2, r3
	strb	r2, [r5]
	ldr	r0, [sp, #0xc]
	bl	OvlFunc_947_2009174
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x10]
	ldrb	r3, [r5]
	mov	r0, #1
	orr	r3, r0
	strb	r3, [r5]
	b	.Lm947_1ecc
.Lm947_1ec6:
	mov	r0, r6
	bl	OvlFunc_947_2008d78
.Lm947_1ecc:
	mov	r1, #0
	strb	r1, [r7]
.Lm947_1ed0:
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	ldr	r3, =bss_36d0+0xc
	asr	r2, #20
	asr	r1, #20
	add	r3, r10
	mov	r0, #0
	bl	OvlFunc_947_2008fcc
	ldr	r2, [r6, #0xc]
	cmp	r2, #0
	blt	.Lm947_1f2a
	asr	r2, #20
	add	r2, #6
	mov	r0, #0
	mov	r1, #0x1b
	mov	r3, r9
	bl	OvlFunc_947_2008fcc
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #0
	mov	r3, r9
	bl	OvlFunc_947_200901c
	mov	r3, r11
	ldrb	r2, [r3, #0xd]
	mov	r0, r9
	ldrb	r1, [r0, #1]
	lsr	r2, #6
	mov	r3, #0x3f
	lsl	r2, #6
	and	r3, r1
	orr	r3, r2
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0x10]
	strb	r3, [r0, #1]
	asr	r1, #20
	asr	r2, #20
	mov	r0, #2
	mov	r3, r9
	bl	OvlFunc_947_200901c
.Lm947_1f2a:
	ldr	r3, [r6, #8]
	mov	r1, r8
	asr	r3, #20
	mov	r2, r10
	str	r3, [r1, r2]
	ldr	r3, [r6, #0xc]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	ldr	r3, [r6, #0x10]
	add	r2, #4
	asr	r3, #20
	str	r3, [r1, r2]
	mov	r5, #0
	mov	r7, #0x10
.Lm947_1f48:
	ldr	r3, [sp, #8]
	cmp	r5, r3
	beq	.Lm947_1f88
	ldr	r1, =bss_36d0
	ldr	r0, [r1, r7]
	str	r1, [sp]
	bl	__ClearFlag
	mov	r0, r5
	add	r0, #8
	bl	__MapActor_GetActor
	ldr	r2, [r6, #8]
	ldr	r3, [r0, #8]
	asr	r2, #20
	asr	r3, #20
	ldr	r1, [sp]
	cmp	r2, r3
	bne	.Lm947_1f88
	ldr	r2, [r6, #0x10]
	ldr	r3, [r0, #0x10]
	asr	r2, #20
	asr	r3, #20
	cmp	r2, r3
	bne	.Lm947_1f88
	ldr	r2, [r6, #0xc]
	ldr	r3, [r0, #0xc]
	cmp	r2, r3
	ble	.Lm947_1f88
	ldr	r0, [r1, r7]
	bl	__SetFlag
.Lm947_1f88:
	add	r5, #1
	add	r7, #0x14
	cmp	r5, #3
	bls	.Lm947_1f48
.Lm947_1f90:
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #0xc]
	mov	r0, #0x14
	add	r1, #0x14
	add	r2, #1
	add	r10, r0
	add	r11, r0
	str	r1, [sp, #4]
	str	r2, [sp, #0xc]
	cmp	r2, #0xb
	bhi	.Lm947_1fa8
	b	.Lm947_1daa
.Lm947_1fa8:
	bl	OvlFunc_947_2009be8
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_2009d84

