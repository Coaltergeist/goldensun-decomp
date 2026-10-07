	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011a84  @ 0x08011a84
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	sub	sp, #4
	mov	r4, r3
	mov	r5, r0
	mov	r6, #0
	mov	r0, sp
	add	r4, #0xd8
	str	r6, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r4
	ldr	r2, =0x85000003
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	ldr	r2, =0xffff
	cmp	r3, r2
	beq	.L11ab4
	str	r5, [r4]
	str	r5, [r4, #4]
	strh	r6, [r4, #8]
	strh	r6, [r4, #0xa]
	mov	r6, #1
.L11ab4:
	cmp	r6, #0
	beq	.L11ac2
	mov	r1, #0xc8
	ldr	r0, =Func_80119cc
	lsl	r1, #4
	bl	StartTask
.L11ac2:
	add	sp, #4
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8011a84
