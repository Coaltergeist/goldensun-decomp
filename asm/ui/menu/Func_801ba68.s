	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_801ba68  @ 0x0801ba68
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r7, r0
	mov	r10, r1
	cmp	r1, #0
	beq	.L1bb3e
	mov	r0, #0xe7
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0xdd
	add	r3, #4
	lsl	r2, r3, #1
	lsl	r1, #2
	add	r3, r2, r1
	ldrh	r3, [r7, r3]
	mov	r4, #0xd5
	lsl	r4, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r4
	ldrh	r6, [r7, r3]
	bl	Func_801a910
	mov	r5, r0
	cmp	r5, #0
	bne	.L1baa4
	b	.L1bc16
.L1baa4:
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_801bd98
	ldr	r0, =0x396
	add	r3, r7, r0
	ldrh	r2, [r3]
	mov	r3, r2
	add	r3, #0x50
	mov	r4, #0xe6
	strh	r3, [r5, #0x10]
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	add	r2, #0x40
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	ldr	r2, =0xfffe
	mov	r3, #0x20
	strh	r3, [r5, #0x24]
	strh	r3, [r5, #0x22]
	add	r3, #0xe0
	strh	r3, [r5, #0x26]
	strh	r2, [r5, #0x14]
	sub	r4, #0x50
	add	r3, r7, r4
	mov	r0, r5
	ldr	r5, [r3]
	ldr	r3, =0xffe0
	strh	r3, [r5, #0x24]
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r1, #0
	strh	r1, [r5, #0x26]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bb08
.L1baf8:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	sub	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1baf8
.L1bb08:
	mov	r3, #0
	str	r0, [r5, #4]
	str	r3, [r0, #4]
	str	r5, [r0]
	mov	r0, #0xd2
	lsl	r0, #2
	add	r3, r7, r0
	ldr	r5, [r3]
.L1bb18:
	mov	r0, #1
	bl	WaitFrames
	mov	r1, #0x22
	ldrsh	r6, [r5, r1]
	cmp	r6, #0
	bne	.L1bb18
	mov	r2, #0xd2
	lsl	r2, #2
	add	r3, r7, r2
	ldr	r2, [r5, #4]
	str	r2, [r3]
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	strh	r6, [r5, #0xa]
	ldr	r5, [r5, #4]
	str	r6, [r5]
	b	.L1bc16
.L1bb3e:
	mov	r4, #0xe7
	lsl	r4, #2
	add	r3, r7, r4
	ldrh	r3, [r3]
	mov	r0, #0xdd
	lsl	r2, r3, #1
	lsl	r0, #2
	add	r3, r2, r0
	ldrh	r3, [r7, r3]
	mov	r1, #0xd5
	lsl	r1, #2
	mov	r8, r3
	mov	r0, #0
	add	r3, r2, r1
	ldrh	r6, [r7, r3]
	bl	Func_801a910
	mov	r5, r0
	cmp	r5, #0
	beq	.L1bc16
	mov	r2, r5
	mov	r0, r6
	mov	r1, r8
	mov	r3, #0
	bl	Func_801bd98
	ldr	r2, =0x396
	add	r3, r7, r2
	ldrh	r2, [r3]
	ldr	r4, =0xfff0
	mov	r0, #0xe6
	add	r3, r2, r4
	strh	r3, [r5, #0x10]
	lsl	r0, #2
	add	r3, r7, r0
	ldrh	r3, [r3]
	mov	r1, #0x80
	strh	r3, [r5, #0x12]
	strh	r3, [r5, #0x1a]
	mov	r3, #2
	strh	r3, [r5, #0x14]
	lsl	r1, #9
	mov	r3, #0x20
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	add	r2, r1
	add	r3, #0xe0
	mov	r4, #0xd2
	strh	r2, [r5, #0x18]
	strh	r3, [r5, #0x26]
	lsl	r4, #2
	add	r2, r7, r4
	mov	r3, r5
	ldr	r5, [r2]
	mov	r0, r10
	str	r3, [r5]
	str	r5, [r3, #4]
	str	r0, [r3]
	str	r3, [r2]
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	mov	r2, #2
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	beq	.L1bbd6
.L1bbc6:
	mov	r5, r3
	ldrh	r3, [r5, #0x10]
	add	r3, #0x10
	strh	r3, [r5, #0x18]
	ldr	r3, [r5, #4]
	strh	r2, [r5, #0x14]
	cmp	r3, #0
	bne	.L1bbc6
.L1bbd6:
	mov	r3, #0
	strh	r3, [r5, #0x26]
	ldr	r3, =0xffe0
	mov	r1, #0xd2
	strh	r3, [r5, #0x24]
	lsl	r1, #2
	add	r3, r7, r1
	mov	r6, #0x80
	ldr	r5, [r3]
	lsl	r6, #1
.L1bbea:
	mov	r0, #1
	bl	WaitFrames
	mov	r2, #0x22
	ldrsh	r3, [r5, r2]
	cmp	r3, r6
	bne	.L1bbea
	ldr	r2, [r5, #4]
	cmp	r2, #0
	beq	.L1bc08
.L1bbfe:
	mov	r5, r2
	ldr	r3, [r5, #4]
	mov	r2, r3
	cmp	r3, #0
	bne	.L1bbfe
.L1bc08:
	ldrh	r0, [r5, #0xc]
	bl	Func_8003f3c
	ldr	r3, [r5]
	mov	r2, #0
	strh	r2, [r5, #0xa]
	str	r2, [r3, #4]
.L1bc16:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801ba68

