	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_809b5dc  @ 0x0809b5dc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x64
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	mov	r1, r5
	add	r1, #0x66
	ldrh	r3, [r1]
	add	r2, r3, #1
	lsl	r3, #16
	strh	r2, [r1]
	asr	r0, r3, #16
	mov	r2, #0xed
	ldr	r3, =gState
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =1
	cmp	r2, r3
	bne	.L9b61a
	mov	r1, #7
	bl	__modsi3
	cmp	r0, #0
	bne	.L9b62a
	mov	r0, r5
	bl	Func_809b450
	b	.L9b62a
.L9b61a:
	mov	r1, #5
	bl	__modsi3
	cmp	r0, #0
	bne	.L9b62a
	mov	r0, r5
	bl	Func_809b450
.L9b62a:
	cmp	r6, #1
	bne	.L9b638
	ldrh	r3, [r5, #6]
	mov	r2, #0xc0
	lsl	r2, #4
	add	r3, r2
	strh	r3, [r5, #6]
.L9b638:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_809b5dc
