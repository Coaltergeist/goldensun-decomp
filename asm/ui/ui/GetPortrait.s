	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetPortrait  @ 0x08019d2c
	push	{r5, lr}
	mov	r1, #1
	neg	r1, r1
	mov	r2, #0
	cmp	r0, #0x13
	bhi	.L19d66
	ldr	r4, =Data_367e4
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	cmp	r3, r1
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d4c
	mov	r2, #2
	ldrsh	r1, [r4, r2]
	b	.L19d98
.L19d4c:
	add	r2, #2
	lsl	r3, r2, #1
	ldrsh	r3, [r4, r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d4c
	add	r2, #1
	lsl	r3, r2, #1
	ldrsh	r1, [r4, r3]
	b	.L19d98
.L19d66:
	ldr	r4, =Data_3680c
	mov	r5, #0
	ldrsh	r3, [r4, r5]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d7e
	mov	r2, #2
	ldrsh	r1, [r4, r2]
	b	.L19d96
.L19d7e:
	add	r2, #2
	lsl	r3, r2, #1
	ldrsh	r3, [r4, r3]
	mov	r5, #1
	neg	r5, r5
	cmp	r3, r5
	beq	.L19d98
	cmp	r3, r0
	bne	.L19d7e
	add	r2, #1
	lsl	r3, r2, #1
	ldrsh	r1, [r4, r3]
.L19d96:
	add	r1, #0x80
.L19d98:
	mov	r0, r1
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GetPortrait

