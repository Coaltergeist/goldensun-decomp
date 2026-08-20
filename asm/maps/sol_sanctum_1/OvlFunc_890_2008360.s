	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_890_2008360
	push	{lr}
	ldr	r0, =0x80b
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_382
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1e
	mov	r2, #0x22
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_382:
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3a0
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1e
	mov	r2, #0x24
	mov	r3, #0xa
	bl	__CopyMapTiles
.Lm890_3a0:
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3be
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2d
	mov	r1, #0x1f
	mov	r2, #0x22
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_3be:
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm890_3dc
	mov	r3, #2
	mov	r2, #1
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2f
	mov	r1, #0x1f
	mov	r2, #0x24
	mov	r3, #0xb
	bl	__CopyMapTiles
.Lm890_3dc:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_890_2008360

