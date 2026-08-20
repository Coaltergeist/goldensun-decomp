	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_20098a4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x44
	str	r2, [r3]
	ldr	r0, =0x915
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm936_1904
	mov	r3, #3
	str	r3, [sp, #4]
	mov	r5, #2
	mov	r0, #0x3a
	mov	r1, #5
	mov	r2, #0x3a
	mov	r3, #8
	str	r5, [sp]
	bl	__CopyMapTiles
	mov	r3, #8
	mov	r2, #0xa
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #8
	mov	r1, #0xb
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	str	r3, [sp, #4]
	mov	r0, #8
	mov	r1, #0xc
	mov	r2, #8
	mov	r3, #0xb
	str	r5, [sp]
	bl	__CopyMapTiles
	bl	__Func_800fe9c
	mov	r0, #1
	bl	__WaitFrames
.Lm936_1904:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #3
	bgt	.Lm936_191a
	mov	r0, #0xaa
	bl	__Func_8091ff0
.Lm936_191a:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20098a4

