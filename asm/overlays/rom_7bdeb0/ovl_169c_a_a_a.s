	.include "macros.inc"

.thumb_func_start OvlFunc_934_200969c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L16b4
	ldr	r0, =.L2420
	b	.L16ca
.L16b4:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.L16be
	ldr	r0, =.L2450
	b	.L16ca
.L16be:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.L16c8
	ldr	r0, =.L2624
	b	.L16ca
.L16c8:
	ldr	r0, =.L2414
.L16ca:
	pop	{r1}
	bx	r1
.func_end OvlFunc_934_200969c

.thumb_func_start OvlFunc_934_20096f0
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r1, r3, r2
	mov	r3, #0x81
	lsl	r3, #2
	str	r3, [r1]
	ldr	r3, =gState
	ldrsh	r2, [r3, r2]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.L172e
	mov	r3, #0x80
	lsl	r3, #1
	str	r3, [r1]
	mov	r0, #1
	bl	__WaitFrames
	mov	r0, #0xb
	mov	r1, #3
	bl	__Func_8092b08
	mov	r0, #0xc
	mov	r1, #3
	bl	__Func_8092b08
	ldr	r0, =0x12f
	bl	__ClearFlag
.L172e:
	bl	OvlFunc_934_2009984
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end OvlFunc_934_20096f0

