	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetPCStatGrowth  @ 0x08079008
	push	{r5, lr}
	mov	r5, r1
	bl	GetUnit
	ldr	r1, =0x129
	mov	r2, r0
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L79048
	mov	r0, #0
	cmp	r5, #0
	ble	.L7904c
	cmp	r5, #0x63
	bgt	.L79048
	mov	r3, #0x94
	lsl	r3, #1
	add	r0, r2, r3
	ldrb	r3, [r0]
	cmp	r3, #7
	bhi	.L79048
	mov	r2, r3
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r2, r3, #5
	add	r3, r2
	add	r3, r5
	ldr	r1, =.L7a830
	lsl	r3, #2
	sub	r3, #4
	ldr	r0, [r1, r3]
	b	.L7904c
.L79048:
	mov	r0, #1
	neg	r0, r0
.L7904c:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end GetPCStatGrowth

