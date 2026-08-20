	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80f7f30  @ 0x080f7f30
	push	{r5, r6, lr}
	ldr	r3, =ewram_2004c00
	ldr	r1, =0x4404
	ldr	r2, [r3]
	add	r3, r2, r1
	ldr	r3, [r3]
	mov	r6, r0
	mov	r0, #0
	cmp	r3, #0
	beq	.Lf7f64
	ldr	r3, =0x443c
	add	r4, r2, r3
	sub	r3, #0x34
	add	r5, r2, r1
	add	r1, r2, r3
.Lf7f4e:
	ldrb	r3, [r1]
	ldr	r2, [r4]
	strb	r3, [r6, r2]
	ldr	r3, [r4]
	add	r3, #1
	str	r3, [r4]
	ldr	r3, [r5]
	add	r0, #1
	add	r1, #1
	cmp	r0, r3
	bne	.Lf7f4e
.Lf7f64:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80f7f30

