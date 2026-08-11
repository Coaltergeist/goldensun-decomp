	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8003e58  @ 0x08003e58
	push	{r5, r6, r7, lr}
	mov	r6, r0
	lsr	r5, r1, #6
	cmp	r6, #0x5f
	bls	.L3e68
	mov	r0, #1
	neg	r0, r0
	b	.L3ec4
.L3e68:
	ldr	r1, =gSpriteAllocTable
	ldr	r2, =gSpriteSlots
	mov	r12, r1
	mov	r4, #0
	mov	r14, r2
	mov	r7, r12
.L3e74:
	mov	r3, #0x80
	mov	r0, #1
	lsl	r3, #2
	neg	r0, r0
	cmp	r4, r3
	bge	.L3ec4
	ldrb	r3, [r7, r4]
	cmp	r3, #0xff
	bne	.L3eb2
	mov	r0, r4
	add	r1, r5, r0
	cmp	r0, r1
	bcs	.L3e9e
	add	r2, r0, r7
.L3e90:
	ldrb	r3, [r2]
	add	r2, #1
	cmp	r3, #0xff
	bne	.L3eb2
	add	r4, #1
	cmp	r4, r1
	bcc	.L3e90
.L3e9e:
	mov	r2, #0
	cmp	r2, r5
	bcs	.L3ec2
.L3ea4:
	add	r3, r0, r2
	mov	r1, r12
	add	r2, #1
	strb	r6, [r1, r3]
	cmp	r2, r5
	bcc	.L3ea4
	b	.L3ec2
.L3eb2:
	mov	r2, r12
	ldrb	r3, [r2, r4]
	mov	r1, r14
	lsl	r3, #2
	ldrh	r3, [r1, r3]
	lsr	r3, #6
	add	r4, r3
	b	.L3e74
.L3ec2:
	lsl	r0, #6
.L3ec4:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8003e58
