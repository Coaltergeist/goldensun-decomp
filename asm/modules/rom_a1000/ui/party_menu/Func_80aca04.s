	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aca04  @ 0x080aca04
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	mov	r4, r0
	sub	sp, #0x18
	mov	r8, r1
	ldr	r7, [r3]
	cmp	r4, #0
	bne	.Laca5a
	ldr	r2, =0x259
	add	r3, r7, r2
	ldrb	r3, [r3]
	ldr	r0, [r7, #0x34]
	mov	r5, #1
	mov	r6, #2
	str	r1, [sp, #0xc]
	mov	r2, #0
	mov	r1, #0
	str	r4, [sp, #4]
	str	r4, [sp, #0x14]
	str	r5, [sp]
	str	r6, [sp, #8]
	str	r5, [sp, #0x10]
	bl	Func_80acab8
	mov	r2, #0x96
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r4, [sp, #0x14]
	mov	r2, r8
	ldr	r0, [r7, #0x24]
	ldrb	r3, [r3]
	mov	r1, #0
	str	r2, [sp, #0xc]
	mov	r2, #0
	str	r4, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r4, [sp, #0x10]
	bl	Func_80acab8
	b	.Laca98
.Laca5a:
	ldr	r2, =0x21b
	add	r3, r7, r2
	mov	r2, #2
	ldrb	r3, [r3]
	ldr	r0, [r7, #0x34]
	str	r2, [sp, #8]
	mov	r2, r8
	mov	r5, #0
	mov	r6, #1
	str	r2, [sp, #0xc]
	mov	r1, #0
	mov	r2, #0
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #0x10]
	bl	Func_80acab8
	ldr	r2, =0x21a
	add	r3, r7, r2
	mov	r2, r8
	ldr	r0, [r7, #0x24]
	ldrb	r3, [r3]
	mov	r1, #0
	str	r2, [sp, #0xc]
	mov	r2, #0
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
	str	r5, [sp, #0x10]
	bl	Func_80acab8
.Laca98:
	mov	r0, #1
	add	sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aca04

