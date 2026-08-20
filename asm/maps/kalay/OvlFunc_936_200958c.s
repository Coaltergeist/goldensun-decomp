	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_200958c
	push	{lr}
	mov	r0, #0x80
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm936_15aa
	ldr	r3, =iwram_3001ee0
	ldr	r2, [r3]
	mov	r0, #0x80
	mov	r3, #0
	str	r3, [r2, #0x18]
	lsl	r0, #2
	bl	__ClearFlag
.Lm936_15aa:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200958c

