	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_2008598
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r7, r0
	ldr	r3, [r7, #0x50]
	ldrh	r2, [r7, #0x20]
	ldr	r3, [r3, #0x18]
	mov	r1, r2
	mul	r1, r3
	ldr	r3, =iwram_3001ebc
	str	r1, [sp]
	ldr	r3, [r3]
	mov	r8, r3
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r8
	ldr	r5, [r3]
	ldr	r2, =0xff600000
	ldr	r3, [r5, #8]
	mov	r1, #0xa0
	add	r2, r3, r2
	str	r2, [sp, #4]
	lsl	r1, #16
	add	r1, r3
	mov	r11, r1
	ldr	r3, [r5, #0x10]
	ldr	r2, =0xfed40000
	mov	r1, #0xc8
	lsl	r1, #16
	add	r2, r3
	add	r1, r3
	mov	r9, r2
	mov	r10, r1
	mov	r6, #8
.L5f4:
	mov	r0, r6
	bl	__Func_808ba1c
	mov	r5, r0
	cmp	r5, #0
	beq	.L684
	ldr	r3, [r5, #8]
	ldr	r1, [sp, #4]
	ldr	r2, [r5, #0x10]
	cmp	r3, r1
	blt	.L616
	cmp	r3, r11
	bgt	.L616
	cmp	r2, r9
	blt	.L616
	cmp	r2, r10
	ble	.L620
.L616:
	mov	r2, r5
	add	r2, #0x54
	mov	r3, #0
	strb	r3, [r2]
	b	.L684
.L620:
	mov	r2, r5
	mov	r3, #1
	add	r2, #0x54
	strb	r3, [r2]
	ldr	r3, =iwram_3001f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L63a
	ldr	r0, =0x163
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L684
.L63a:
	ldr	r3, [r5, #0x50]
	ldr	r2, [r5, #8]
	ldr	r1, [r3, #0x18]
	ldr	r3, [r7, #8]
	sub	r4, r2, r3
	cmp	r4, #0
	bge	.L64a
	sub	r4, r3, r2
.L64a:
	ldrh	r3, [r5, #0x20]
	mul	r3, r1
	ldr	r1, [sp]
	ldr	r0, [r5, #0x10]
	add	r2, r1, r3
	ldr	r1, [r7, #0x10]
	sub	r3, r0, r1
	cmp	r3, #0
	blt	.L664
	add	r3, r4, r3
	cmp	r3, r2
	blt	.L66c
	b	.L684
.L664:
	sub	r3, r1, r0
	add	r3, r4, r3
	cmp	r3, r2
	bge	.L684
.L66c:
	mov	r0, #0x82
	lsl	r0, #1
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L684
	mov	r3, #0xb6
	mov	r2, r6
	lsl	r3, #1
	add	r2, #0x64
	add	r3, r8
	strh	r2, [r3]
.L684:
	add	r6, #1
	cmp	r6, #0x41
	bls	.L5f4
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_2008598

.thumb_func_start OvlFunc_881_20086b4
	push	{lr}
	ldr	r0, =0x85a
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L6c8
	mov	r0, #0x65
	bl	__Func_8091e9c
	b	.L6d4
.L6c8:
	mov	r0, #0x7b
	bl	__Func_80f9080
	mov	r0, #3
	bl	__Func_8091e9c
.L6d4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20086b4

