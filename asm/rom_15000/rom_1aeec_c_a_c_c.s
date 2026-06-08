	.include "macros.inc"

.thumb_func_start Func_801c930  @ 0x0801c930
	push	{lr}
	ldr	r1, =0x1004
	mov	r0, #0x13
	bl	galloc_ewram
	mov	r2, r0
	mov	r3, #0
	add	r2, #0x46
	strh	r3, [r2]
	ldr	r2, =0x352
	add	r0, r2
	strh	r3, [r0]
	pop	{r0}
	bx	r0
.func_end Func_801c930

.thumb_func_start Func_801c954  @ 0x0801c954
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e9c
	ldr	r2, =0xff4
	ldr	r5, [r3]
	add	r3, r5, r2
	ldr	r0, [r3]
	mov	r1, #0
	bl	CloseUIBox
	ldr	r3, =0xff4
	add	r6, r5, r3
	b	.L1c972
.L1c96c:
	mov	r0, #1
	bl	WaitFrames
.L1c972:
	ldr	r0, [r6]
	bl	Func_8017394
	cmp	r0, #0
	beq	.L1c96c
	mov	r3, r5
	add	r3, #0x46
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c990
	mov	r3, r5
	add	r3, #0x48
	ldrh	r0, [r3]
	bl	Func_8003f3c
.L1c990:
	ldr	r2, =0x352
	add	r3, r5, r2
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1c9a4
	add	r2, #2
	add	r3, r5, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
.L1c9a4:
	mov	r0, #0x13
	bl	gfree
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_801c954

