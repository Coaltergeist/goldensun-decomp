	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019908  @ 0x08019908
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	mov	r7, r1
	ldr	r1, [r3]
	ldr	r3, =0x12bc
	ldr	r4, =0x12dc
	mov	r6, r0
	mov	r5, #8
	mov	r0, #0
	add	r2, r1, r3
.L1991c:
	ldrh	r3, [r4, r1]
	cmp	r3, #0
	bne	.L19928
	str	r6, [r2]
	strh	r7, [r4, r1]
	b	.L19932
.L19928:
	add	r0, #1
	add	r2, #4
	add	r4, #2
	cmp	r0, r5
	bne	.L1991c
.L19932:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8019908

