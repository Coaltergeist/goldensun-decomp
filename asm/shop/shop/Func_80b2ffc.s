	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80b2ffc  @ 0x080b2ffc
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001f2c
	mov	r2, #0xec
	ldr	r7, [r3]
	lsl	r2, #2
	add	r5, r7, r2
	mov	r6, #0x17
.Lb300a:
	mov	r0, r5
	sub	r6, #1
	bl	_Func_809b804
	add	r5, #0x48
	cmp	r6, #0
	bge	.Lb300a
	ldr	r2, =0x3ab
	add	r3, r7, r2
	mov	r5, #0
	ldrsb	r5, [r3, r5]
	mov	r3, #1
	neg	r3, r3
	cmp	r5, r3
	beq	.Lb3040
	bl	Random
	mov	r2, #0x8a
	lsl	r1, r0, #3
	lsl	r3, r5, #2
	lsl	r2, #1
	sub	r1, r0
	add	r3, r2
	lsr	r1, #16
	ldr	r0, [r7, r3]
	bl	_Sprite_SetColorswap
.Lb3040:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80b2ffc

