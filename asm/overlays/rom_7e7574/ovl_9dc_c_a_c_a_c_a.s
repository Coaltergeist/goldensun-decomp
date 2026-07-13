	.include "macros.inc"

.thumb_func_start OvlFunc_959_2009718
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xc
	ldr	r5, [r3]
	bl	OvlFunc_959_20098e4
	cmp	r0, #0
	beq	.L1748
	ldr	r3, =gState
	mov	r2, #0x93
	lsl	r2, #2
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.L1748
	ldr	r0, =OvlFunc_959_2009718
	bl	__StopTask
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r5, r3
	mov	r3, #0x5f
	strh	r3, [r2]
.L1748:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_959_2009718

