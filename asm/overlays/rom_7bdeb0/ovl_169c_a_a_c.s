	.include "macros.inc"

.thumb_func_start OvlFunc_934_2009770
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r0, #0
	mov	r6, #0x17
	mov	r5, #0x22
	mov	r1, #0x22
	mov	r2, #0xd
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L17ae
	mov	r0, #0xb
	mov	r1, #0x23
	mov	r2, #0x23
	bl	OvlFunc_934_2009938
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	b	.L17ca
.L17ae:
	mov	r0, #0xb
	mov	r1, #0x17
	mov	r2, #0x23
	bl	OvlFunc_934_2009938
	mov	r3, #0x23
	str	r3, [sp]
	mov	r0, #0x18
	mov	r1, #0x22
	mov	r2, #1
	mov	r3, #3
	str	r5, [sp, #4]
	bl	__Func_8010704
.L17ca:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2009770
