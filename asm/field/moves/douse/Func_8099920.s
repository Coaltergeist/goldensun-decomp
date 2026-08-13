	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8099920  @ 0x08099920
	push	{r5, r6, r7, lr}
	mov	r6, r0
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x14]
	cmp	r2, r3
	bgt	.L9999a
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #2
	strh	r3, [r2]
	ldr	r1, =Data_9f0b0
	bl	_Actor_SetScript
	mov	r5, #0
	mov	r7, #0
	str	r5, [r6, #0x6c]
	b	.L99984
.L99942:
	mov	r3, #0x80
	lsl	r3, #8
	mov	r2, r5
	add	r2, #0x55
	str	r3, [r5, #0x1c]
	str	r3, [r5, #0x18]
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r5, #0x28]
	bl	Random
	ldr	r3, =0x13333
	add	r0, r3
	str	r0, [r5, #0x30]
	bl	Random
	mov	r1, #0x80
	mov	r2, r0
	lsl	r1, #14
	mov	r0, r5
	bl	Func_8096bec
	mov	r2, r5
	add	r2, #0x5e
	mov	r3, #6
	strh	r3, [r2]
	mov	r0, r5
	ldr	r1, =Data_9f0b0
	bl	_Actor_SetScript
	add	r7, #1
.L99984:
	cmp	r7, #2
	bgt	.L9999a
	ldr	r1, [r6, #8]
	ldr	r2, [r6, #0xc]
	ldr	r3, [r6, #0x10]
	mov	r0, #0xf0
	bl	CreateParticleActor
	mov	r5, r0
	cmp	r5, #0
	bne	.L99942
.L9999a:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8099920
