	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8078550  @ 0x08078550
	push	{r5, r6, r7, lr}
	sub	sp, #0x14
	mov	r5, sp
	mov	r0, r5
	bl	Func_80796c4
	mov	r7, #0
	mov	r6, r5
	cmp	r7, r0
	bge	.L7857c
	mov	r5, r0
.L78566:
	mov	r3, #0
	ldrsh	r0, [r6, r3]
	bl	FindEmptyInventorySlot
	sub	r0, r7, r0
	mov	r7, r0
	sub	r5, #1
	add	r6, #2
	add	r7, #0xf
	cmp	r5, #0
	bne	.L78566
.L7857c:
	mov	r0, r7
	add	sp, #0x14
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8078550

