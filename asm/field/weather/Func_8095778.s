	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8095778  @ 0x08095778
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r1, =gState
	mov	r0, #0x8d
	lsl	r0, #2
	add	r7, r1, r0
	mov	r3, #0
	ldrsh	r5, [r7, r3]
	ldrh	r2, [r7]
	mov	r3, #0xf0
	ldr	r6, =0xfff
	lsl	r3, #8
	mov	r0, r8
	and	r5, r3
	and	r6, r2
	cmp	r0, #0
	bne	.L957ec
	cmp	r5, #0
	bne	.L957cc
	ldr	r3, =0x7ff
	ldr	r2, =0xfffffed4
	and	r6, r3
	add	r3, r6, r2
	cmp	r3, #0x50
	bhi	.L95860
	ldr	r0, =0x236
	add	r3, r1, r0
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	cmp	r2, #0
	ble	.L957c0
	ldr	r3, =0x3e7
	cmp	r2, r3
	bne	.L95860
.L957c0:
	mov	r0, r6
	sub	r0, #0xac
	bl	_SetFlag
	strh	r5, [r7]
	b	.L95860
.L957cc:
	mov	r0, #0x80
	lsl	r0, #5
	cmp	r5, r0
	bne	.L95860
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #1
	bne	.L957e6
	mov	r0, r6
	bl	_SetFlag
.L957e6:
	mov	r1, r8
	strh	r1, [r7]
	b	.L95860
.L957ec:
	cmp	r5, #0
	bne	.L95856
	ldr	r2, =0x7ff
	ldr	r0, =0xfffffed4
	and	r6, r2
	add	r3, r6, r0
	cmp	r3, #0x50
	bhi	.L95856
	and	r6, r2
	ldr	r2, =0x236
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0
	ble	.L95856
	ldr	r1, =0xfffffed4
	add	r5, r6, r1
	mov	r0, r5
	mov	r1, #0x14
	bl	__divsi3
	mov	r1, #0x14
	mov	r8, r0
	mov	r0, r5
	bl	__modsi3
	mov	r5, #8
	mov	r7, r0
	b	.L95828
.L95826:
	add	r5, #1
.L95828:
	cmp	r5, #0x41
	bgt	.L95854
	mov	r0, r5
	bl	Func_808d394
	cmp	r0, #0
	beq	.L95826
	mov	r2, #2
	ldrsh	r3, [r0, r2]
	ldr	r0, =0xfffffed4
	sub	r3, #0x30
	add	r2, r6, r0
	cmp	r3, r2
	bne	.L95826
	mov	r0, #0x28
	bl	WaitFrames
	mov	r1, r8
	mov	r0, r5
	mov	r2, r7
	bl	Func_80955b0
.L95854:
	ldr	r1, =gState
.L95856:
	mov	r3, #0x8d
	lsl	r3, #2
	add	r2, r1, r3
	mov	r3, #0
	strh	r3, [r2]
.L95860:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8095778

