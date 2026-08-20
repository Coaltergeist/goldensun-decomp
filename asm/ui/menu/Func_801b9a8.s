	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b9a8  @ 0x0801b9a8
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1b9c0
.L1b9b8:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9b8
.L1b9c0:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1b9ca
	cmp	r3, #6
	bne	.L1b9e2
.L1b9ca:
	ldrh	r0, [r2, #0x20]
	ldr	r3, =0x1f
	sub	r0, r3
	ldrh	r3, [r2, #0xc]
	mov	r1, #1
	str	r3, [sp, #8]
	str	r1, [sp]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r1, #0
	bl	LoadOldUIIcon
.L1b9e2:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_801b9a8

