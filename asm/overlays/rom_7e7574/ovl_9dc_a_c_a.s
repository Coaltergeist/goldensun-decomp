	.include "macros.inc"

.thumb_func_start OvlFunc_959_2008a34
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xa1
	cmp	r2, r3
	bne	.La4c
	ldr	r0, =.L6910
	b	.La5e
.La4c:
	ldr	r3, =0xa2
	cmp	r2, r3
	beq	.La58
	ldr	r3, =0xa3
	cmp	r2, r3
	bne	.La5c
.La58:
	ldr	r0, =.L697c
	b	.La5e
.La5c:
	ldr	r0, =.L68a4
.La5e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2008a34
