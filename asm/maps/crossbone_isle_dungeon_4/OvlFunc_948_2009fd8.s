	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009fd8
	push	{lr}
	ldr	r2, =.Lm948_2f80
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x10
	ble	.Lm948_1fea
	mov	r3, #0
	str	r3, [r2]
.Lm948_1fea:
	ldr	r3, [r2]
	sub	r3, #2
	cmp	r3, #0xa
	bhi	.Lm948_20a8
	ldr	r2, =.Lm948_1ffc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm948_1ffc:
	.word	.Lm948_20a0
	.word	.Lm948_20a8
	.word	.Lm948_2096
	.word	.Lm948_20a8
	.word	.Lm948_2092
	.word	.Lm948_20a8
	.word	.Lm948_208e
	.word	.Lm948_20a8
	.word	.Lm948_208a
	.word	.Lm948_20a8
	.word	.Lm948_2028
.Lm948_2028:
	ldr	r0, =0xee7
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2040
	mov	r1, #0xe8
	mov	r2, #0xda
	mov	r0, #8
	lsl	r1, #16
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2040:
	ldr	r0, =0xee8
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2058
	mov	r1, #0x94
	mov	r2, #0xce
	mov	r0, #9
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2058:
	ldr	r0, =0xee9
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_2070
	mov	r1, #0xa4
	mov	r2, #0xbe
	mov	r0, #0xa
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
.Lm948_2070:
	ldr	r0, =0xeea
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm948_20a8
	mov	r1, #0xb4
	mov	r2, #0xda
	mov	r0, #0xb
	lsl	r1, #17
	lsl	r2, #18
	bl	__MapActor_SetPos
	b	.Lm948_20a8
.Lm948_208a:
	mov	r0, #8
	b	.Lm948_2098
.Lm948_208e:
	mov	r0, #9
	b	.Lm948_2098
.Lm948_2092:
	mov	r0, #0xa
	b	.Lm948_2098
.Lm948_2096:
	mov	r0, #0xb
.Lm948_2098:
	mov	r1, #0
	bl	OvlFunc_948_200a0c4
	b	.Lm948_20a8
.Lm948_20a0:
	mov	r0, #0xc
	mov	r1, #1
	bl	OvlFunc_948_200a0c4
.Lm948_20a8:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009fd8

