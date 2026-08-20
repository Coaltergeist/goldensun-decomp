	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b8fc
	push	{lr}
	ldr	r0, =REG_BLDCNT
	ldr	r1, =0x3f41
	bl	__SetRegAnimDest
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.Lm881_393c
	ldr	r3, =.Lm881_67a0
	ldr	r1, .Lm881_3924	@ 0xc
	ldrh	r3, [r3]
	ldr	r0, =REG_BLDALPHA
	orr	r1, r3
	bl	__SetRegAnimDest
	b	.Lm881_394a

	.align	2, 0
.Lm881_3924:
	.word	0xc
	.pool

.Lm881_393c:
	ldr	r3, =.Lm881_67a0
	ldr	r1, .Lm881_3950	@ 0x10
	ldrh	r3, [r3]
	ldr	r0, =REG_BLDALPHA
	orr	r1, r3
	bl	__SetRegAnimDest
.Lm881_394a:
	pop	{r0}
	bx	r0

	.align	2, 0
.Lm881_3950:
	.word	0x10
.func_end OvlFunc_881_200b8fc

