	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020198  @ 0x08020198
	push	{r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, #0x14
	mov	r7, r1
	cmp	r5, #0
	beq	.L2022c
	bl	Func_8016478
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r5
	mov	r1, #0
	mov	r2, #4
	mov	r3, #0xd
	bl	Func_801e41c
	mov	r0, r7
	add	r0, #0x10
	mov	r1, r5
	mov	r2, #0
	mov	r3, #0
	bl	Func_801e8b0
	ldr	r0, =.L371e0
	mov	r1, r5
	mov	r2, #0x48
	mov	r3, #0
	bl	UIDrawText
	mov	r6, #0
	ldrb	r0, [r7, #0x1c]
	mov	r1, #2
	mov	r2, r5
	mov	r3, #0x50
	str	r6, [sp]
	bl	Func_801e9d4
	ldr	r3, =0x741
	ldrb	r0, [r7, #0x1d]
	mov	r1, r5
	add	r0, r3
	mov	r2, #0
	mov	r3, #0x10
	bl	Func_801e7c0
	mov	r2, #0
	mov	r3, #0x20
	ldr	r0, =9
	mov	r1, r5
	bl	Func_801e7c0
	ldr	r0, [r7, #0x20]
	add	r1, sp, #4
	bl	Func_801f680
	mov	r1, r5
	mov	r2, #0x30
	mov	r3, #0x28
	bl	UIDrawText
	mov	r6, #0x30
	ldr	r0, [r7, #0x24]
	mov	r1, #6
	mov	r2, r5
	mov	r3, #0
	str	r6, [sp]
	bl	Func_801ea08
	ldr	r0, =0xc88
	mov	r1, r5
	mov	r2, #0x30
	mov	r3, #0x30
	bl	Func_801e7c0
.L2022c:
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020198
