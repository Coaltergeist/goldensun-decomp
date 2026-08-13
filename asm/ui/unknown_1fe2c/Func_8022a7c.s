	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8022a7c  @ 0x08022a7c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r3, sp
	mov	r4, r9
	str	r4, [r3]
	mov	r8, r0
	mov	r10, r1
	mov	r11, r2
	bl	Func_8015e8c
	mov	r6, r0
	cmp	r6, #0
	beq	.L22b30
	mov	r3, #1
	strb	r3, [r6, #5]
	strb	r3, [r6, #4]
	mov	r0, #0x80
	bl	AllocUploadSpriteGFX
	mov	r3, #0xf0
	strb	r3, [r6, #0xf]
	mov	r3, #0x78
	mov	r7, r6
	strh	r3, [r6, #6]
	strh	r3, [r6, #8]
	ldr	r3, =0x40000400
	add	r7, #0x10
	mov	r5, #0
	strb	r0, [r6, #0xe]
	str	r3, [r7, #4]
	str	r5, [r7, #8]
	mov	r5, r9
	sub	r5, #4
	ldr	r0, [r5]
	ldrh	r2, [r0, #0xc]
	ldr	r3, .L22af4	@ 0x1ff
	lsl	r2, #3
	add	r2, r8
	and	r2, r3
	ldrh	r1, [r7, #6]
	ldr	r3, =0xfffffe00
	and	r3, r1
	orr	r3, r2
	strh	r3, [r7, #6]
	ldrh	r3, [r0, #0xe]
	lsl	r3, #3
	add	r3, r10
	strb	r3, [r7, #4]
	mov	r3, r11
	ldrb	r0, [r6, #0xe]
	cmp	r3, #0
	beq	.L22b04
	ldr	r1, =.L313a4
	b	.L22b06

	.align	2, 0
.L22af4:
	.word	0x1ff
	.pool

.L22b04:
	ldr	r1, =.L31424
.L22b06:
	bl	UploadSprite2
	ldr	r3, .L22b24	@ 0x3ff
	ldrh	r2, [r7, #8]
	and	r0, r3
	ldr	r3, =0xfffffc00
	and	r3, r2
	orr	r3, r0
	strh	r3, [r7, #8]
	ldr	r0, [r5]
	mov	r1, r6
	bl	Func_8016584
	b	.L22b30

	.align	2, 0
.L22b24:
	.word	0x3ff
	.pool

.L22b30:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8022a7c
