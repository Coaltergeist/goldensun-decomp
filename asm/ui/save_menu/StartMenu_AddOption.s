	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start StartMenu_AddOption  @ 0x080216e8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r3, #0x80
	lsl	r3, #3
	mov	r10, r3
	mov	r6, r0
	mov	r7, r1
	mov	r0, #0xe
	mov	r1, r10
	mov	r8, r2
	bl	galloc_ewram
	mov	r5, r0
	ldr	r0, =_FILE_f1
	bl	GetFile
	mov	r2, r0
	cmp	r7, #0x5f
	bgt	.L2173e
	lsl	r3, r6, #1
	ldrh	r0, [r3, r2]
	mov	r1, r5
	add	r0, r2, r0
	bl	DecompressLZ1
	mov	r3, r8
	cmp	r3, #0
	beq	.L2172e
	mov	r1, #0xc0
	lsl	r1, #2
	mov	r0, r5
	bl	_Func_800f9cc
.L2172e:
	mov	r0, r7
	mov	r1, r10
	mov	r2, r5
	bl	UploadSpriteGFX
	mov	r0, #0xe
	bl	gfree
.L2173e:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end StartMenu_AddOption
