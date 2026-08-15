	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8006088  @ 0x08006088
	push	{r5, r6, r7, lr}
	ldr	r3, =REG_SIOCNT
	ldr	r5, =ewram_2002240
	ldr	r7, [r3]
	ldrb	r3, [r5, #1]
	mov	r6, r0
	mov	r0, r1
	cmp	r3, #1
	bne	.L60aa
	bl	Func_800615c
	mov	r0, r6
	bl	Func_80060e8
	ldrb	r3, [r5, #0xb]
	add	r3, #1
	strb	r3, [r5, #0xb]
.L60aa:
	ldrb	r3, [r5, #2]
	ldrb	r2, [r5, #3]
	lsl	r3, #8
	orr	r2, r3
	ldrb	r3, [r5]
	cmp	r3, #8
	bne	.L60bc
	mov	r3, #0x80
	orr	r2, r3
.L60bc:
	ldrb	r3, [r5, #9]
	mov	r0, r2
	cmp	r3, #0
	beq	.L60ca
	mov	r3, #0x80
	lsl	r3, #5
	orr	r0, r3
.L60ca:
	lsl	r3, r7, #26
	lsr	r3, #30
	cmp	r3, #1
	bls	.L60d8
	mov	r3, #0x80
	lsl	r3, #6
	orr	r0, r3
.L60d8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8006088
