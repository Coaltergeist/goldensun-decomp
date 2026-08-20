	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b36c  @ 0x0801b36c
	push	{lr}
	mov	r2, #0xd2
	lsl	r2, #2
	ldr	r4, =0x39e
	add	r3, r0, r2
	ldr	r2, [r3]
	add	r3, r0, r4
	ldrh	r3, [r3]
	mov	r1, #0
	cmp	r3, #0
	beq	.L1b38e
	add	r3, r0, r4
	ldrh	r0, [r3]
.L1b386:
	add	r1, #1
	ldr	r2, [r2, #4]
	cmp	r1, r0
	bne	.L1b386
.L1b38e:
	mov	r0, r2
	pop	{r1}
	bx	r1
.func_end Func_801b36c

