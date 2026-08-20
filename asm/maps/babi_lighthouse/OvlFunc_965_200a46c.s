	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a46c
	push	{lr}
	ldr	r0, =0x985
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm965_2490
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x24
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
	b	.Lm965_24a4
.Lm965_2490:
	mov	r3, #0x11
	mov	r2, #0x4e
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x22
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010788
.Lm965_24a4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_965_200a46c

