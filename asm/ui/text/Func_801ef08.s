	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ef08  @ 0x0801ef08
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r8, r0
	mov	r1, #0x10
	mov	r0, #0x10
	sub	sp, #4
	bl	galloc_ewram
	ldr	r3, =iwram_3001e8c
	ldr	r6, [r3]
	ldr	r3, =0xea6
	add	r6, r3
	mov	r3, #0
	mov	r10, r3
	mov	r3, #1
	mov	r5, r0
	strb	r3, [r6]
	mov	r0, r8
	bl	Func_801eea0
	ldrh	r3, [r5, #0xa]
	ldrh	r1, [r5, #6]
	ldrh	r2, [r5, #8]
	mov	r4, #6
	ldrh	r0, [r5, #4]
	str	r4, [sp]
	bl	CreateUIBox
	str	r0, [r5]
	mov	r0, r8
	bl	Func_801f200
	mov	r3, r10
	strb	r3, [r6]
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801ef08

