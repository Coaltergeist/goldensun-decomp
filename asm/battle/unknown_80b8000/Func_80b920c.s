	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b920c  @ 0x080b920c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x10
	str	r0, [sp, #0xc]
	mov	r0, #0x11
	bl	alloc_ewram
	str	r0, [sp, #8]
	mov	r0, #9
	bl	alloc_ewram
	str	r0, [sp, #4]
	ldr	r1, [sp, #4]
	mov	r0, #1
	bl	Func_80b6b40
	mov	r2, #0
	mov	r5, r0
	mov	r8, r2
	mov	r9, r2
	cmp	r8, r5
	bge	.Lb92e2
	ldr	r6, [sp, #4]
	mov	r10, r5
.Lb9246:
	ldrh	r0, [r6]
	bl	_GetUnit
	mov	r3, #0x43
	add	r3, r0
	mov	r12, r3
	ldrb	r3, [r3]
	mov	r5, #0
	cmp	r5, r3
	bge	.Lb92d4
	mov	r7, #0x9e
	mov	r2, #0x9c
	lsl	r7, #1
	lsl	r2, #1
	add	r7, r0
	add	r2, r0, r2
	mov	r14, r7
	str	r2, [sp]
	mov	r7, r9
	ldr	r2, [sp, #8]
	lsl	r3, r7, #1
	add	r1, r3, r2
	mov	r3, r8
	lsl	r3, #4
	ldr	r2, [sp, #0xc]
	ldr	r7, =0xffffff00
	mov	r11, r3
	add	r2, r11
	mov	r4, r6
	mov	r11, r7
.Lb9282:
	mov	r7, r14
	ldrb	r3, [r7]
	cmp	r3, #0
	bne	.Lb9296
	ldr	r7, [sp]
	ldr	r3, [r7]
	mov	r7, r11
	and	r3, r7
	cmp	r3, #0
	beq	.Lb92c0
.Lb9296:
	ldrh	r3, [r4]
	strh	r3, [r2]
	mov	r3, r0
	add	r3, #0x40
	ldrh	r3, [r3]
	strh	r3, [r2, #4]
	mov	r3, #8
	strh	r3, [r2, #6]
	ldr	r3, .Lb92b8	@ 0
	strh	r3, [r2, #8]
	mov	r3, #0xc0
	lsl	r3, #1
	mov	r7, #1
	strh	r3, [r2, #0xa]
	add	r8, r7
	add	r2, #0x10
	b	.Lb92ca

	.align	2, 0
.Lb92b8:
	.word	0
	.pool

.Lb92c0:
	ldrh	r3, [r4]
	strh	r3, [r1]
	mov	r3, #1
	add	r1, #2
	add	r9, r3
.Lb92ca:
	mov	r7, r12
	ldrb	r3, [r7]
	add	r5, #1
	cmp	r5, r3
	blt	.Lb9282
.Lb92d4:
	mov	r2, #1
	neg	r2, r2
	add	r10, r2
	mov	r3, r10
	add	r6, #2
	cmp	r3, #0
	bne	.Lb9246
.Lb92e2:
	ldr	r2, [sp, #0xc]
	mov	r7, r8
	lsl	r3, r7, #4
	add	r2, r3
	str	r2, [sp, #0xc]
	mov	r0, r2
	ldr	r1, [sp, #8]
	mov	r2, r9
	bl	_Func_8027114
	mov	r5, #1
	neg	r5, r5
	cmp	r0, #0
	blt	.Lb9302
	mov	r3, r8
	add	r5, r3, r0
.Lb9302:
	ldr	r0, [sp, #4]
	bl	free
	ldr	r0, [sp, #8]
	bl	free
	mov	r0, r5
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b920c
