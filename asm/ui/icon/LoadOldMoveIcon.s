	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadOldMoveIcon  @ 0x08019f98
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r8
	push	{r5, r6}
	sub	sp, #4
	ldr	r5, [sp, #0x18]
	mov	r6, r1
	mov	r8, r2
	mov	r10, r3
	bl	_GetMoveInfo
	mov	r1, r6
	ldrb	r0, [r0, #4]
	mov	r2, r8
	mov	r3, r10
	str	r5, [sp]
	bl	LoadItemIconID
	add	sp, #4
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end LoadOldMoveIcon

