	.include "macros.inc"

.thumb_func_start OvlFunc_949_2008224
	push	{lr}
	mov	r0, #8
	bl	__Func_8092054
	cmp	r0, #0
	beq	.L238
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.L238:
	mov	r0, #8
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0x88
	mov	r2, #0x90
	mov	r0, #0
	lsl	r1, #18
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8079358
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008224

.thumb_func_start OvlFunc_949_2008260
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #3
	mov	r1, #0x20
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #0xe0
	mov	r2, #0xd4
	mov	r0, #0x66
	lsl	r1, #14
	lsl	r2, #17
	bl	__Func_808edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008260

.thumb_func_start OvlFunc_949_200828c
	push	{lr}
	sub	sp, #8
	mov	r3, #3
	mov	r2, #0x1a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r0, #2
	mov	r1, #0x19
	mov	r2, #1
	bl	__Func_8010704
	mov	r1, #1
	mov	r2, #1
	mov	r0, #0x66
	neg	r1, r1
	neg	r2, r2
	bl	__Func_808edac
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_200828c

