	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common2_254
	push	{r4, r5, r6, lr}
	sub	sp, #0x4c
	add	r4, sp, #8
	add	r6, sp, #0x38
	mov	r5, sp
	str	r0, [r4]
	str	r1, [r4, #4]
	mov	r0, r4
	mov	r1, r6
	str	r2, [r5]
	str	r3, [r5, #4]
	bl	OvlFunc_common2_618
	add	r4, sp, #0x24
	mov	r0, r5
	mov	r1, r4
	bl	OvlFunc_common2_618
	mov	r1, r4
	add	r2, sp, #0x10
	mov	r0, r6
	bl	OvlFunc_common2_0
	bl	OvlFunc_common2_44c
	add	sp, #0x4c
	pop	{r4, r5, r6, pc}
.func_end OvlFunc_common2_254

