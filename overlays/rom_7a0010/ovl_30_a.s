	.include "macros.inc"

.thumb_func_start OvlFunc_30
	push	{r5, lr}
	mov	r3, #0
	mov	r5, #2
	mov	r4, #1
	mov	r1, #0x69
	mov	r2, #0x6e
.L3c:
	strb	r5, [r0, #0x16]
	str	r4, [r0, #4]
	strh	r1, [r0]
	cmp	r3, #4
	beq	.L4a
	cmp	r3, #7
	bne	.L4c
.L4a:
	strh	r2, [r0]
.L4c:
	add	r3, #1
	add	r0, #0x18
	cmp	r3, #0xe
	bls	.L3c
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_30

.thumb_func_start OvlFunc_5c
	ldr	r0, =.L318
	bx	lr
.func_end OvlFunc_5c

