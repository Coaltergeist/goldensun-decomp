	.include "macros.inc"

.thumb_func_start OvlFunc_964_20099cc
	push	{lr}
	bl	__Func_80916b0
	bl	OvlFunc_964_20080c4
	bl	__Func_8091750
	bl	OvlFunc_964_20099bc
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20099cc

.thumb_func_start OvlFunc_964_20099e4
	push	{lr}
	ldr	r1, =.L33b8
	mov	r0, #8
	bl	__Func_809207c
	ldr	r0, =0x203
	bl	__Func_8079358
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, =OvlFunc_964_2008fe8
	str	r3, [r0, #0x6c]
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_20099e4

.thumb_func_start OvlFunc_964_2009a10
	push	{r5, lr}
	sub	sp, #8
	bl	__Func_80916b0
	mov	r0, #9
	mov	r1, #1
	bl	__Func_8092b08
	mov	r0, #9
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #9
	mov	r1, #0
	bl	__Func_8092950
	mov	r1, #2
	mov	r0, #9
	bl	__Func_80924d4
	mov	r0, #9
	bl	__Func_8092054
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfd
	and	r3, r2
	strb	r3, [r0]
	mov	r0, #0x81
	lsl	r0, #2
	bl	__Func_8079358
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, [r0, #8]
	mov	r0, #9
	bl	__Func_8092054
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	str	r3, [sp, #4]
	mov	r1, #8
	mov	r2, #1
	mov	r3, #1
	asr	r5, #20
	mov	r0, #0x1a
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #9
	bl	__Func_8092054
	ldr	r5, =OvlFunc_964_2008ec8
	str	r5, [r0, #0x6c]
	mov	r0, #8
	bl	__Func_8092054
	str	r5, [r0, #0x6c]
	bl	__Func_8091750
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_964_2009a10

