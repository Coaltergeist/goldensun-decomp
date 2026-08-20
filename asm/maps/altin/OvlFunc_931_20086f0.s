	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_20086f0
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, r5
	add	r6, #0x66
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	beq	.Lm931_71e
	sub	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lm931_71e
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
.Lm931_71e:
	ldr	r7, [r5, #0x28]
	cmp	r7, #0
	bne	.Lm931_766
	mov	r1, #1
	mov	r0, r5
	bl	__Actor_SetAnim
	ldr	r3, [r5, #0xc]
	ldr	r1, =0xfffe8000
	ldr	r2, [r5, #0x14]
	add	r3, r1
	str	r3, [r5, #0xc]
	cmp	r3, r2
	bge	.Lm931_75e
	ldr	r3, [r5, #0x68]
	cmp	r3, #0
	beq	.Lm931_75c
	mov	r0, #0xe5
	bl	__PlaySound
	mov	r3, #4
	mov	r1, #0x80
	mov	r2, #0x80
	str	r7, [r5, #0x68]
	lsl	r2, #9
	strh	r3, [r6]
	mov	r0, #0
	lsl	r1, #9
	bl	__Func_8012330
	ldr	r2, [r5, #0x14]
.Lm931_75c:
	str	r2, [r5, #0xc]
.Lm931_75e:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #1
	b	.Lm931_76c
.Lm931_766:
	mov	r2, r5
	add	r2, #0x5b
	mov	r3, #0
.Lm931_76c:
	strb	r3, [r2]
	mov	r6, r5
	add	r6, #0x64
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm931_796
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
.Lm931_796:
	add	r3, r2, #1
	mov	r2, #0xf0
	strh	r3, [r6]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bne	.Lm931_7a8
	mov	r3, #0
	strh	r3, [r6]
.Lm931_7a8:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_20086f0

