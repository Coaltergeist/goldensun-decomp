	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2008fdc
	push	{r5, lr}
	mov	r3, #0x80
	lsl	r3, #1
	and	r0, r3
	sub	sp, #8
	cmp	r0, #0
	beq	.Lm948_1028
	mov	r0, #0x9d
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r0, #10
	lsl	r1, #10
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x54
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r0, #0x3c
	bl	__WaitFrames
.Lm948_1028:
	mov	r3, #0x46
	mov	r2, #0x31
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x55
	mov	r1, #0x1d
	mov	r2, #1
	mov	r3, #3
	bl	__Func_80105d4
	mov	r3, #0x32
	str	r3, [sp, #4]
	mov	r5, #6
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp, #4]
	mov	r0, #6
	mov	r1, #0x31
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2008fdc

