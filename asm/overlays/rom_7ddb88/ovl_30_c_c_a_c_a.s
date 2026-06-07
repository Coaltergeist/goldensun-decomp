	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_200805c
	push	{lr}
	mov	r0, #0xb
	sub	sp, #8
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x24
	bne	.L8a
	ldr	r0, =0x335
	bl	__Func_8079358
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x23
	mov	r1, #0x4e
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.La4
.L8a:
	ldr	r0, =0x335
	bl	__Func_8079374
	mov	r3, #0x23
	mov	r2, #0x4d
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x22
	mov	r1, #0x4d
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.La4:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_200805c

