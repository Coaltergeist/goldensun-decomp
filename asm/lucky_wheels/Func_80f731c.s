	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f731c  @ 0x080f731c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f04
	ldr	r1, [r3]
	sub	r3, #0x18
	ldr	r3, [r3]
	mov	r2, #0x80
	mov	r10, r3
	ldr	r3, =ewram_2010018
	mov	r8, r1
	sub	sp, #4
	mov	r5, #0
	mov	r6, #0
	mov	r1, #0
	lsl	r2, #4
.Lf733e:
	add	r6, #1
	str	r1, [r3]
	add	r3, #0x1c
	cmp	r6, r2
	bne	.Lf733e
	mov	r2, #0xe1
	lsl	r2, #7
	ldr	r0, =0xffe00000
	ldr	r1, =.Lf8736
	ldr	r7, =0xfff80000
	mov	r6, #0
	mov	r4, #0
	add	r2, r10
.Lf7358:
	mov	r3, r5
	add	r3, #0x18
	lsl	r3, #16
	str	r3, [r2]
	ldrb	r3, [r1]
	add	r6, #1
	str	r0, [r2, #4]
	str	r4, [r2, #0x10]
	str	r4, [r2, #0x18]
	add	r1, #1
	add	r5, r3
	add	r0, r7
	add	r2, #0x1c
	cmp	r6, #8
	bne	.Lf7358
	mov	r3, #0x9b
	lsl	r3, #3
	ldr	r2, .Lf73b4	@ 0
	mov	r6, #0
	add	r3, r8
.Lf7380:
	add	r6, #1
	strh	r2, [r3]
	add	r3, #2
	cmp	r6, #0xa0
	bne	.Lf7380
	ldr	r7, =0x506
	mov	r6, #0
	add	r7, r8
.Lf7390:
	ldr	r3, =0x199
	mov	r5, r6
	mul	r5, r3
	mov	r0, r5
	bl	cos
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r3, #15
	strh	r3, [r7]
	mov	r0, r5
	bl	cos
	mov	r2, #0x6e
	sub	r2, r6
	mov	r3, #0x9b
	lsl	r3, #3
	b	.Lf73d4

	.align	2, 0
.Lf73b4:
	.word	0
	.pool

.Lf73d4:
	lsl	r2, #1
	add	r2, r3
	lsl	r3, r0, #1
	add	r3, r0
	lsr	r3, #15
	mov	r1, r8
	add	r6, #1
	add	r7, #2
	strh	r3, [r1, r2]
	cmp	r6, #0x28
	bne	.Lf7390
	mov	r3, r8
	mov	r2, #0
	add	r3, #0x94
	str	r2, [r3]
	mov	r1, #0xef
	sub	r3, #8
	str	r2, [r3]
	lsl	r1, #7
	add	r3, #4
	str	r2, [r3]
	add	r1, r10
	mov	r3, #1
	str	r3, [r1]
	ldr	r3, =0x7784
	add	r3, r10
	str	r2, [r3]
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	mov	r3, #6
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x12
	bl	_CreateUIBox
	ldr	r6, =0x4cc
	ldr	r5, =0x905
	mov	r1, r0
	add	r6, r8
	str	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #8
	sub	r5, #1
	bl	_Func_801e7c0
	ldr	r1, [r6]
	mov	r0, r5
	mov	r2, #0
	mov	r3, #0
	bl	_Func_801e7c0
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80f731c

