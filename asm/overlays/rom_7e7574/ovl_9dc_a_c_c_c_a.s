	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008fc8
	push	{lr}
	mov	r0, #8
	mov	r1, #8
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.Lfdc
	ldr	r0, =0xf2a
	bl	__SetFlag
.Lfdc:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008fc8

.thumb_func_start OvlFunc_959_2008fe4
	push	{lr}
	mov	r0, #9
	mov	r1, #7
	bl	OvlFunc_959_2009038
	cmp	r0, #0
	beq	.Lff8
	ldr	r0, =0xf2b
	bl	__SetFlag
.Lff8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2008fe4

