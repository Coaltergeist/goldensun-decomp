	.include "macros.inc"

.thumb_func_start OvlFunc_907_200811c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L134
	ldr	r0, =.L1498
	b	.L14a
.L134:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L1600
	b	.L14a
.L13e:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L148
	ldr	r0, =.L16f0
	b	.L14a
.L148:
	ldr	r0, =gScript_944__02009480
.L14a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_200811c

