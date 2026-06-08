	.include "macros.inc"

.thumb_func_start Func_80930bc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r8, r3
	ldr	r3, =0xfff
	mov	r5, r0
	and	r5, r3
	mov	r0, r5
	bl	GetFieldActor
	mov	r3, #0xfa
	lsl	r3, #1
	add	r3, r8
	str	r5, [r3]
	mov	r3, #0xe6
	lsl	r3, #1
	add	r3, r8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9313e
	mov	r2, r7
	mov	r1, r6
	cmp	r2, #0x77
	ble	.L930f4
	add	r2, #0x20
	b	.L930f6
.L930f4:
	sub	r2, #0x20
.L930f6:
	cmp	r1, #8
	bge	.L930fc
	mov	r1, #8
.L930fc:
	mov	r3, #0x9c
	lsl	r3, #1
	cmp	r1, r3
	ble	.L93106
	mov	r1, r3
.L93106:
	cmp	r2, #0x14
	bge	.L9310c
	mov	r2, #0x14
.L9310c:
	cmp	r2, #0xdc
	ble	.L93112
	mov	r2, #0xdc
.L93112:
	mov	r3, #0xec
	lsl	r3, #1
	add	r3, r8
	mov	r4, #0
	ldrsh	r0, [r3, r4]
	mov	r3, #1
	bl	_Func_8017658
	mov	r3, #0xfc
	lsl	r3, #1
	mov	r5, r0
	add	r3, r8
	str	r5, [r3]
	b	.L93134
.L9312e:
	mov	r0, #1
	bl	WaitFrames
.L93134:
	mov	r0, r5
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L9312e
.L9313e:
	mov	r2, #0xec
	lsl	r2, #1
	add	r2, r8
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80930bc

