	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_20089c0
	push	{r5, r6, r7, lr}
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x5b
	ldrb	r6, [r0]
	cmp	r6, #0
	bne	.Lm935_a82
	ldr	r1, =.Lm935_2224
	ldr	r3, [r1]
	add	r3, #1
	str	r3, [r1]
	cmp	r3, #0xbe
	ble	.Lm935_9de
	str	r6, [r1]
.Lm935_9de:
	ldr	r7, =.Lm935_2228
	ldr	r0, [r7]
	ldr	r2, =.Lm935_2214
	lsl	r3, r0, #2
	ldr	r2, [r2, r3]
	ldr	r3, [r1]
	cmp	r2, r3
	bne	.Lm935_a06
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, =0xa3d
	mov	r5, r0
	str	r3, [r5, #0x48]
	ldr	r3, [r7]
	add	r3, #1
	str	r3, [r7]
	cmp	r3, #3
	ble	.Lm935_a06
	str	r6, [r7]
.Lm935_a06:
	mov	r6, #0
	mov	r7, #0
.Lm935_a0a:
	mov	r0, r6
	add	r0, #0xb
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	cmp	r3, #0
	blt	.Lm935_a3c
	ldr	r3, [r5, #0xc]
	ldr	r2, =0xffff
	cmp	r3, r2
	bgt	.Lm935_a3c
	bl	OvlFunc_935_2008b8c
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r5, #0xc]
	mov	r3, r5
	add	r3, #0x5b
	str	r7, [r5, #0x48]
	str	r7, [r5, #0x28]
	mov	r0, #0x6a
	strb	r7, [r3]
	bl	__PlaySound
.Lm935_a3c:
	add	r6, #1
	cmp	r6, #3
	ble	.Lm935_a0a
	mov	r0, #0xa
	bl	OvlFunc_935_2008944
	cmp	r0, #0
	beq	.Lm935_a72
	mov	r0, #0xa
	mov	r1, #1
	bl	__MapActor_SetAnim
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm935_a6c
	ldr	r0, =0x207
	bl	__SetFlag
	mov	r0, #0xcc
	bl	__PlaySound
	b	.Lm935_a72
.Lm935_a6c:
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_a72:
	mov	r0, #9
	bl	OvlFunc_935_2008944
	cmp	r0, #0
	beq	.Lm935_a82
	mov	r0, #0x6a
	bl	__PlaySound
.Lm935_a82:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_935_20089c0

