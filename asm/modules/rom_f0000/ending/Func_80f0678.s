	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f0678  @ 0x080f0678
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0x80
	lsl	r0, #3
	sub	sp, #4
	bl	alloc_ewram
	ldr	r5, =ewram_2004c0c
	mov	r4, sp
	mov	r3, #0
	str	r0, [r5]
	str	r3, [r4]
	mov	r0, r4
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x6010000
	ldr	r2, =0x85001800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =0x11111111
	mov	r0, r4
	str	r3, [r4]
	ldr	r1, =0x6016000
	ldr	r3, =REG_DMA3SAD
	ldr	r2, =0x85000040
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r5, [r5]
	mov	r1, #0xc0
	ldr	r0, =0x80004000
	mov	r6, #0
	lsl	r1, #2
.Lf06ba:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06ba
	mov	r1, #0xc0
	ldr	r0, =0x80004088
	mov	r6, #0
	lsl	r1, #2
.Lf06d4:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06d4
	mov	r1, #0xc0
	ldr	r0, =0x40004098
	mov	r6, #0
	lsl	r1, #2
.Lf06ee:
	lsl	r2, r6, #21
	mov	r3, r5
	orr	r2, r0
	stmia	r3!, {r2}
	add	r6, #1
	str	r1, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf06ee
	mov	r2, #0x10
	mov	r14, r2
	ldr	r3, =0x40004000
	mov	r2, #0x80
	lsl	r2, #14
	mov	r6, #0
	mov	r7, #0
	mov	r10, r3
	mov	r8, r2
.Lf0712:
	mov	r0, #0xc0
	add	r3, r7, r6
	mov	r4, #0
	mov	r12, r14
	lsl	r0, #13
	lsl	r1, r3, #3
.Lf071e:
	mov	r3, r12
	orr	r3, r0
	mov	r2, r10
	orr	r3, r2
	mov	r2, r5
	stmia	r2!, {r3}
	add	r4, #1
	str	r1, [r2]
	add	r5, #8
	add	r0, r8
	add	r1, #4
	cmp	r4, #5
	bls	.Lf071e
	mov	r3, #8
	add	r6, #1
	add	r14, r3
	add	r7, #2
	cmp	r6, #0xf
	bls	.Lf0712
	mov	r2, #0xc0
	ldr	r1, =0xc000c0
	mov	r6, #0
	lsl	r2, #2
.Lf074c:
	mov	r3, r5
	stmia	r3!, {r1}
	add	r6, #1
	str	r2, [r3]
	add	r5, #8
	cmp	r6, #7
	bls	.Lf074c
	ldr	r2, .Lf0784	@ 0
	ldr	r3, =ewram_2004c00
	strh	r2, [r3]
	ldr	r3, =ewram_2004c08
	strh	r2, [r3]
	ldr	r3, =ewram_2004c04
	mov	r1, #0x90
	strh	r2, [r3]
	lsl	r1, #3
	ldr	r0, =Func_80f0538
	bl	StartTask
	mov	r1, #0xc8
	ldr	r0, =Func_80f0614
	lsl	r1, #4
	bl	StartTask
	ldr	r7, =.Lf1220
	mov	r6, #0
	mov	r5, #0
	b	.Lf07d0

	.align	2, 0
.Lf0784:
	.word	0
	.pool

.Lf07d0:
	mov	r1, r5
	ldr	r0, [r7]
	mov	r2, #1
	add	r6, #1
	bl	Func_80f07f0
	add	r5, #0x18
	cmp	r6, #0x1f
	bls	.Lf07d0
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f0678

