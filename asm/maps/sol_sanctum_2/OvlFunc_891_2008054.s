	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_891_2008054
	push	{lr}
	ldr	r0, =0x818
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm891_6e
	ldr	r0, =0x813
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_82
	mov	r0, #3
	b	.Lm891_7a
.Lm891_6e:
	ldr	r0, =0x812
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm891_82
	mov	r0, #4
.Lm891_7a:
	bl	__Func_8091e9c
	mov	r0, #1
	b	.Lm891_86
.Lm891_82:
	mov	r0, #1
	neg	r0, r0
.Lm891_86:
	pop	{r1}
	bx	r1
.func_end OvlFunc_891_2008054

