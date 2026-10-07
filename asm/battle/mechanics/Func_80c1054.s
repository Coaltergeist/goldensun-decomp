	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1054  @ 0x080c1054
	push	{r5, r6, r7, lr}
	sub	sp, #0x1c
	mov	r5, sp
	mov	r0, #3
	mov	r1, r5
	bl	Func_80b6c08
	cmp	r0, #0
	ble	.Lc107c
	mov	r7, r5
	mov	r6, #0
	mov	r5, r0
.Lc106c:
	ldrsh	r0, [r6, r7]
	mov	r1, #0
	sub	r5, #1
	bl	Func_80c0f98
	add	r6, #2
	cmp	r5, #0
	bne	.Lc106c
.Lc107c:
	add	sp, #0x1c
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80c1054
