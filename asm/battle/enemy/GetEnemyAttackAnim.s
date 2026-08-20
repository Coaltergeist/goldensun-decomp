	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetEnemyAttackAnim  @ 0x080c23e8
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc23f2
	mov	r0, #1
	b	.Lc2406
.Lc23f2:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsl	r3, #27
	lsr	r3, #28
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc2406
	mov	r0, #1
.Lc2406:
	pop	{r1}
	bx	r1
.func_end GetEnemyAttackAnim

