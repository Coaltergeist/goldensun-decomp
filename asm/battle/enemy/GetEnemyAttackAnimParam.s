	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetEnemyAttackAnimParam  @ 0x080c2410
	push	{lr}
	cmp	r0, #0xab
	bls	.Lc241a
	mov	r0, #0
	b	.Lc242c
.Lc241a:
	ldr	r3, =.Lc7420
	lsl	r2, r0, #3
	add	r2, r3
	ldrb	r3, [r2, #2]
	lsr	r3, #5
	mov	r0, r3
	cmp	r3, #0
	bne	.Lc242c
	mov	r0, #0
.Lc242c:
	pop	{r1}
	bx	r1
.func_end GetEnemyAttackAnimParam

