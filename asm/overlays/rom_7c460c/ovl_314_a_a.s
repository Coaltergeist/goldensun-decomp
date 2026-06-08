	.include "macros.inc"

.thumb_func_start OvlFunc_939_2008314
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x68
	cmp	r2, r3
	beq	.L332
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L332
	ldr	r0, =gOvl_02009d3c
	b	.L334
.L332:
	ldr	r0, =.L1bec
.L334:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_2008314

