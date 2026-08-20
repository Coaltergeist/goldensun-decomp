	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_955_20089b0
	push	{r5, lr}
	mov	r0, #0x1f
	sub	sp, #8
	bl	__Func_809ad90
	mov	r0, #0xcd
	lsl	r0, #2
	bl	__SetFlag
	ldr	r3, =.Lm955_4834
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm955_9d0
	ldr	r2, =.Lm955_4838
	mov	r3, #0
	str	r3, [r2]
.Lm955_9d0:
	mov	r0, #0x1e
	bl	__WaitFrames
	mov	r0, #1
	bl	__WaitFrames
	ldr	r0, =OvlFunc_955_2008714
	bl	__StopTask
	mov	r3, #0xd
	str	r3, [sp, #4]
	mov	r5, #0x3a
	mov	r0, #0x3a
	mov	r1, #0x1c
	mov	r2, #7
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp, #4]
	mov	r0, #0x39
	mov	r1, #0xb
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_955_20089b0

