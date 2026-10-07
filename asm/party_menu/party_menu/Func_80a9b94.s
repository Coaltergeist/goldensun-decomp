	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a9b94  @ 0x080a9b94
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r6, r3
	sub	sp, #4
	mov	r10, r0
	mov	r8, r1
	mov	r7, r2
	mov	r5, #0
	add	r6, #0x48
.La9bae:
	ldmia	r6!, {r0}
	cmp	r0, #0
	beq	.La9bc0
	mov	r1, r5
	mov	r2, r10
	mov	r3, r8
	str	r7, [sp]
	bl	Func_80a9bd8
.La9bc0:
	add	r5, #1
	cmp	r5, #0x1f
	ble	.La9bae
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a9b94

