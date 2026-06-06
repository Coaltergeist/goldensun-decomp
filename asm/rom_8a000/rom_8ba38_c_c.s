	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d5a4
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, r5
	mov	r0, #0
	bl	Func_808d48c
	ldr	r2, =0x24a
	ldr	r3, =ewram_2000240
	add	r3, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	mov	r6, r0
	cmp	r1, r5
	bne	.L8d5ca
	mov	r0, #7
	bl	Func_808d48c
	cmp	r0, #0
	bne	.L8d5cc
.L8d5ca:
	mov	r0, r6
.L8d5cc:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_808d5a4

	.section .rodata
	.global .L9e4ce

.L9e4ce:
	.incrom 0x9e4ce, 0x9e680
