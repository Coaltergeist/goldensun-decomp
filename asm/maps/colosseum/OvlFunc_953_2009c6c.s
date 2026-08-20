	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_953_2009c6c
	push	{lr}
	mov	r0, #0x95
	lsl	r0, #4
	sub	sp, #8
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_1ca4
	mov	r3, #2
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x40
	mov	r1, #0
	mov	r2, #0x30
	mov	r3, #5
	bl	__CopyMapTiles
	mov	r3, #0x10
	mov	r2, #8
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0xe
	mov	r1, #8
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm953_1cca
.Lm953_1ca4:
	mov	r0, #0x10
	mov	r1, #2
	bl	__Func_8092950
	ldr	r0, =0x962
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm953_1cca
	mov	r3, #0xe
	mov	r2, #0xb
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x16
	mov	r2, #1
	mov	r3, #2
	bl	__Func_8010704
.Lm953_1cca:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_953_2009c6c

