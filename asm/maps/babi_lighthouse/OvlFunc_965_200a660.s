	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_965_200a660
	push	{r5, r6, lr}
	mov	r5, r0
	ldrh	r3, [r5, #6]
	ldr	r2, =.Lm965_2fd4
	lsr	r3, #12
	lsl	r3, #2
	ldr	r0, [r2, r3]
	ldr	r3, =0xffff0000
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	sub	sp, #0xc
	and	r3, r0
	lsl	r0, #16
	mov	r6, sp
	add	r2, r0
	add	r1, r3
	str	r1, [r6]
	str	r2, [r6, #8]
	mov	r3, r5
	add	r3, #0x22
	ldrb	r0, [r3]
	bl	__Func_8011f54
	mov	r1, r5
	str	r0, [r6, #4]
	mov	r0, r6
	bl	OvlFunc_965_200806c
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_965_200a660

