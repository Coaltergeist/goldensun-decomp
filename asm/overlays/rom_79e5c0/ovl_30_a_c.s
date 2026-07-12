	.include "macros.inc"

.thumb_func_start OvlFunc_911_20080a0
	push	{r5, r6, lr}
	add	r0, #0x48
	mov	r2, #0
	mov	r6, #0x69
	mov	r5, #0x6e
	mov	r4, #2
	mov	r1, #1
.Lae:
	sub	r3, r2, #6
	strh	r6, [r0]
	cmp	r3, #1
	bhi	.Lb8
	strh	r5, [r0]
.Lb8:
	add	r2, #1
	strb	r4, [r0, #0x16]
	str	r1, [r0, #4]
	add	r0, #0x18
	cmp	r2, #8
	bls	.Lae
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_911_20080a0

.thumb_func_start OvlFunc_911_20080cc
	push	{lr}
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0x24]
	add	r3, r2
	str	r3, [r0, #8]
	ldr	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r0, #0x10]
	ldr	r3, =0xfffff5c3
	add	r2, r3
	str	r2, [r0, #0x2c]
	ldr	r3, [r0, #0x18]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r3, r2
	str	r3, [r0, #0x18]
	ldr	r3, [r0, #0x1c]
	add	r3, r2
	str	r3, [r0, #0x1c]
	mov	r2, r0
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L108
	bl	__DeleteActor
.L108:
	mov	r0, #1
	pop	{r1}
	bx	r1
.func_end OvlFunc_911_20080cc
