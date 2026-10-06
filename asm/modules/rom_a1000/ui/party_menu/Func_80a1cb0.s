	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1cb0  @ 0x080a1cb0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0x38
	sub	sp, #4
	ldr	r3, [r3]
	mov	r8, r2
	cmp	r0, #1
	beq	.La1cca
	mov	r2, #0x28
	mov	r8, r2
.La1cca:
	mov	r5, r3
	add	r5, #0x48
	mov	r3, #5
	mov	r6, #0
	mov	r7, r5
	mov	r10, r3
.La1cd6:
	ldmia	r7!, {r3}
	cmp	r3, #0
	beq	.La1cec
	mov	r2, r10
	str	r2, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, #0x74
	mov	r3, r8
	bl	Func_a1c6c
.La1cec:
	add	r6, #1
	add	r5, #4
	cmp	r6, #0xe
	ble	.La1cd6
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1cb0

