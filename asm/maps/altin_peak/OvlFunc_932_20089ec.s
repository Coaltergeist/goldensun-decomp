	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20089ec
	push	{lr}
	ldr	r0, =0x323
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm932_a2a
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #2
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
	ldr	r0, =0x323
	bl	__ClearFlag
	b	.Lm932_a58
.Lm932_a2a:
	mov	r3, #0x18
	mov	r2, #0x50
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #0
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #0x18
	mov	r3, #0xb
	bl	__CopyMapTiles
	ldr	r0, =0x323
	bl	__SetFlag
.Lm932_a58:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_20089ec

