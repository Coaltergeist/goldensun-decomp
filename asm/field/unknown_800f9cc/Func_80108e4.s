	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80108e4  @ 0x080108e4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	mov	r10, r1
	mov	r8, r2
	mov	r1, #0x88
	ldr	r2, [r3]
	lsl	r1, #1
	add	r3, r2, r1
	ldr	r6, [r3]
	mov	r1, r10
	mov	r3, #1
	and	r1, r3
	mov	r10, r1
	lsl	r0, #1
	mov	r1, r8
	and	r1, r3
	mov	r9, r0
	mov	r8, r1
	mov	r3, r9
	add	r3, r8
	lsl	r3, #1
	add	r3, r10
	lsl	r3, #1
	add	r2, r3
	ldr	r1, [sp, #0x1c]
	mov	r3, #0xce
	lsl	r3, #2
	add	r2, r3
	cmp	r1, #0
	bne	.L10932
	ldrh	r3, [r2]
	mov	r0, #0
	cmp	r5, r3
	beq	.L109be
.L10932:
	mov	r1, #0x80
	strh	r5, [r2]
	lsl	r1, #3
	mov	r0, #0xe
	bl	galloc_iwram
	lsl	r3, r5, #2
	mov	r7, r0
	ldr	r0, [r3, r6]
	mov	r1, r7
	add	r0, r6, r0
	bl	DecompressLZ1
	mov	r3, r9
	add	r3, r8
	lsl	r3, #5
	add	r3, r10
	ldr	r2, =ewram_2020000
	lsl	r3, #6
	mov	r4, r7
	add	r5, r3, r2
	mov	r6, #0
.L1095e:
	ldr	r3, =REG_DMA3SAD
	mov	r0, r4
	mov	r1, r5
	ldr	r2, =0x84000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	add	r6, #1
	add	r4, #0x40
	add	r5, #0x80
	cmp	r6, #0xf
	bls	.L1095e
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L109b6
	mov	r3, r9
	add	r3, r8
	lsl	r3, #6
	add	r3, r10
	ldr	r2, =0x6004000
	lsl	r3, #5
	ldr	r5, =gBuffer
	add	r1, r3, r2
	mov	r4, r7
	mov	r6, #0
.L1098e:
	mov	r0, #0
.L10990:
	ldrh	r3, [r4]
	lsl	r3, #2
	ldrh	r2, [r3, r5]
	strh	r2, [r1]
	ldr	r2, =ewram_2010002
	add	r3, r2
	ldrh	r3, [r3]
	mov	r2, r1
	add	r2, #0x40
	add	r0, #1
	strh	r3, [r2]
	add	r1, #2
	add	r4, #4
	cmp	r0, #0xf
	bls	.L10990
	add	r6, #1
	add	r1, #0x60
	cmp	r6, #0xf
	bls	.L1098e
.L109b6:
	mov	r0, #0xe
	bl	gfree
	mov	r0, #1
.L109be:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80108e4
