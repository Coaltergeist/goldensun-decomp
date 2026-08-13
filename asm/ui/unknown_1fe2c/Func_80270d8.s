	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80270d8  @ 0x080270d8
	push	{r5, r6, lr}
	mov	r6, r9
	push	{r6}
	sub	sp, #0x84
	mov	r2, r9
	mov	r6, sp
	add	r3, sp, #0x80
	mov	r5, r2
	str	r2, [r3]
	mov	r1, r6
	mov	r2, #0x34
	sub	r5, #8
	ldr	r0, =0x80d
	bl	Func_801965c
	ldr	r3, [r5]
	mov	r0, r6
	ldr	r1, [r3, #0x44]
	mov	r2, #0
	mov	r3, #4
	bl	Func_8017aa4
	add	sp, #0x84
	pop	{r3}
	mov	r9, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80270d8
