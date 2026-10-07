	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80d67dc  @ 0x080d67dc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r3, =iwram_3001e74
	mov	r1, #0x80
	ldr	r6, [r3, #0x7c]
	ldr	r2, [r3]
	ldr	r3, .Ld6820	@ 1
	lsl	r1, #19
	strh	r3, [r1]
	mov	r8, r1
	ldr	r1, =iwram_3001ad0
	mov	r3, #0x20
	strh	r3, [r1, #6]
	mov	r3, #0xc9
	lsl	r3, #3
	add	r2, r3
	ldrh	r1, [r2]
	mov	r0, #1
	mov	r2, #0x18
	sub	sp, #4
	bl	_AnimTransitionIn
	mov	r5, #0
	mov	r4, sp
	str	r5, [r4]
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r6
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	str	r5, [r4]
	b	.Ld6834

	.align	2, 0
.Ld6820:
	.word	1
	.pool

.Ld6834:
	mov	r0, r4
	ldr	r1, =0x6004000
	ldr	r2, =0x85001000
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	WaitFrames
	ldr	r2, =REG_BLDALPHA
	ldr	r3, .Ld6860	@ 0x100e
	strh	r3, [r2]
	ldr	r3, .Ld6864	@ 0x3f46
	sub	r2, #2
	strh	r3, [r2]
	ldr	r3, .Ld6868	@ 0x7741
	mov	r1, r8
	ldr	r2, =gPhysVec
	strh	r3, [r1]
	mov	r3, #0x78
	str	r3, [r2, #0x10]
	add	sp, #4
	b	.Ld687c

	.align	2, 0
.Ld6860:
	.word	0x100e
.Ld6864:
	.word	0x3f46
.Ld6868:
	.word	0x7741
	.pool

.Ld687c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80d67dc
