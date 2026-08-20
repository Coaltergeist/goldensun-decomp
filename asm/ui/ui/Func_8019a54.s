	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019a54  @ 0x08019a54
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	mov	r2, #0xc4
	ldr	r3, [r3]
	lsl	r2, #3
	add	r5, r3, r2
	mov	r6, #0
.L19a62:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L19a88
	ldr	r3, [r0, #0x18]
	cmp	r3, #0
	bne	.L19a88
	ldrh	r2, [r0, #0x16]
	mov	r3, r2
	cmp	r3, #0
	beq	.L19a88
	ldrh	r3, [r0, #0x14]
	cmp	r3, #0
	beq	.L19a88
	mov	r1, #2
	and	r1, r2
	lsl	r1, #16
	lsr	r1, #16
	bl	CloseUIBox
.L19a88:
	add	r6, #1
	add	r5, #0x28
	cmp	r6, #3
	bne	.L19a62
	mov	r0, #0xa
	bl	WaitFrames
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8019a54

