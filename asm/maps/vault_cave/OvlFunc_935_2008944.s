	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_935_2008944
	push	{r5, r6, r7, lr}
	bl	__MapActor_GetActor
	mov	r5, #0
	mov	r6, r0
.Lm935_94e:
	mov	r0, r5
	add	r0, #0xb
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0xc]
	ldr	r2, =0xffffe
	sub	r3, #1
	cmp	r3, r2
	bhi	.Lm935_9a8
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm935_96a
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_96a:
	asr	r4, r3, #20
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm935_976
	ldr	r2, =0xfffff
	add	r3, r2
.Lm935_976:
	asr	r1, r3, #20
	ldr	r3, [r6, #0x10]
	cmp	r3, #0
	bge	.Lm935_982
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_982:
	asr	r2, r3, #20
	ldr	r3, [r6, #8]
	cmp	r3, #0
	bge	.Lm935_98e
	ldr	r7, =0xfffff
	add	r3, r7
.Lm935_98e:
	asr	r3, #20
	sub	r2, r4
	cmp	r3, r1
	bne	.Lm935_9a8
	cmp	r2, #0
	bne	.Lm935_9a8
	mov	r3, #0xff
	lsl	r3, #16
	str	r3, [r0, #0xc]
	str	r2, [r0, #0x48]
	str	r2, [r0, #0x28]
	mov	r0, #1
	b	.Lm935_9b0
.Lm935_9a8:
	add	r5, #1
	cmp	r5, #3
	ble	.Lm935_94e
	mov	r0, #0
.Lm935_9b0:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_935_2008944

