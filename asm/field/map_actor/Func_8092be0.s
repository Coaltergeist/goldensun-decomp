	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8092be0  @ 0x08092be0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r4, [r3]
	ldr	r2, [r4, #0x34]
	mov	r5, #1
	neg	r5, r5
	mov	r1, #8
	cmp	r2, #0
	beq	.L92c0c
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92c0c
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	bne	.L92c0c
	mov	r5, #8
	b	.L92c34
.L92c0c:
	add	r1, #1
	cmp	r1, #0x41
	bgt	.L92c34
	lsl	r3, r1, #2
	add	r3, #0x14
	ldr	r2, [r4, r3]
	cmp	r2, #0
	beq	.L92c0c
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92c0c
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	bne	.L92c0c
	mov	r5, r1
.L92c34:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8092be0

