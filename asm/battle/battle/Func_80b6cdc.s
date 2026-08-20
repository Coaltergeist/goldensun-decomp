	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b6cdc  @ 0x080b6cdc
	push	{r5, lr}
	bl	GetEnemyAttackAnimUnk
	ldr	r3, =iwram_3001e74
	ldr	r4, [r3]
	mov	r2, #4
	ldrsh	r3, [r4, r2]
	mov	r1, #0
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	mov	r5, #6
	ldrsh	r3, [r4, r5]
	cmp	r3, #0
	beq	.Lb6d1c
.Lb6cfc:
	add	r1, #1
	cmp	r1, #5
	bgt	.Lb6d1c
	lsl	r2, r1, #1
	add	r3, r2, #4
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
	cmp	r0, #0
	bne	.Lb6d1c
	cmp	r1, #4
	bgt	.Lb6cfc
	add	r3, r2, #6
	ldrsh	r3, [r4, r3]
	cmp	r3, #0
	bne	.Lb6cfc
.Lb6d1c:
	mov	r3, #6
	eor	r3, r1
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80b6cdc

