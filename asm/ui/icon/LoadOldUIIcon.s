	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadOldUIIcon  @ 0x08019ee4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r1, #0xc1
	sub	sp, #4
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	str	r3, [sp]
	mov	r11, r2
	bl	galloc_iwram
	ldr	r3, =gIconBoxes
	lsl	r5, #2
	ldr	r2, =0x604
	ldr	r3, [r3, r5]
	mov	r7, r0
	add	r2, r7
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #3
	add	r3, r7
	mov	r10, r3
	ldr	r3, =0x602
	add	r3, r7
	mov	r5, #2
	mov	r8, r3
	mov	r9, r2
	mov	r2, r10
	strh	r5, [r2]
	mov	r2, r8
	strh	r5, [r2]
	mov	r1, #0
	bl	LoadIcon
	ldr	r3, =gOldUIIcons
	lsl	r6, #2
	ldr	r3, [r3, r6]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, r10
	mov	r2, r8
	strh	r5, [r3]
	mov	r0, r7
	strh	r5, [r2]
	mov	r1, #1
	bl	LoadIcon
	ldr	r3, [sp, #0x24]
	cmp	r3, #0
	bne	.L19f5c
	bl	AllocSpriteSlot
	mov	r2, r11
	str	r0, [r2]
.L19f5c:
	mov	r3, r11
	ldr	r0, [r3]
	mov	r3, #0x80
	lsl	r3, #3
	add	r2, r7, r3
	mov	r1, #0x80
	bl	UploadSpriteGFX
	ldr	r2, [sp]
	str	r0, [r2]
	mov	r0, #0x11
	bl	gfree
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadOldUIIcon

