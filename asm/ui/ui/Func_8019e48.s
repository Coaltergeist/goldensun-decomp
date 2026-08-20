	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8019e48  @ 0x08019e48
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e8c
	mov	r2, #0xa0
	ldr	r6, [r3]
	lsl	r2, #3
	add	r5, r6, r2
	bl	GetPortrait
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.L19ea4
	ldr	r2, =0x12ee
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L19e78
	mov	r3, #1
	b	.L19e84
.L19e6e:
	mov	r0, r5
	mov	r1, #2
	bl	CloseUIBox
	b	.L19ea4
.L19e78:
	ldr	r2, =0x12ec
	add	r3, r6, r2
	ldrh	r3, [r3]
	cmp	r3, r0
	bne	.L19ea4
	mov	r3, #0
.L19e84:
	ldr	r2, =0x12f0
	lsl	r3, #1
	add	r3, r2
	ldrh	r0, [r6, r3]
	mov	r1, #0
.L19e8e:
	ldr	r2, [r5]
	ldrb	r3, [r2, #4]
	cmp	r3, #2
	bne	.L19e9c
	ldrb	r3, [r2, #0xe]
	cmp	r3, r0
	beq	.L19e6e
.L19e9c:
	add	r1, #1
	add	r5, #0x24
	cmp	r1, #8
	bne	.L19e8e
.L19ea4:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8019e48
