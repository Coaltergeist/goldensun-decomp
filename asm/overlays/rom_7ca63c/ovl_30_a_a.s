	.include "macros.inc"

.thumb_func_start OvlFunc_944_2008030
	push	{r5, lr}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r4, =.L1938
	ldmia	r3!, {r1}
	ldr	r5, =.L1930
	ldr	r2, [r3]
	ldr	r3, [r4]
	sub	r1, r3
	ldr	r3, [r5]
	add	r3, r1
	str	r3, [r0, #8]
	ldr	r3, [r4, #4]
	sub	r2, r3
	lsr	r3, r2, #31
	add	r2, r3
	ldr	r3, [r5, #4]
	asr	r2, #1
	add	r3, r2
	str	r3, [r0, #0xc]
	ldr	r2, [r0, #0x50]
	mov	r1, #0xc0
	ldrh	r3, [r2, #0x1e]
	lsl	r1, #3
	add	r3, r1
	strh	r3, [r2, #0x1e]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_2008030

.thumb_func_start OvlFunc_944_200807c
	push	{r5, lr}
	mov	r5, r0
	bl	__Func_8004458
	lsl	r0, #6
	lsr	r0, #16
	cmp	r0, #6
	bne	.L90
	mov	r3, #0xd0
	b	.L96
.L90:
	cmp	r0, #9
	bne	.L9a
	mov	r3, #0xb0
.L96:
	lsl	r3, #8
	strh	r3, [r5, #6]
.L9a:
	mov	r0, #1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_944_200807c

