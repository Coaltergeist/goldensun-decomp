	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80aaf58  @ 0x080aaf58
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0x219
	add	r3, r8
	ldrb	r3, [r3]
	mov	r4, #0
	sub	sp, #4
	cmp	r4, r3
	bge	.Laafa2
	mov	r6, #0x82
	mov	r7, r0
	lsl	r6, #2
	add	r7, #0xa0
	add	r6, r8
	mov	r5, r0
.Laaf7e:
	mov	r2, #1
	ldrh	r1, [r6]
	mov	r0, r5
	neg	r2, r2
	str	r4, [sp]
	bl	Func_80ac8fc
	ldr	r3, =0x219
	ldr	r4, [sp]
	add	r3, r8
	ldrb	r3, [r3]
	add	r4, #1
	strb	r0, [r7]
	add	r6, #2
	add	r7, #1
	add	r5, #0x14
	cmp	r4, r3
	blt	.Laaf7e
.Laafa2:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80aaf58

