	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801999c  @ 0x0801999c
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0x12f9
	ldr	r3, [r3]
	add	r3, r2
	ldrb	r3, [r3]
	mov	r6, r0
	mov	r5, #0
	cmp	r3, #0
	beq	.L199ba
	bl	_Func_80f954c
	cmp	r0, #0
	bne	.L199ba
	mov	r5, #1
.L199ba:
	ldr	r3, =gKeyHeld
	ldr	r2, =0x303
	ldr	r3, [r3]
	and	r3, r2
	cmp	r3, #0
	beq	.L199c8
	mov	r5, #1
.L199c8:
	cmp	r5, #0
	beq	.L199d4
	mov	r3, #0
	strh	r3, [r6, #0x14]
	mov	r0, #1
	b	.L199d6
.L199d4:
	mov	r0, #0
.L199d6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_801999c

