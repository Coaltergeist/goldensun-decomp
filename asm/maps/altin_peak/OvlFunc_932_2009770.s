	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2009770
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.Lm932_179e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lm932_179e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm932_179e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.Lm932_17e6
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.Lm932_17de
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.Lm932_17dc
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r3, #4
	mov	r0, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8012330
	ldr	r2, [r5, #0x14]
.Lm932_17dc:
	str	r2, [r5, #0xc]
.Lm932_17de:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.Lm932_17ec
.Lm932_17e6:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.Lm932_17ec:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm932_1816
	mov	r0, #0x98
	bl	__PlaySound
	mov	r3, #1
	mov	r0, r5
	mov	r1, #2
	str	r3, [r5, #0x68]
	bl	__Actor_SetAnim
	mov	r3, #0xc0
	lsl	r3, #10
	str	r3, [r5, #0x28]
	ldrh	r2, [r6]
.Lm932_1816:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lm932_1828
	mov	r3, #0
	strh	r3, [r6]
.Lm932_1828:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2009770

