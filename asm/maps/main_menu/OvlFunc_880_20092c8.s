	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_20092c8
	push	{r5, r6, r7, lr}
	mov	r4, r0
	mov	r5, #0
	ldr	r0, =0xffff
	cmp	r4, #0
	beq	.L1300
	mov	r7, #0x80
	ldr	r6, =0xffffefdf
	lsl	r7, #8
.L12da:
	ldrb	r3, [r1]
	lsl	r3, #8
	eor	r0, r3
	mov	r2, #0
.L12e2:
	mov	r3, r0
	and	r3, r7
	cmp	r3, #0
	beq	.L12f0
	lsl	r3, r0, #1
	add	r0, r3, r6
	b	.L12f2
.L12f0:
	lsl	r0, #1
.L12f2:
	add	r2, #1
	cmp	r2, #8
	bne	.L12e2
	add	r5, #1
	add	r1, #1
	cmp	r5, r4
	bne	.L12da
.L1300:
	mvn	r0, r0
	lsl	r0, #16
	lsr	r0, #16
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_880_20092c8

