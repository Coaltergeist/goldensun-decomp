	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_926_200c1c4
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.Lm926_41dc
	mov	r1, #0xa
	bl	__Func_80929d8
	b	.Lm926_41e2
.Lm926_41dc:
	mov	r1, #9
	bl	__Func_80929d8
.Lm926_41e2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c1c4

