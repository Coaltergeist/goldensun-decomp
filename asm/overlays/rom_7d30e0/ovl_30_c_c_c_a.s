	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009da0
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x31
	str	r3, [sp]
	mov	r5, #0x37
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x32
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x33
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x34
	str	r3, [sp]
	mov	r0, #0x30
	mov	r1, #0x37
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009da0

.thumb_func_start OvlFunc_948_2009df8
	push	{r5, lr}
	sub	sp, #8
	bl	OvlFunc_948_2009da0
	mov	r0, #0xb
	bl	__Func_8092054
	ldr	r0, [r0, #8]
	cmp	r0, #0
	bge	.L1e10
	ldr	r3, =0xfffff
	add	r0, r3
.L1e10:
	asr	r0, #20
	str	r0, [sp]
	mov	r1, #0x37
	mov	r0, #0x35
	mov	r2, #1
	mov	r3, #1
	mov	r5, #0x37
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r0, [r0, #8]
	cmp	r0, #0
	bge	.L1e34
	ldr	r3, =0xfffff
	add	r0, r3
.L1e34:
	asr	r0, #20
	str	r0, [sp]
	mov	r1, #0x37
	mov	r0, #0x35
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009df8

