	.include "macros.inc"

.thumb_func_start Func_8093054
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r5, r0
	bl	Func_8092c40
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_8091c7c
	mov	r7, r0
	cmp	r7, #0
	bne	.L9308e
	mov	r0, r5
	mov	r1, r6
	bl	Func_8092f84
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	b	.L930a6
.L9308e:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, r5
	mov	r1, r6
	bl	Func_8092f84
.L930a6:
	mov	r0, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8093054

