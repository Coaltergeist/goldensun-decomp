	.include "macros.inc"


.thumb_func_start Func_8094154  @ 0x08094154
	push	{r5, r6, lr}
	mov	r5, r1
	bl	GetFieldActor
	mov	r4, r0
	cmp	r4, #0
	bne	.L94168
	mov	r0, #1
	neg	r0, r0
	b	.L941c8
.L94168:
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	add	r3, #0xe4
	ldr	r1, =0xffff0000
	ldr	r0, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r4, #0x10]
	and	r2, r1
	and	r0, r1
	ldr	r1, [r4, #8]
	sub	r3, r2
	ldr	r2, [r4, #0xc]
	sub	r1, r0
	sub	r6, r3, r2
	mov	r2, r5
	add	r5, #4
	cmp	r1, #0
	bge	.L94190
	ldr	r3, =0xffff
	add	r1, r3
.L94190:
	asr	r3, r1, #16
	str	r3, [r2]
	mov	r3, r6
	cmp	r3, #0
	bge	.L9419e
	ldr	r2, =0xffff
	add	r3, r2
.L9419e:
	asr	r3, #16
	str	r3, [r5]
	mov	r3, r4
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L941c6
	ldr	r3, [r4, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	_GetSpriteInfo
	ldr	r3, [r5]
	mov	r2, #8
	ldrsb	r2, [r0, r2]
	sub	r3, r2
	str	r3, [r5]
.L941c6:
	mov	r0, #0
.L941c8:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8094154

