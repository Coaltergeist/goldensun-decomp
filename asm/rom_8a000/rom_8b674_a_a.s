	.include "macros.inc"

.thumb_func_start Func_808b674
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r10, r0
	mov	r8, r3
	mov	r0, #0xfa
	ldr	r3, =gState
	lsl	r0, #1
	mov	r5, #0x80
	add	r3, r0
	lsl	r5, #2
	ldr	r7, [r3]
	add	r5, r8
	ldr	r3, =.L9f810
	mov	r2, r5
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r2, #0x86
	lsl	r2, #2
	add	r2, r8
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	ldmia	r3!, {r0, r1, r4}
	stmia	r2!, {r0, r1, r4}
	mov	r3, r8
	mov	r2, #0
	add	r3, #0xc
	mov	r12, r8
.L8b6b6:
	str	r2, [r3]
	sub	r3, #4
	cmp	r3, r12
	bge	.L8b6b6
	bl	Func_808b9f8
	ldr	r3, =0xffff
	ldr	r6, =gState
	mov	r1, #0xee
	strh	r3, [r5, #2]
	strh	r7, [r5]
	lsl	r1, #1
	add	r3, r6, r1
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r5, #0xc]
	mov	r2, #0xf2
	str	r3, [r5, #8]
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r4, #0xf4
	str	r3, [r5, #0x10]
	lsl	r4, #1
	add	r3, r6, r4
	ldr	r3, [r3]
	mov	r0, r5
	strh	r3, [r5, #0x14]
	mov	r1, r7
	bl	Func_808b3ec
	mov	r0, r10
	mov	r1, #8
	bl	Func_808b3ec
	lsl	r3, r7, #2
	add	r3, #0x14
	mov	r0, r8
	mov	r1, #0xf6
	ldr	r5, [r0, r3]
	lsl	r1, #1
	add	r3, r6, r1
	ldrh	r3, [r3]
	mov	r2, r5
	add	r2, #0x22
	strb	r3, [r2]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8b71c
	ldr	r2, =0xfffff
	add	r3, r2
.L8b71c:
	asr	r2, r3, #20
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8b728
	ldr	r4, =0xfffff
	add	r3, r4
.L8b728:
	asr	r3, #20
	lsl	r3, #7
	add	r3, r2, r3
	ldr	r0, =gBuffer
	lsl	r3, #2
	add	r2, r3, r0
	ldr	r4, =ewram_200fe00
	mov	r0, #0xf0
	lsl	r0, #1
	add	r1, r3, r4
	add	r3, r6, r0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L8b7b8
	ldrb	r3, [r2, #2]
	cmp	r3, #0xfd
	bne	.L8b7b8
	ldrb	r3, [r1, #2]
	cmp	r3, #0xfd
	bne	.L8b7b8
	mov	r1, #0xf9
	lsl	r1, #1
	add	r2, r6, r1
	mov	r3, #1
	strb	r3, [r2]
	ldr	r3, =0xfff00000
	ldr	r2, [r5, #0x10]
	ldr	r1, [r5, #8]
	add	r2, r3
	mov	r0, #0
	bl	_Func_8011f54
	ldr	r4, =0xffe00000
	ldr	r3, [r5, #0xc]
	add	r0, r4
	add	r3, r0
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x14]
	mov	r2, r5
	ldr	r3, .L8b790	@ 0
	add	r2, #0x55
	mov	r0, r5
	mov	r1, #0
	strb	r3, [r2]
	bl	_Func_800c528
	mov	r0, r5
	mov	r1, #0xc
	bl	_Func_800c300
	b	.L8b7c4

	.align	2, 0
.L8b790:
	.word	0
	.pool

.L8b7b8:
	ldr	r3, =gState
	mov	r0, #0xf9
	lsl	r0, #1
	add	r2, r3, r0
	mov	r3, #0
	strb	r3, [r2]
.L8b7c4:
	mov	r0, #0x80
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	lsl	r0, #8
	bl	_Func_800c150
	ldr	r3, [r5, #0x14]
	mov	r6, r0
	str	r3, [r6, #0x14]
	mov	r1, r5
	bl	_Func_800c4bc
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r8
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L8b7fc
	ldr	r0, [r5, #0x50]
	mov	r1, #0x17
	bl	_Func_800b8ac
	mov	r3, #0xf
	strb	r3, [r0, #5]
	mov	r3, #9
	strb	r3, [r0, #6]
.L8b7fc:
	ldr	r3, =iwram_3001e70
	ldr	r2, [r3]
	mov	r3, r6
	add	r3, #8
	str	r3, [r2]
	mov	r3, #0xf0
	lsl	r3, #1
	add	r3, r8
	str	r6, [r3]
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808b674

