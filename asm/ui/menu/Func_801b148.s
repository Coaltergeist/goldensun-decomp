	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801b148  @ 0x0801b148
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e98
	ldr	r6, [r3]
	bl	Func_801a97c
	mov	r2, #0xd4
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r0, [r3]
	mov	r1, #2
	bl	CloseUIBox
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b188
	mov	r7, #0
.L1b174:
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1b182
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	strh	r7, [r5, #0xa]
.L1b182:
	ldr	r5, [r5, #4]
	cmp	r5, #0
	bne	.L1b174
.L1b188:
	mov	r2, #0xd3
	lsl	r2, #2
	add	r3, r6, r2
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L1b1aa
	mov	r7, #0
.L1b196:
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	beq	.L1b1a4
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	strh	r7, [r5, #0xa]
.L1b1a4:
	ldr	r5, [r5, #4]
	cmp	r5, #0
	bne	.L1b196
.L1b1aa:
	bl	Func_801c21c
	mov	r2, #0x12
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L1b1ce
	ldrh	r0, [r6, #0xc]
	bl	Func_8003f3c
	mov	r2, #0x12
	ldrsh	r3, [r6, r2]
	cmp	r3, #0
	beq	.L1b1ce
	mov	r3, r6
	add	r3, #0x40
	ldrh	r0, [r3]
	bl	Func_8003f3c
.L1b1ce:
	mov	r2, #0xb9
	lsl	r2, #2
	add	r3, r6, r2
	ldrh	r0, [r3]
	bl	Func_8003f3c
	mov	r0, #0x12
	bl	gfree
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801b148

