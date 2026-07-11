	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8012b2c  @ 0x08012b2c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e60
	ldr	r3, [r3]
	ldr	r3, [r3, #0x28]
	ldrb	r4, [r3, #4]
	ldr	r3, =gKeyHeld
	ldr	r3, [r3]
	mov	r7, r2
	mov	r2, #2
	and	r3, r2
	sub	sp, #4
	mov	r5, #0
	cmp	r3, #0
	beq	.L12b5c
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	lsl	r3, #24
	asr	r5, r3, #16
.L12b5c:
	cmp	r4, #6
	beq	.L12c0c
	cmp	r4, #6
	bhi	.L12b72
	cmp	r4, #4
	beq	.L12c0c
	cmp	r4, #4
	bhi	.L12bca
	cmp	r4, #3
	beq	.L12b8a
	b	.L12cae
.L12b72:
	cmp	r4, #0x14
	beq	.L12c44
	cmp	r4, #0x14
	bhi	.L12b80
	cmp	r4, #8
	beq	.L12bca
	b	.L12cae
.L12b80:
	cmp	r4, #0x2c
	beq	.L12bca
	cmp	r4, #0x58
	beq	.L12bca
	b	.L12cae
.L12b8a:
	lsl	r0, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #5
.L12b92:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	vec3_translate
	ldr	r3, =0x2aaa
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12b92
	mov	r4, #6
.L12bc2:
	add	r4, #1
	cmp	r4, #9
	ble	.L12bc2
	b	.L12cf8
.L12bca:
	lsl	r0, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #7
.L12bd2:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	vec3_translate
	mov	r3, #0x80
	lsl	r3, #6
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12bd2
	mov	r4, #8
.L12c04:
	add	r4, #1
	cmp	r4, #9
	ble	.L12c04
	b	.L12cf8
.L12c0c:
	lsl	r0, #16
	mov	r4, #0
	mov	r8, r0
	lsl	r6, r1, #16
.L12c14:
	lsl	r5, #16
	mov	r3, #0
	mov	r2, r8
	lsr	r5, #16
	mov	r0, #0xe0
	str	r2, [r7]
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	mov	r2, r7
	lsl	r0, #14
	str	r4, [sp]
	bl	vec3_translate
	ldr	r3, =0x1999
	ldr	r4, [sp]
	add	r5, r3
	lsl	r5, #16
	add	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #9
	ble	.L12c14
	b	.L12cf8
.L12c44:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #23
	add	r3, r2
	asr	r5, r3, #16
	mov	r3, #0xa0
	mov	r4, #0
	lsl	r0, #16
	lsl	r1, #16
	lsl	r3, #14
	mov	r10, r0
	mov	r11, r4
	mov	r8, r1
	mov	r9, r3
	mov	r6, r7
.L12c62:
	mov	r2, r10
	lsl	r5, #16
	str	r2, [r6]
	mov	r3, r11
	lsr	r5, #16
	mov	r2, r8
	str	r3, [r6, #4]
	str	r2, [r6, #8]
	mov	r1, r5
	mov	r2, r7
	mov	r0, r9
	str	r4, [sp]
	bl	vec3_translate
	mov	r3, r10
	str	r3, [r6, #0x10]
	mov	r3, r11
	str	r3, [r6, #0x14]
	mov	r2, r7
	mov	r3, r8
	add	r2, #0x10
	str	r3, [r6, #0x18]
	mov	r1, r5
	mov	r0, r9
	bl	vec3_translate
	mov	r2, #0x80
	lsl	r2, #8
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	add	r4, #1
	add	r6, #0x20
	add	r7, #0x20
	asr	r5, #16
	cmp	r4, #1
	ble	.L12c62
	b	.L12cf8
.L12cae:
	mov	r2, #0x80
	lsl	r3, r5, #16
	lsl	r2, #22
	add	r3, r2
	lsl	r0, #16
	asr	r5, r3, #16
	mov	r8, r0
	lsl	r6, r1, #16
	mov	r4, #3
.L12cc0:
	mov	r3, r8
	lsl	r5, #16
	str	r3, [r7]
	lsr	r5, #16
	mov	r3, #0
	mov	r0, #0xe0
	mov	r2, r7
	str	r3, [r7, #4]
	str	r6, [r7, #8]
	mov	r1, r5
	lsl	r0, #14
	str	r4, [sp]
	bl	vec3_translate
	mov	r2, #0x80
	lsl	r2, #7
	ldr	r4, [sp]
	add	r5, r2
	lsl	r5, #16
	sub	r4, #1
	add	r7, #0x10
	asr	r5, #16
	cmp	r4, #0
	bge	.L12cc0
	mov	r4, #5
.L12cf2:
	sub	r4, #1
	cmp	r4, #0
	bge	.L12cf2
.L12cf8:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8012b2c

