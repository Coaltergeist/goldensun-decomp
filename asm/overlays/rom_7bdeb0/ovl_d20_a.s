	.include "macros.inc"

.thumb_func_start OvlFunc_934_2008d20
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x5d
	cmp	r2, r3
	bne	.Ld38
	ldr	r0, =.L1f9c
	b	.Ld4e
.Ld38:
	ldr	r3, =0x5e
	cmp	r2, r3
	bne	.Ld42
	ldr	r0, =.L2014
	b	.Ld4e
.Ld42:
	ldr	r3, =0x5f
	cmp	r2, r3
	bne	.Ld4c
	ldr	r0, =.L2134
	b	.Ld4e
.Ld4c:
	ldr	r0, =.L1f6c
.Ld4e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_934_2008d20

