	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a1bdc  @ 0x080a1bdc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r5, r3
	add	r5, #0x48
	sub	sp, #4
	mov	r9, r0
	mov	r10, r1
	mov	r8, r2
	mov	r6, #0
	mov	r7, r5
.La1bfa:
	ldmia	r7!, {r3}
	cmp	r3, #0
	beq	.La1c10
	mov	r3, r8
	str	r3, [sp]
	mov	r0, r5
	mov	r1, r6
	mov	r2, r9
	mov	r3, r10
	bl	Func_80a1c2c
.La1c10:
	add	r6, #1
	add	r5, #4
	cmp	r6, #0x1f
	ble	.La1bfa
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a1bdc

