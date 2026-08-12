	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80119cc  @ 0x080119cc
	push	{lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r12, r3
	mov	r4, r12
	add	r4, #0xd8
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L11a66
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.L11a66
.L119e4:
	ldrh	r2, [r4, #8]
	mov	r3, r2
	cmp	r3, #0
	bne	.L11a60
	ldr	r0, [r4, #4]
	ldr	r2, =0xffff
	ldrh	r1, [r0]
	add	r0, #2
	cmp	r1, r2
	bne	.L119fe
	ldr	r3, [r4]
	str	r3, [r4, #4]
	b	.L119e4
.L119fe:
	mov	r3, #0xff
	lsl	r3, #8
	mov	r2, #0xfe
	and	r3, r1
	lsl	r2, #8
	cmp	r3, r2
	bne	.L11a1e
	mov	r2, #0xff
	and	r2, r1
	cmp	r2, #0xff
	beq	.L11a66
	ldr	r3, [r4]
	lsl	r2, #2
	add	r3, r2
	str	r3, [r4, #4]
	b	.L119e4
.L11a1e:
	mov	r3, #0xf0
	lsl	r3, #8
	mov	r2, #0xc0
	and	r3, r1
	lsl	r2, #6
	cmp	r3, r2
	bne	.L11a3e
	ldr	r3, =REG_BLDCNT
	strh	r1, [r3]
	ldr	r3, =0x103
	add	r3, r12
	strb	r1, [r3]
	ldr	r3, [r4, #4]
	add	r3, #2
	str	r3, [r4, #4]
	b	.L119e4
.L11a3e:
	ldr	r3, =0x103
	add	r3, r12
	ldrb	r2, [r3]
	mov	r3, #0xc0
	and	r3, r2
	cmp	r3, #0x40
	bne	.L11a50
	ldr	r3, =REG_BLDALPHA
	b	.L11a52
.L11a50:
	ldr	r3, =REG_BLDY
.L11a52:
	strh	r1, [r3]
	ldrh	r3, [r0]
	strh	r3, [r4, #8]
	ldr	r3, [r4, #4]
	add	r3, #4
	str	r3, [r4, #4]
	b	.L119e4
.L11a60:
	ldr	r1, =0xffff
	add	r3, r2, r1
	strh	r3, [r4, #8]
.L11a66:
	pop	{r0}
	bx	r0
.func_end Func_80119cc

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

