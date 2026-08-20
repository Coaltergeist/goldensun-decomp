	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801eadc  @ 0x0801eadc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r10, r1
	mov	r8, r2
	mov	r6, r3
	bl	Func_8015e8c
	mov	r5, r0
	cmp	r5, #0
	bne	.L1eb00
	mov	r0, r7
	bl	Func_8003f3c
	mov	r0, #0
	b	.L1eb50
.L1eb00:
	mov	r0, r8
	ldrh	r1, [r0, #0xc]
	ldrh	r3, [r0, #0xe]
	ldr	r2, [sp, #0x18]
	lsl	r3, #3
	lsl	r1, #3
	add	r2, r3
	add	r1, r6, r1
	ldr	r3, =0x1ff
	add	r1, #8
	and	r1, r3
	add	r2, #8
	mov	r3, #0xff
	and	r2, r3
	lsl	r3, r1, #16
	orr	r3, r2
	mov	r0, r10
	orr	r3, r0
	ldr	r0, =gSpriteSlots
	str	r3, [r5, #0x14]
	lsl	r3, r7, #2
	add	r3, r0
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [r5, #0x18]
	mov	r3, #0xff
	strb	r3, [r5, #0xf]
	mov	r3, #0
	str	r3, [r5]
	mov	r3, #1
	strh	r1, [r5, #6]
	strh	r2, [r5, #8]
	strb	r7, [r5, #0xe]
	strb	r3, [r5, #4]
	strb	r3, [r5, #5]
	mov	r0, r8
	mov	r1, r5
	bl	Func_8016584
	mov	r0, r5
.L1eb50:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_801eadc

