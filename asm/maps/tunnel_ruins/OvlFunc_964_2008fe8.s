	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_964_2008fe8
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffd00000
	ldr	r3, [r0, #0xc]
	cmp	r3, r2
	ble	.Lm964_1020
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #20
	cmp	r3, #0xa
	bne	.Lm964_1020
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	ldr	r3, =0xffe00000
	mov	r0, #8
	str	r3, [r5, #0xc]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	b	.Lm964_1026
.Lm964_1020:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #0xc]
.Lm964_1026:
	str	r3, [r5, #0x10]
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_964_2008fe8

