	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_802281c  @ 0x0802281c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e74
	mov	r5, r0
	mov	r1, #0
	mov	r0, #1
	sub	sp, #4
	ldr	r7, [r3]
	bl	_Func_80b6c08
	mov	r8, r0
	lsl	r3, r0, #1
	add	r3, r8
	lsl	r3, #1
	mov	r0, #0x1d
	sub	r0, r3
	mov	r3, #0xf
	str	r3, [sp]
	mov	r1, #0
	mov	r3, #5
	mov	r2, #0x19
	bl	Func_8022768
	ldrh	r3, [r5]
	mov	r6, #0
	cmp	r3, #0xff
	beq	.L228a8
	mov	r0, #0
.L22856:
	mov	r3, #0x58
	ldrsh	r2, [r7, r3]
	ldrh	r3, [r0, r5]
	mov	r1, #0
	b	.L2286e
.L22860:
	add	r1, #1
	cmp	r1, #3
	bgt	.L22878
	lsl	r3, r1, #1
	add	r3, #0x58
	ldrsh	r2, [r7, r3]
	ldrh	r3, [r0, r5]
.L2286e:
	cmp	r2, r3
	beq	.L22878
	cmp	r2, #0xff
	bne	.L22860
	mov	r1, #4
.L22878:
	cmp	r1, #4
	beq	.L22898
	mov	r3, r8
	sub	r2, r3, r1
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	mov	r0, #0x1d
	sub	r0, r3
	mov	r3, #0xe
	str	r3, [sp]
	mov	r1, #0
	mov	r2, #7
	mov	r3, #5
	bl	Func_8022768
.L22898:
	add	r6, #1
	cmp	r6, #3
	bgt	.L228a8
	lsl	r3, r6, #1
	mov	r0, r3
	ldrh	r3, [r0, r5]
	cmp	r3, #0xff
	bne	.L22856
.L228a8:
	mov	r0, #0
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_802281c
