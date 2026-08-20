	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_1490
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r0
	mov	r8, r1
	mov	r5, r2
	bl	OvlFunc_common1_1334
	ldr	r3, =.Lc1_45
	strh	r6, [r3]
	ldr	r3, =.Lc1_29
	mov	r2, r8
	strh	r2, [r3]
	ldr	r3, .Lc1_14c8	@ 3
	ldr	r2, =.Lc1_19
	and	r5, r3
	strh	r5, [r2]
	ldr	r3, =.Lc1_26
	ldr	r2, .Lc1_14cc	@ 0
	strh	r2, [r3]
	ldr	r3, =.Lc1_32
	mov	r1, #0xc8
	strh	r2, [r3]
	lsl	r1, #4
	ldr	r0, =OvlFunc_common1_1354
	bl	__StartTask
	b	.Lc1_14e8

	.align	2, 0
.Lc1_14c8:
	.word	3
.Lc1_14cc:
	.word	0
	.pool

.Lc1_14e8:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1490

