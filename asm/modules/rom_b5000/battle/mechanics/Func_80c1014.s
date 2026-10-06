	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1014  @ 0x080c1014
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r7, r0
	mov	r1, r5
	mov	r0, #3
	bl	Func_80b6c08
	cmp	r0, #0
	ble	.Lc1048
	mov	r8, r5
	mov	r6, #0
	mov	r5, r0
.Lc1032:
	mov	r2, r8
	ldrsh	r0, [r6, r2]
	cmp	r0, r7
	beq	.Lc1040
	mov	r1, #1
	bl	Func_80c0f98
.Lc1040:
	sub	r5, #1
	add	r6, #2
	cmp	r5, #0
	bne	.Lc1032
.Lc1048:
	add	sp, #0x1c
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c1014
