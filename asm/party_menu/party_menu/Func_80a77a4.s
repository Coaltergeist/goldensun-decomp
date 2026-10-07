	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a77a4  @ 0x080a77a4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r2, #0x1c
	add	r2, r0
	ldr	r3, =iwram_3001f2c
	lsl	r0, #2
	mov	r10, r0
	ldr	r5, [r3]
	mov	r3, r10
	add	r3, #0x14
	ldr	r0, [r5, r3]
	mov	r6, #0
	mov	r3, #1
	strb	r3, [r0, #5]
	strh	r6, [r0, #0xc]
	ldr	r0, [r5, #0x10]
	sub	sp, #4
	mov	r8, r2
	ldrsb	r7, [r5, r2]
	bl	_Func_8016498
	mov	r0, #0xb9
	lsl	r0, #1
	bl	_GetFlag
	cmp	r0, #0
	beq	.La77ee
	mov	r3, #3
	ldr	r0, [r5, #0x10]
	mov	r1, #9
	str	r3, [sp]
	mov	r2, #1
	mov	r3, #9
	bl	_Func_801e41c
.La77ee:
	mov	r3, #1
	neg	r3, r3
	cmp	r7, r3
	bne	.La77fe
	ldr	r3, .La7820	@ 0
	mov	r2, r8
	strb	r3, [r5, r2]
	b	.La780c
.La77fe:
	lsl	r0, r7, #1
	add	r0, r7
	lsl	r0, #3
	sub	r0, #0xa
	mov	r1, #0x10
	bl	Func_80a1ac0
.La780c:
	mov	r2, #0x88
	lsl	r2, #2
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.La7828
	bl	Func_80a7d68
	b	.La782c

	.align	2, 0
.La7820:
	.word	0
	.pool

.La7828:
	bl	Func_80a7a34
.La782c:
	mov	r6, r0
	mov	r3, r10
	add	r3, #0x14
	ldr	r0, [r5, r3]
	bl	Func_80a17c4
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80a77a4

