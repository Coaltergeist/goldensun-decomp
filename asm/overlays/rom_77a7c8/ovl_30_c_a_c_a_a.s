	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20082a4
	push	{r5, lr}
	mov	r5, r0
	bl	OvlFunc_881_20082cc
	ldr	r0, =0x847
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2be
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
.L2be:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_20082a4

.thumb_func_start OvlFunc_881_20082cc
	ldr	r3, =iwram_3001e70
	mov	r1, #0x8d
	ldr	r2, [r3]
	lsl	r1, #1
	add	r2, r1
	ldr	r3, [r0, #0x50]
	ldrh	r2, [r2]
	ldr	r1, .L2e8	@ 0
	strh	r2, [r3, #0x1e]
	add	r3, #0x26
	strb	r1, [r3]
	mov	r0, #1
	bx	lr

	.align	2, 0
.L2e8:
	.word	0
.func_end OvlFunc_881_20082cc

.thumb_func_start OvlFunc_881_20082f0
	ldr	r3, =iwram_3001e70
	ldr	r4, [r0, #0x50]
	add	r0, #0x59
	ldrb	r2, [r0]
	ldr	r1, [r3]
	mov	r3, #1
	orr	r3, r2
	mov	r2, #0x8d
	lsl	r2, #1
	strb	r3, [r0]
	add	r3, r1, r2
	ldrh	r3, [r3]
	mov	r0, #1
	strh	r3, [r4, #0x1e]
	bx	lr
.func_end OvlFunc_881_20082f0

.thumb_func_start OvlFunc_881_2008314
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r1, #0
	bl	__Func_800c528
	mov	r0, r5
	mov	r1, #0xa
	bl	__Actor_SetColorswap
	mov	r3, r5
	add	r3, #0x59
	mov	r6, #0
	mov	r0, #0x8a
	strb	r6, [r3]
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.L344
	ldr	r0, =0x2f1
	bl	__SetFlag
	str	r6, [r5, #8]
	str	r6, [r5, #0xc]
.L344:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_881_2008314

