	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200c0f0
	push	{r5, r6, lr}
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r2, #6
	mov	r3, #3
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r9, r2
	mov	r10, r3
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__CopyMapTiles
	mov	r2, #0xa
	str	r2, [sp, #4]
	mov	r6, #0xe
	mov	r8, r2
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r5, #7
	mov	r0, #0x10
	mov	r1, #0x60
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r3, r9
	mov	r2, r10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #9
	mov	r1, #0x5f
	mov	r2, #0xb
	mov	r3, #0x49
	bl	__CopyMapTiles
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x5e
	mov	r2, #0x22
	mov	r3, #0x44
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r2, #8
	str	r2, [sp]
	mov	r8, r2
	mov	r0, #0x36
	mov	r1, #0x5e
	mov	r2, #0x40
	mov	r3, #0x44
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r5, #1
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x48
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, #0x48
	mov	r1, #0x4b
	mov	r2, #0x4a
	mov	r3, #0x4c
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__CopyMapTiles
	mov	r2, r9
	mov	r3, #0x4b
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #7
	mov	r1, #0x4b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r2, r8
	mov	r3, #0x47
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #3
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #0x48
	str	r3, [sp, #4]
	mov	r6, #9
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	bl	__Func_8010704
	mov	r5, #0x49
	mov	r0, #8
	mov	r1, #0x46
	mov	r2, #2
	mov	r3, #1
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, r8
	str	r3, [sp]
	mov	r0, #0xb
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, #0xc
	mov	r1, #0x42
	mov	r2, #1
	mov	r3, #4
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r2, r9
	mov	r3, #0x4a
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x19
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200c0f0

