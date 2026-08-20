	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801f730  @ 0x0801f730
	push	{r5, r6, lr}
	mov	r6, r0
	bl	Func_80056cc
	mov	r5, #9
	neg	r5, r5
	cmp	r0, #0
	bne	.L1f766
	bl	Func_8005c68
	mov	r5, r0
	cmp	r6, #0
	beq	.L1f766
	ldr	r3, =iwram_3001f1c
	ldr	r1, =0x1071
	ldr	r3, [r3]
	add	r2, r3, r1
	mov	r1, #2
.L1f754:
	ldrb	r3, [r2]
	lsl	r3, #24
	add	r2, #0x40
	cmp	r3, #0
	beq	.L1f760
	sub	r5, #1
.L1f760:
	sub	r1, #1
	cmp	r1, #0
	bge	.L1f754
.L1f766:
	bl	Func_8005cf8
	mov	r0, r5
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801f730

