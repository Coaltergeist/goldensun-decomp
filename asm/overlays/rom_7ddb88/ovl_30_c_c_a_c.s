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

.thumb_func_start OvlFunc_955_20080b0
	push	{lr}
	bl	OvlFunc_common1_2060
	bl	OvlFunc_955_200805c
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20080b0

.thumb_func_start OvlFunc_955_20080c0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #4
	mov	r0, #0x64
	bl	__Func_8010704
	mov	r0, #0xc
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r0, #0xd0
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r5, #0x10
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xd
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r0, #0xd2
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r2, #1
	mov	r1, #0x10
	mov	r3, #1
	mov	r0, #0x47
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0xe
	bl	__Func_8092054
	ldr	r3, [r0, #8]
	mov	r0, #0xd4
	asr	r6, r3, #20
	mov	r1, r6
	lsl	r0, #2
	bl	__Func_80793c8
	mov	r0, #0x47
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20080c0

