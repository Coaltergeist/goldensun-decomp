	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b9ec  @ 0x0801b9ec
	push	{lr}
	mov	r3, #0xd2
	lsl	r3, #2
	add	r0, r3
	sub	sp, #0xc
	ldr	r2, [r0]
	cmp	r1, #0
	beq	.L1ba04
.L1b9fc:
	sub	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, #0
	bne	.L1b9fc
.L1ba04:
	ldrh	r3, [r2, #0xa]
	cmp	r3, #1
	beq	.L1ba0e
	cmp	r3, #6
	bne	.L1ba2a
.L1ba0e:
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
	bl	Func_801c188
.L1ba2a:
	add	sp, #0xc
	pop	{r0}
	bx	r0
.func_end Func_801b9ec

