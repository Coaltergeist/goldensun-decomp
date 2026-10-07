	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadUIIcon  @ 0x0802875c
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	mov	r3, #0x80
	lsl	r3, #3
	mov	r8, r3
	mov	r10, r0
	mov	r0, r8
	mov	r5, r1
	bl	alloc_iwram
	mov	r6, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	lsl	r5, #1
	ldrh	r3, [r5, r0]
	mov	r1, r6
	add	r0, r3
	bl	DecompressLZ1
	mov	r0, r10
	mov	r1, r8
	mov	r2, r6
	bl	UploadSpriteGFX
	mov	r0, r6
	bl	free
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end LoadUIIcon
