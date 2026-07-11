	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_897_200a84c
	push	{r5, r6, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L288a
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
	b	.L28ce
.L288a:
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
.L28ce:
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a84c

.thumb_func_start OvlFunc_897_200a8dc
	push	{r5, lr}
	sub	sp, #8
	cmp	r0, #0
	beq	.L290a
	mov	r5, #2
	mov	r0, #9
	mov	r1, #0x2d
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x2e
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	b	.L292e
.L290a:
	mov	r5, #2
	mov	r0, #0x59
	mov	r1, #2
	mov	r2, #0x41
	mov	r3, #5
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x66
	mov	r1, #0x20
	mov	r2, #0x43
	mov	r3, #6
	str	r5, [sp, #4]
	bl	__CopyMapTiles
.L292e:
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_897_200a8dc

