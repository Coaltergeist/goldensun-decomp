	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a3480  @ 0x080a3480
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r2, #0xd
	mov	r7, r3
	mov	r6, #0
	mov	r8, r2
	add	r7, #0x48
.La3494:
	ldmia	r7!, {r5}
	cmp	r5, #0
	beq	.La34aa
	mov	r0, r6
	mov	r1, #5
	bl	__modsi3
	cmp	r0, #0
	bne	.La34aa
	mov	r3, r8
	strb	r3, [r5, #5]
.La34aa:
	add	r6, #1
	cmp	r6, #0x1f
	ble	.La3494
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80a3480

