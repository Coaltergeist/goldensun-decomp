	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_2008384
	push	{lr}
	mov	r0, #0xa2
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.L396
	mov	r0, #0
	b	.L3bc
.L396:
	ldr	r1, =0x23e
	ldr	r2, =gState
	add	r3, r2, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r0, #0
	cmp	r3, #2
	beq	.L3bc
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =2
	eor	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	neg	r0, r0
.L3bc:
	pop	{r1}
	bx	r1
.func_end OvlFunc_880_2008384

