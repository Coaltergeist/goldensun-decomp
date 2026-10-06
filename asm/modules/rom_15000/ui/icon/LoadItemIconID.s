	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadItemIconID  @ 0x08019fcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r1, #0
	mov	r10, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	mov	r8, r2
	mov	r9, r3
	bl	galloc_iwram
	mov	r5, r0
	bl	NumItemIcons
	cmp	r6, r0
	bcc	.L19ff8
	mov	r6, #0
.L19ff8:
	cmp	r7, #0
	beq	.L1a022
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =gIconBoxes
	mov	r1, #0xc0
	ldr	r3, [r3, #8]
	lsl	r1, #3
	str	r3, [r2]
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	LoadIcon
	mov	r2, #1
	mov	r10, r2
.L1a022:
	ldr	r3, =0x604
	ldr	r2, =gItemIcons
	add	r1, r5, r3
	lsl	r3, r6, #2
	ldr	r3, [r2, r3]
	str	r3, [r1]
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, r10
	bl	LoadIcon
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L1a054
	bl	AllocSpriteSlot
	mov	r3, r8
	str	r0, [r3]
.L1a054:
	mov	r3, #0x80
	mov	r1, r8
	lsl	r3, #3
	ldr	r0, [r1]
	add	r2, r5, r3
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, r9
	str	r0, [r1]
	mov	r0, #0x11
	bl	gfree
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadItemIconID

