	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2e30  @ 0x080b2e30
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r11, r1
	ldr	r7, [r3]
	ldr	r1, =0x3aa
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r9, r3
	cmp	r0, #0
	beq	.Lb2eb8
	ldr	r2, =0x3a7
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r6, r3
	bge	.Lb2eb8
	mov	r2, #0x8a
	add	r3, r7, #2
	sub	r1, #0x3e
	lsl	r2, #1
	mov	r10, r3
	mov	r8, r1
	add	r5, r7, r2
.Lb2e72:
	cmp	r6, r11
	bne	.Lb2e80
	ldr	r0, [r5]
	mov	r1, #0x1e
	bl	_Sprite_SetAnim
	b	.Lb2e88
.Lb2e80:
	ldr	r0, [r5]
	mov	r1, #1
	bl	_Sprite_SetAnim
.Lb2e88:
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x40]
	mov	r2, r8
	mov	r3, r10
	ldrsh	r0, [r3, r2]
	mov	r1, r9
	bl	Func_80b27b0
	cmp	r0, #0
	bne	.Lb2ea2
	ldr	r3, =0xb333
	str	r3, [r5, #0x40]
.Lb2ea2:
	ldr	r1, =0x3a7
	mov	r3, #2
	add	r8, r3
	add	r3, r7, r1
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	add	r6, #1
	add	r5, #4
	cmp	r6, r3
	blt	.Lb2e72
.Lb2eb8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2e30

