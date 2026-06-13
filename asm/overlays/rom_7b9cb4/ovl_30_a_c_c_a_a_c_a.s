	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_2008a94
	push	{lr}
	ldr	r0, =0x325
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lad2
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xc
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x30
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
	ldr	r0, =0x325
	bl	__ClearFlag
	b	.Lb00
.Lad2:
	mov	r3, #0xb
	mov	r2, #0x49
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xa
	mov	r1, #0x48
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x31
	mov	r1, #0x20
	mov	r2, #0xb
	mov	r3, #4
	bl	__CopyMapTiles
	ldr	r0, =0x325
	bl	__SetFlag
.Lb00:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_2008a94

