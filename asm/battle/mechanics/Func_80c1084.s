	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1084  @ 0x080c1084
	push	{lr}
	ldr	r3, =iwram_3001e74
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.Lc10e4
	mov	r2, #0xca
	lsl	r2, #3
	add	r3, r0, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.Lc10e4
	ldr	r2, =REG_BLDCNT
	ldr	r3, .Lc10c8	@ 0x3f90
	strh	r3, [r2]
	ldr	r3, .Lc10cc	@ 0x10
	add	r2, #2
	strh	r3, [r2]
	ldr	r3, =0x64e
	add	r0, r3
	ldr	r2, =.Lc5c10
	ldrh	r3, [r0]
	ldr	r1, =REG_BLDY
	ldrsb	r3, [r2, r3]
	strh	r3, [r1]
	ldrh	r2, [r0]
	mov	r3, #0xf
	add	r1, r2, #1
	and	r1, r3
	cmp	r2, #0xe
	bls	.Lc10c4
	mov	r3, #0x10
	orr	r1, r3
.Lc10c4:
	strh	r1, [r0]
	b	.Lc10e4

	.align	2, 0
.Lc10c8:
	.word	0x3f90
.Lc10cc:
	.word	0x10
	.pool

.Lc10e4:
	pop	{r0}
	bx	r0
.func_end Func_80c1084
