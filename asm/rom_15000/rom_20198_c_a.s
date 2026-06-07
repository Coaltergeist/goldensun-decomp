	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80209d0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r5, r0
	ldr	r3, =iwram_3001e8c
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	mov	r8, r1
	bl	Func_8004970
	mov	r10, r0
	mov	r1, r10
	mov	r0, r8
	bl	Func_8005340
	ldrh	r3, [r5, #0xe]
	ldrh	r2, [r5, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r1, =0x6002000
	mov	r2, #0
	ldrh	r4, [r5, #0xa]
	lsl	r3, #1
	mov	r12, r2
	mov	r7, r10
	add	r0, r3, r1
	add	r6, r3
	cmp	r12, r4
	bge	.L20a44
	mov	r3, #0x20
	ldrh	r2, [r5, #8]
	mov	r14, r3
.L20a14:
	mov	r1, #0
	cmp	r1, r2
	bge	.L20a32
.L20a1a:
	mov	r2, #0
	ldrsh	r3, [r7, r2]
	strh	r3, [r0]
	strh	r3, [r6]
	ldrh	r2, [r5, #8]
	add	r1, #1
	add	r7, #2
	add	r0, #2
	add	r6, #2
	cmp	r1, r2
	blt	.L20a1a
	ldrh	r4, [r5, #0xa]
.L20a32:
	mov	r1, r14
	sub	r3, r1, r2
	lsl	r3, #1
	add	r0, r3
	add	r6, r3
	mov	r3, #1
	add	r12, r3
	cmp	r12, r4
	blt	.L20a14
.L20a44:
	mov	r0, r10
	bl	Func_8002df0
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80209d0

.thumb_func_start Func_8020a60
	push	{r5, r6, r7, lr}
	mov	r6, r3
	ldr	r3, =iwram_3001e8c
	ldr	r3, [r3]
	mov	r12, r3
	ldrh	r3, [r0, #0xc]
	add	r3, r1, r3
	add	r1, r3, #1
	ldrh	r3, [r0, #0xe]
	ldr	r7, [sp, #0x14]
	add	r3, r2, r3
	ldr	r5, [sp, #0x10]
	add	r2, r3, #1
	lsl	r7, #12
	cmp	r1, #0
	bge	.L20a84
	add	r6, r1
	mov	r1, #0
.L20a84:
	add	r3, r1, r6
	cmp	r3, #0x1d
	ble	.L20a8e
	mov	r3, #0x1e
	sub	r6, r3, r1
.L20a8e:
	cmp	r2, #0
	bge	.L20a96
	add	r5, r2
	mov	r2, #0
.L20a96:
	add	r3, r2, r5
	cmp	r3, #0x1d
	ble	.L20aa0
	mov	r3, #0x14
	sub	r5, r3, r2
.L20aa0:
	cmp	r6, #0
	ble	.L20ada
	cmp	r5, #0
	ble	.L20ada
	lsl	r2, #6
	lsl	r3, r1, #1
	add	r1, r2, r3
.L20aae:
	mov	r3, r12
	mov	r0, r6
	add	r4, r1, r3
	cmp	r0, #0
	beq	.L20aca
	ldr	r2, =0xffffefff
.L20aba:
	ldrh	r3, [r4]
	and	r3, r2
	orr	r3, r7
	sub	r0, #1
	strh	r3, [r4]
	add	r4, #2
	cmp	r0, #0
	bne	.L20aba
.L20aca:
	sub	r5, #1
	add	r1, #0x40
	cmp	r5, #0
	bne	.L20aae
	ldr	r2, =0xea3
	mov	r3, #1
	add	r2, r12
	strb	r3, [r2]
.L20ada:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8020a60

