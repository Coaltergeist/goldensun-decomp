	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009cf8
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.L1d0a
	ldr	r2, =0xfffff
	add	r3, r2
.L1d0a:
	asr	r7, r3, #20
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1d16
	ldr	r2, =0xfffff
	add	r3, r2
.L1d16:
	ldr	r0, [r0, #0x10]
	asr	r6, r3, #20
	cmp	r0, #0
	bge	.L1d22
	ldr	r3, =0xfffff
	add	r0, r3
.L1d22:
	asr	r5, r0, #20
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1d40
	cmp	r7, #2
	bgt	.L1d40
	bl	OvlFunc_948_2009ca0
	mov	r0, #0xc0
	lsl	r0, #2
	bl	__SetFlag
.L1d40:
	cmp	r5, #0x37
	bne	.L1d56
	cmp	r6, #0x2a
	bne	.L1d4c
	bl	OvlFunc_948_2009ccc
.L1d4c:
	cmp	r6, #0x26
	bne	.L1d5a
	bl	OvlFunc_948_2009ca0
	b	.L1d5a
.L1d56:
	bl	OvlFunc_948_2009c6c
.L1d5a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009cf8
