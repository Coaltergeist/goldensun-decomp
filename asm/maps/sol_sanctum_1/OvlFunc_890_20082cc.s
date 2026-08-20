	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_20082cc
	push	{lr}
	ldr	r0, =0x826
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_2ee
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1c
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_2ee:
	ldr	r0, =0x827
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_30c
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1c
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_30c:
	ldr	r0, =0x828
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_32a
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1d
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_32a:
	ldr	r0, =0x829
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_348
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1d
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_348:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_20082cc

