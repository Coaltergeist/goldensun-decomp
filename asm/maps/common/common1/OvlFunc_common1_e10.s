	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_e10
	push	{r5, r6, lr}
	ldr	r3, =.Lc1_33
	mov	r5, r0
	mov	r6, r1
	ldr	r2, =.Lc1_22
	strh	r5, [r3]
	mov	r1, #0xc8
	lsl	r3, r6, #4
	lsl	r1, #4
	strh	r3, [r2]
	ldr	r0, =OvlFunc_common1_920
	bl	__StartTask
	ldr	r1, =.Lc1_11
	cmp	r5, #2
	bne	.Lc1_e32
	ldr	r1, =.Lc1_2
.Lc1_e32:
	cmp	r5, #4
	bne	.Lc1_e38
	ldr	r1, =.Lc1_12
.Lc1_e38:
	cmp	r5, #3
	bne	.Lc1_e62
	cmp	r6, #0
	beq	.Lc1_e60
	ldr	r1, =.Lc1_3
	b	.Lc1_e62

	.pool_aligned

.Lc1_e60:
	ldr	r1, =.Lc1_13
.Lc1_e62:
	ldr	r2, .Lc1_e7c	@ 0
	ldr	r3, =.Lc1_36
	strh	r2, [r3]
	ldr	r3, =.Lc1_37
	str	r1, [r3]
	ldr	r3, =.Lc1_46
	strh	r2, [r3]
	ldr	r3, =.Lc1_24
	strh	r2, [r3]
	ldr	r2, =.Lc1_25
	mov	r3, #0
	str	r3, [r2]
	b	.Lc1_e98

	.align	2, 0
.Lc1_e7c:
	.word	0
	.pool

.Lc1_e98:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_e10

