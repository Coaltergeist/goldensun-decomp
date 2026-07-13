	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8077348  @ 0x08077348
	push	{r5, r6, r7, lr}
	sub	sp, #4
	bl	GetPartySize
	mov	r7, r0
	mov	r6, #0
	mov	r0, #0
	cmp	r7, #0
	beq	.L77388
	cmp	r6, r7
	bge	.L7737e
	ldr	r3, =gState
	mov	r1, #0xfc
	lsl	r1, #1
	add	r2, r3, r1
	mov	r5, r7
.L77368:
	ldrb	r0, [r2]
	add	r2, #1
	str	r2, [sp]
	bl	GetUnit
	ldrb	r3, [r0, #0xf]
	sub	r5, #1
	add	r6, r3
	ldr	r2, [sp]
	cmp	r5, #0
	bne	.L77368
.L7737e:
	mov	r0, r6
	mov	r1, r7
	bl	__divsi3
	mov	r6, r0
.L77388:
	add	sp, #4
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8077348
