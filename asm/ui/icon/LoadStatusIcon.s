	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadStatusIcon  @ 0x0801a2ec
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	mov	r8, r2
	bl	galloc_iwram
	mov	r5, r0
	mov	r0, r6
	bl	DecompressStatusIcon
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	mov	r1, #0x80
	mov	r2, r5
	mov	r0, r8
	bl	UploadSpriteGFX
	mov	r0, #0x11
	bl	gfree
	mov	r0, #1
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end LoadStatusIcon

