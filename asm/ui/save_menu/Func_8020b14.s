	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8020b14  @ 0x08020b14
	push	{lr}
	ldr	r3, =iwram_3001e8c
	ldr	r4, [r3]
	ldrb	r3, [r0]
	sub	sp, #8
	mov	r1, #0
	cmp	r3, #0
	beq	.L20b3a
	mov	r3, #0xeb
	lsl	r3, #4
	add	r2, r4, r3
.L20b2a:
	ldrb	r3, [r0]
	strh	r3, [r2]
	add	r0, #1
	ldrb	r3, [r0]
	add	r2, #2
	add	r1, #1
	cmp	r3, #0
	bne	.L20b2a
.L20b3a:
	mov	r2, #0xeb
	lsl	r3, r1, #1
	lsl	r2, #4
	add	r3, r2
	ldr	r2, .L20b58	@ 0
	add	r1, sp, #4
	strh	r2, [r4, r3]
	mov	r0, #0
	mov	r2, sp
	mov	r3, #0
	bl	Func_8018850
	ldr	r0, [sp, #4]
	add	sp, #8
	b	.L20b60

	.align	2, 0
.L20b58:
	.word	0
	.pool

.L20b60:
	pop	{r1}
	bx	r1
.func_end Func_8020b14
