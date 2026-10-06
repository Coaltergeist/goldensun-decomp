	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b5c0  @ 0x0801b5c0
	push	{r5, r6, r7, lr}
	mov	r1, #0xe7
	mov	r6, r0
	lsl	r1, #2
	add	r7, r6, r1
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1b650
	ldr	r2, =0x39e
	add	r5, r6, r2
	ldrh	r1, [r5]
	bl	Func_801b9a8
	ldr	r3, =0x3a2
	add	r2, r6, r3
	mov	r3, #0x21
	strh	r3, [r2]
	mov	r0, #1
	bl	WaitFrames
	ldrh	r5, [r5]
	cmp	r5, #1
	bne	.L1b614
	ldrh	r3, [r7]
	cmp	r3, #0
	beq	.L1b614
	mov	r3, #8
	strh	r3, [r6, #8]
	ldrh	r3, [r7]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r7]
	mov	r0, r6
	mov	r1, #0
	bl	Func_801ba68
	ldrh	r3, [r7]
	cmp	r3, #0
	bne	.L1b610
	strh	r3, [r6, #0xa]
.L1b610:
	strh	r5, [r6, #0x3e]
	b	.L1b620
.L1b614:
	ldr	r3, =0x39e
	add	r2, r6, r3
	ldrh	r3, [r2]
	ldr	r1, =0xffff
	add	r3, r1
	strh	r3, [r2]
.L1b620:
	ldr	r3, =0x3a2
	ldr	r1, =0x39e
	add	r2, r6, r3
	mov	r3, #1
	strh	r3, [r2]
	add	r3, r6, r1
	ldrh	r1, [r3]
	mov	r0, r6
	bl	Func_801b9ec
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r3, [r3]
	mov	r1, #0
	ldrh	r0, [r3, #0xa]
	bl	Func_801b010
	mov	r0, #1
	bl	WaitFrames
.L1b650:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b5c0

