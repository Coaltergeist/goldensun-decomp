	.include "macros.inc"

.thumb_func_start Func_8079f10  @ 0x08079f10
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r9, r1
	mov	r5, r0
	mov	r0, r9
	mov	r8, r3
	mov	r11, r2
	bl	GetUnit
	mov	r6, r0
	mov	r0, #1
	mov	r10, r0
	mov	r0, r8
	bl	Func_8079ef8
	cmp	r0, #0
	beq	.L79f48
	mov	r1, #0x38
	ldrsh	r3, [r6, r1]
	mov	r0, #0
	cmp	r3, #0
	beq	.L79f48
	b	.L7a0a8
.L79f48:
	mov	r2, r8
	cmp	r2, #3
	bne	.L79f8a
	ldr	r4, =0x131
	add	r3, r6, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L79f8a
	b	.L7a0a6
.L79f5e:
	ldr	r7, =0x13b
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	b	.L7a0a6
.L79f8a:
	mov	r3, r8
	cmp	r3, #4
	bne	.L79fb2
	mov	r4, #0x9c
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	ldr	r7, =0x139
	add	r3, r6, r7
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L79fb2
	mov	r0, #0x9d
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L79f5e
.L79fb2:
	ldr	r1, =0x131
	ldr	r7, =0x139
	add	r3, r6, r1
	add	r1, r6, r7
	add	r7, #2
	add	r7, r6
	mov	r4, #0x9c
	lsl	r4, #1
	mov	r12, r7
	mov	r7, #0x9e
	lsl	r7, #1
	add	r2, r6, r4
	add	r4, #2
	add	r0, r6, r4
	add	r4, r6, r7
	mov	r7, r8
	cmp	r7, #0x40
	bne	.L7a022
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r1]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	mov	r0, r12
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.L7a022
	ldrb	r3, [r4]
	cmp	r3, #0
	bne	.L7a022
	ldr	r1, =0x13d
	add	r3, r6, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	ldr	r2, =0x141
	add	r3, r6, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L7a022
	mov	r4, #0xa0
	lsl	r4, #1
	add	r3, r6, r4
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #0
	beq	.L7a0a8
.L7a022:
	mov	r7, r8
	cmp	r7, #0x1c
	bne	.L7a034
	ldr	r0, =0x141
	add	r3, r6, r0
	ldrb	r3, [r3]
	mov	r0, #0
	cmp	r3, #1
	beq	.L7a0a8
.L7a034:
	mov	r0, r8
	bl	Func_8079d7c
	mov	r7, r0
	cmp	r7, #0
	ble	.L7a078
	mov	r0, r5
	mov	r1, r11
	bl	Func_807987c
	mov	r1, r11
	mov	r5, r0
	mov	r0, r9
	bl	Func_807987c
	mov	r3, r6
	add	r3, #0x42
	ldrb	r3, [r3]
	sub	r5, r0
	lsr	r3, #1
	sub	r5, r3
	lsl	r3, r5, #1
	add	r3, r5
	mov	r0, r6
	mov	r1, r8
	add	r7, r3
	bl	Func_8079e9c
	cmp	r0, #0
	beq	.L7a07a
	add	r7, #0x19
	b	.L7a07a
.L7a074:
	mov	r0, #1
	b	.L7a0a8
.L7a078:
	neg	r7, r7
.L7a07a:
	mov	r1, r8
	cmp	r1, #0x43
	bne	.L7a084
	mov	r2, #3
	mov	r10, r2
.L7a084:
	mov	r6, #0
	cmp	r6, r10
	bge	.L7a0a6
	ldr	r3, [sp, #0x20]
	mul	r7, r3
.L7a08e:
	mov	r0, r7
	mov	r1, #0x64
	bl	__divsi3
	mov	r5, r0
	bl	RPGRandom2
	cmp	r5, r0
	bge	.L7a074
	add	r6, #1
	cmp	r6, r10
	blt	.L7a08e
.L7a0a6:
	mov	r0, #0
.L7a0a8:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8079f10

