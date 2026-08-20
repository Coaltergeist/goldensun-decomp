	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadPortrait  @ 0x0801a4fc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0xc1
	mov	r5, r0
	lsl	r1, #3
	mov	r0, #0x11
	mov	r8, r3
	mov	r7, r2
	bl	galloc_iwram
	mov	r6, r0
	ldr	r0, =_FILE_f0
	bl	GetFile
	mov	r3, r5
	cmp	r5, #0x7f
	bls	.L1a522
	sub	r3, #0x70
.L1a522:
	lsl	r3, #1
	ldrh	r3, [r3, r0]
	ldr	r1, =0x604
	add	r5, r0, r3
	mov	r3, r5
	add	r2, r6, r1
	add	r3, #0x20
	str	r3, [r2]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r3, r6, r2
	sub	r1, #2
	mov	r2, #4
	strh	r2, [r3]
	add	r3, r6, r1
	strh	r2, [r3]
	mov	r0, r6
	mov	r1, #0
	bl	LoadIcon
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.L1a556
	bl	AllocSpriteSlot
	str	r0, [r7]
.L1a556:
	mov	r3, #0x80
	lsl	r3, #3
	mov	r1, #0x80
	add	r2, r6, r3
	ldr	r0, [r7]
	lsl	r1, #2
	bl	UploadSpriteGFX
	mov	r1, r8
	str	r0, [r1]
	mov	r0, #0x11
	bl	gfree
	ldr	r1, [sp, #0x14]
	ldr	r2, =0x5000200
	lsl	r1, #5
	add	r1, r2
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadPortrait

