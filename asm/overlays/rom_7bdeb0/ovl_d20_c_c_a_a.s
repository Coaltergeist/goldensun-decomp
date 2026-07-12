	.include "macros.inc"

.thumb_func_start OvlFunc_934_2008d80
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	beq	.Lda8
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld9e
	ldr	r0, =.L22c4
	b	.Ldaa
.Ld9e:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Lda8
	ldr	r0, =.L239c
	b	.Ldaa
.Lda8:
	ldr	r0, =.L2234
.Ldaa:
	pop	{r1}
	bx	r1
.func_end OvlFunc_934_2008d80
