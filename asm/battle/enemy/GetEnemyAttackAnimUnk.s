	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetEnemyAttackAnimUnk  @ 0x080c23c0
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23ca
	mov	r0, #0
	b	.Lc23de
.Lc23ca:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #31
	mov	r1, #0
	cmp	r3, #0
	beq	.Lc23dc
	mov	r1, #1
.Lc23dc:
	mov	r0, r1
.Lc23de:
	pop	{r1}
	bx	r1
.func_end GetEnemyAttackAnimUnk

