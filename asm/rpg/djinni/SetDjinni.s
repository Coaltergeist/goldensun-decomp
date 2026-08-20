	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start SetDjinni  @ 0x0807a2e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	bl	GetUnit
	mov	r1, r6
	mov	r5, r0
	mov	r2, r8
	mov	r0, r7
	bl	Func_807a1f8
	mov	r10, r0
	cmp	r0, #0
	beq	.L7a340
	lsl	r2, r6, #2
	mov	r3, r2
	add	r3, #0xf8
	mov	r1, #1
	mov	r0, r8
	ldr	r3, [r5, r3]
	lsl	r1, r0
	and	r3, r1
	cmp	r3, #0
	beq	.L7a32a
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r3
	ldr	r3, [r5, r2]
	orr	r3, r1
	str	r3, [r5, r2]
	b	.L7a32e
.L7a32a:
	mov	r0, #0
	b	.L7a342
.L7a32e:
	mov	r0, #0x8e
	lsl	r0, #1
	add	r2, r6, r0
	ldrb	r3, [r5, r2]
	add	r3, #1
	strb	r3, [r5, r2]
	mov	r0, r7
	bl	Func_8079ae8
.L7a340:
	mov	r0, r10
.L7a342:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end SetDjinni

