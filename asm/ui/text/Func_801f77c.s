	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f77c  @ 0x0801f77c
	push	{r5, r6, r7, lr}
	bl	Func_80056cc
	mov	r6, #9
	mov	r5, #0
	neg	r6, r6
	cmp	r0, #0
	bne	.L1f7f6
	bl	Func_8005c68
	ldr	r3, =iwram_3001f1c
	ldr	r1, [r3]
	ldr	r3, =ewram_2002010
	ldr	r2, =ewram_200200c
	strh	r5, [r3]
	mov	r7, r3
	ldr	r3, =0x1070
	strh	r5, [r2]
	ldr	r4, .L1f7d0	@ 1
	mov	r6, r0
	add	r1, r3
	mov	r0, #2
.L1f7a8:
	mov	r3, #1
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7b4
	strh	r4, [r7]
	add	r5, #1
.L1f7b4:
	mov	r3, #2
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	beq	.L1f7be
	strh	r4, [r2]
.L1f7be:
	sub	r0, #1
	add	r1, #0x40
	cmp	r0, #0
	bge	.L1f7a8
	ldr	r3, =gKeyHeld
	mov	r2, #0x90
	ldr	r3, [r3]
	b	.L1f7e8

	.align	2, 0
.L1f7d0:
	.word	1
	.pool

.L1f7e8:
	lsl	r2, #1
	and	r3, r2
	cmp	r3, r2
	beq	.L1f7f6
	ldr	r2, =ewram_2002010
	ldr	r3, .L1f808	@ 0
	strh	r3, [r2]
.L1f7f6:
	bl	Func_8005cf8
	cmp	r6, #0
	beq	.L1f810
	cmp	r5, r6
	bne	.L1f810
	mov	r0, r6
	add	r0, #0x64
	b	.L1f812

	.align	2, 0
.L1f808:
	.word	0
	.pool

.L1f810:
	mov	r0, r6
.L1f812:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801f77c

