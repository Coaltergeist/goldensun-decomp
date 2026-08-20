	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200a84c
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.Lm897_288a
	mov	r5, #1
	mov	r0, #8
	mov	r1, #0x2f
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r6, #2
	mov	r0, #7
	mov	r1, #0x30
	mov	r2, #0x3f
	mov	r3, #8
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #7
	mov	r1, #0x31
	mov	r2, #0x3f
	mov	r3, #9
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.Lm897_28ce
.Lm897_288a:
	mov	r5, #1
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x40
	mov	r3, #7
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #2
	str	r3, [sp]
	mov	r0, #0x38
	mov	r1, #0
	mov	r2, #0x3f
	mov	r3, #9
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x3a
	mov	r1, #0x19
	mov	r2, #0x40
	mov	r3, #8
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.Lm897_28ce:
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a84c

