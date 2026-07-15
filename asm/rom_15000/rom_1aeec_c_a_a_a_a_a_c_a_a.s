	.include "macros.inc"

.thumb_func_start Func_801c188  @ 0x0801c188
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e98
	ldr	r5, [r3]
	mov	r0, r5
	bl	Func_801b36c
	mov	r6, r0
	ldrh	r3, [r6, #0xa]
	cmp	r3, #1
	beq	.L1c1a4
	cmp	r3, #6
	bne	.L1c206
.L1c1a4:
	mov	r1, #0xc1
	lsl	r1, #3
	mov	r0, #0x11
	bl	galloc_iwram
	mov	r3, #0xc3
	lsl	r3, #2
	add	r5, r3
	ldrh	r3, [r6, #8]
	mov	r7, r0
	ldr	r0, =_FILE_f1
	mov	r8, r3
	bl	GetFile
	ldr	r3, =0x604
	add	r2, r7, r3
	ldrh	r3, [r6, #8]
	lsl	r3, #1
	ldrh	r3, [r3, r0]
	add	r0, r3
	str	r0, [r2]
	mov	r1, r7
	bl	DecompressLZ1
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.L1c1e0
	bl	AllocSpriteSlot
	strh	r0, [r5, #0xc]
.L1c1e0:
	mov	r1, #0x80
	ldrh	r0, [r5, #0xc]
	lsl	r1, #3
	mov	r2, r7
	bl	UploadSpriteGFX
	mov	r3, #1
	strh	r3, [r5, #0xa]
	mov	r3, r8
	strh	r3, [r5, #8]
	mov	r3, #0x28
	strh	r3, [r5, #0x22]
	strh	r3, [r5, #0x24]
	mov	r3, #0xf0
	strh	r0, [r5, #0xe]
	strh	r3, [r5, #0x26]
	mov	r0, #0x11
	bl	gfree
.L1c206:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_801c188

	.section .text.after, "ax", %progbits
