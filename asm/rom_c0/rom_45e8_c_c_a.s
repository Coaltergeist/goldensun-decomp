	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80046c4  @ 0x080046c4
	push	{r5, lr}
	ldr	r3, =iwram_3001ac4
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L4700
	ldr	r4, =iwram_3001cbc
	ldrb	r3, [r0]
	ldr	r2, [r4]
	mov	r1, #0
	add	r0, #1
	cmp	r3, #0
	beq	.L46fe
	mov	r5, #0xf0
	ldr	r4, =0x6002500
	lsl	r5, #8
.L46e2:
	orr	r3, r5
	strh	r3, [r2]
	add	r2, #2
	cmp	r2, r4
	bne	.L46ee
	ldr	r2, =0x6002000
.L46ee:
	add	r1, #1
	cmp	r1, #0x1f
	bhi	.L46fc
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	bne	.L46e2
.L46fc:
	ldr	r4, =iwram_3001cbc
.L46fe:
	str	r2, [r4]
.L4700:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80046c4

