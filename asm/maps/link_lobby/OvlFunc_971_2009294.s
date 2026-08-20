	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2009294
	push	{r5, r6, r7, lr}
	ldr	r3, =0x3e7
	mov	r5, r0
	sub	sp, #8
	cmp	r5, r3
	ble	.L12a2
	mov	r5, r3
.L12a2:
	mov	r6, #0
	mov	r7, #1
.L12a6:
	mov	r0, r5
	mov	r1, #0xa
	bl	_modsi3_RAM
	mov	r2, #0x10
	mov	r1, r0
	sub	r2, r6
	mov	r0, #0x1b
	mov	r3, #8
	str	r7, [sp]
	str	r7, [sp, #4]
	bl	__CopyMapTiles
	mov	r0, r5
	mov	r1, #0xa
	bl	_divsi3_RAM
	add	r6, #1
	mov	r5, r0
	cmp	r6, #2
	ble	.L12a6
	bl	__Func_800fe9c
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009294

