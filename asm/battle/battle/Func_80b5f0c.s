	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b5f0c  @ 0x080b5f0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, #0xaa
	lsl	r5, #1
	mov	r0, r5
	sub	sp, #0x10
	bl	alloc_ewram
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	mov	r6, r0
	mov	r9, r3
	mov	r2, #0xff
	mov	r5, #7
	add	r3, #0x4f
.Lb5f34:
	sub	r5, #1
	strb	r2, [r3]
	sub	r3, #1
	cmp	r5, #0
	bge	.Lb5f34
	mov	r7, sp
	mov	r0, r7
	bl	Func_80b6a60
	mov	r5, #0
	mov	r8, r0
	cmp	r5, r8
	bge	.Lb5fa8
	mov	r1, #0x95
	lsl	r1, #1
	add	r1, r6
	mov	r10, r7
	mov	r11, r1
	mov	r7, #0
.Lb5f5a:
	mov	r2, r10
	ldrh	r0, [r7, r2]
	bl	_GetUnit
	mov	r2, #0xaa
	mov	r1, r0
	lsl	r2, #1
	ldr	r3, =Func_8001af8
	mov	r0, r6
	bl	_call_via_r3
	mov	r3, #2
	mov	r4, r11
	mov	r1, r10
	strb	r3, [r4]
	ldrh	r3, [r7, r1]
	mov	r2, r5
	add	r3, #0x48
	sub	r2, #0x80
	mov	r4, r9
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r2, [r4, r3]
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb5fa8
	bl	Func_8006458
	add	r5, #1
	mov	r0, #2
	bl	WaitFrames
	add	r7, #2
	cmp	r5, r8
	blt	.Lb5f5a
.Lb5fa8:
	mov	r2, #0x95
	lsl	r2, #1
	mov	r3, #0
	add	r7, r6, r2
	mov	r8, r3
	b	.Lb5fc0
.Lb5fb4:
	bl	Func_8006458
	mov	r0, #2
	bl	WaitFrames
	add	r5, #1
.Lb5fc0:
	cmp	r5, #2
	bgt	.Lb5fda
	mov	r4, r8
	mov	r1, #0xaa
	lsl	r1, #1
	strb	r4, [r7]
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	bne	.Lb5fb4
.Lb5fda:
	mov	r5, #0xa0
	mov	r0, r6
	lsl	r5, #1
	bl	free
	mov	r0, r5
	bl	alloc_ewram
	mov	r6, r0
	mov	r0, #0
	bl	_Func_8077330
	ldr	r3, =Func_8001af8
	mov	r1, r0
	mov	r2, r5
	mov	r0, r6
	bl	_call_via_r3
	mov	r4, r6
	mov	r3, #0x84
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, [r2]
	mov	r1, #0
	add	r4, #8
	cmp	r1, r3
	bge	.Lb6028
	mov	r0, r2
	mov	r2, r4
.Lb6014:
	ldrb	r3, [r2, #2]
	mov	r4, r9
	add	r3, #0x48
	ldrb	r3, [r4, r3]
	strb	r3, [r2, #2]
	ldr	r3, [r0]
	add	r1, #1
	add	r2, #4
	cmp	r1, r3
	blt	.Lb6014
.Lb6028:
	mov	r1, #0xa0
	lsl	r1, #1
	mov	r0, r6
	bl	Func_80063bc
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lb604a
	bl	Func_8006458
	mov	r0, #1
	bl	WaitFrames
	mov	r0, #2
	bl	WaitFrames
.Lb604a:
	mov	r0, r6
	bl	free
	add	sp, #0x10
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80b5f0c

