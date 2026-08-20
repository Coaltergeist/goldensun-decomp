	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008aa0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r3, r5
	add	r3, #0x5b
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lm935_b3a
	ldr	r3, =.Lm935_222c
	ldr	r2, [r3]
	add	r2, #1
	str	r2, [r3]
	mov	r3, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.Lm935_ade
	ldr	r5, =.Lm935_2230
	bl	__Random
	mov	r1, #6
	bl	_umodsi3_RAM
	str	r0, [r5]
	add	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
.Lm935_ade:
	mov	r7, #0xff
	mov	r6, #0
	lsl	r7, #16
.Lm935_ae4:
	mov	r0, r6
	add	r0, #0xa
	bl	__MapActor_GetActor
	mov	r2, #0x80
	lsl	r2, #2
	mov	r5, r0
	add	r0, r6, r2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm935_b1a
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lm935_b0a
	ldr	r3, [r5, #0xc]
	ldr	r2, =0x20ffff
	cmp	r3, r2
	bgt	.Lm935_b34
.Lm935_b0a:
	mov	r3, #0
	str	r7, [r5, #0xc]
	str	r3, [r5, #0x48]
	str	r3, [r5, #0x28]
	mov	r0, #0x6a
	bl	__PlaySound
	b	.Lm935_b34
.Lm935_b1a:
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	bgt	.Lm935_b28
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.Lm935_b34
.Lm935_b28:
	str	r0, [r5, #0x48]
	str	r0, [r5, #0x28]
	str	r7, [r5, #0xc]
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_b34:
	add	r6, #1
	cmp	r6, #5
	ble	.Lm935_ae4
.Lm935_b3a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_2008aa0

