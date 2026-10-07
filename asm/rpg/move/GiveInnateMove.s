	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GiveInnateMove  @ 0x08078e28
	push	{r5, r6, r7, lr}
	mov	r6, r1
	mov	r7, r0
	bl	GetUnit
	ldr	r3, =0x3fff
	mov	r5, r0
	mov	r0, #0x58
	mov	r12, r3
	and	r6, r3
	ldrh	r3, [r0, r5]
	mov	r2, r12
	mov	r4, #1
	and	r2, r3
	neg	r4, r4
	mov	r1, #0
	cmp	r2, r6
	bne	.L78e52
	strh	r2, [r0, r5]
	mov	r4, #0
	b	.L78e68
.L78e52:
	add	r1, #1
	add	r0, #4
	cmp	r1, #0x1e
	bgt	.L78e68
	ldrh	r3, [r0, r5]
	mov	r2, r12
	and	r2, r3
	cmp	r2, r6
	bne	.L78e52
	strh	r2, [r0, r5]
	mov	r4, r1
.L78e68:
	cmp	r4, #0
	bge	.L78e9c
	mov	r2, #0x58
	ldrh	r3, [r5, r2]
	mov	r1, #0
	cmp	r3, #0
	bne	.L78e7c
	strh	r6, [r5, r2]
	mov	r4, #0
	b	.L78e92
.L78e7c:
	add	r1, #1
	cmp	r1, #0x1e
	bgt	.L78e92
	lsl	r3, r1, #2
	mov	r2, r3
	add	r2, #0x58
	ldrh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L78e7c
	strh	r6, [r5, r2]
	mov	r4, r1
.L78e92:
	cmp	r4, #0
	bge	.L78e9c
	mov	r0, #1
	neg	r0, r0
	b	.L78ec0
.L78e9c:
	mov	r0, r7
	bl	Func_8078bf0
	mov	r3, #0x58
	ldrh	r3, [r5, r3]
	mov	r1, #0
	cmp	r3, r6
	beq	.L78ebe
	mov	r0, r5
	add	r0, #0x58
.L78eb0:
	add	r1, #1
	cmp	r1, #0x1f
	bgt	.L78ebe
	add	r0, #4
	ldrh	r3, [r0]
	cmp	r3, r6
	bne	.L78eb0
.L78ebe:
	mov	r0, r1
.L78ec0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end GiveInnateMove

