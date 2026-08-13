	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8006384  @ 0x08006384
	push	{r5, r6, lr}
	ldr	r1, =iwram_3001f64
	mov	r5, r0
	ldrh	r2, [r1]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	beq	.L63a6
	mov	r6, r1
.L6396:
	mov	r0, #1
	bl	WaitFrames
	ldrh	r2, [r6]
	mov	r3, r5
	and	r3, r2
	cmp	r3, r5
	bne	.L6396
.L63a6:
	ldr	r3, =REG_SIOCNT
	ldr	r0, [r3]
	lsl	r0, #26
	lsr	r0, #30
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_8006384
