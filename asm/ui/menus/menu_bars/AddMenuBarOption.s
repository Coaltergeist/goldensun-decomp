	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AddMenuBarOption  @ 0x080287a8
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f38
	ldr	r3, [r3]
	mov	r8, r3
	mov	r2, r8
	add	r2, #0x8e
	mov	r1, #0
	ldrsh	r7, [r2, r1]
	mov	r10, r0
	ldrh	r3, [r2]
	cmp	r7, #5
	bgt	.L287f8
	add	r3, #1
	strh	r3, [r2]
	bl	AllocSpriteSlot
	mov	r1, r10
	mov	r6, r0
	lsl	r5, r7, #2
	bl	LoadUIIcon
	lsl	r3, r7, #1
	add	r5, r7
	add	r3, r7
	lsl	r5, #2
	lsl	r3, #3
	add	r5, r8
	add	r3, #0x20
	strh	r3, [r5, #0xc]
	mov	r3, #0x88
	strh	r3, [r5, #0xe]
	mov	r3, r7
	add	r3, #0x84
	mov	r1, r10
	mov	r2, r8
	strh	r6, [r5, #0x12]
	strb	r1, [r2, r3]
.L287f8:
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end AddMenuBarOption
