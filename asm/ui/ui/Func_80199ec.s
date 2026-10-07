	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80199ec  @ 0x080199ec
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r1, =0x12f9
	ldr	r5, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	mov	r7, r0
	mov	r6, #0
	cmp	r3, #0
	beq	.L19a0a
	bl	_Func_80f954c
	cmp	r0, #0
	bne	.L19a0a
	mov	r6, #1
.L19a0a:
	ldr	r3, =gKeyPress
	ldr	r1, =0xea4
	ldr	r2, [r3]
	add	r3, r5, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L19a1c
	ldr	r3, =iwram_3001af8
	ldr	r2, [r3]
.L19a1c:
	ldr	r3, =0x303
	and	r3, r2
	cmp	r3, #0
	beq	.L19a26
	mov	r6, #1
.L19a26:
	cmp	r6, #0
	beq	.L19a32
	mov	r3, #0
	strh	r3, [r7, #0x14]
	mov	r0, #1
	b	.L19a34
.L19a32:
	mov	r0, #0
.L19a34:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80199ec

