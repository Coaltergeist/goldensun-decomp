.include "macros.inc"
.include "gba.inc"

.thumb_func_start OvlFunc_881_2008314
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0xa
	bl	__Actor_SetColorswap
	mov	r3, r5
	add	r3, #0x59
	mov	r6, #0
	mov	r0, #0x8a
	strb	r6, [r3]
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2f1
	bl	__SetFlag
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
.L344:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_2008314
