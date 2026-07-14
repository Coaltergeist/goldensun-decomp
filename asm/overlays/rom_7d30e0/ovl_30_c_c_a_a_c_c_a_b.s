	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009ac8
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0xc]
	cmp	r3, #0
	bge	.L1ade
	ldr	r1, =0xfffff
	add	r3, r1
.L1ade:
	asr	r5, r3, #20
	cmp	r2, #0
	bne	.L1af0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.L1af0:
	bl	OvlFunc_948_20099e8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	mov	r6, #0
	strb	r3, [r0]
	cmp	r5, #0x28
	bne	.L1b0c
	bl	OvlFunc_948_2009a9c
	b	.L1b54
.L1b0c:
	cmp	r5, #0x2a
	bne	.L1b16
	bl	OvlFunc_948_2009a48
	b	.L1b54
.L1b16:
	cmp	r5, #0x29
	bne	.L1b20
	bl	OvlFunc_948_2009a70
	b	.L1b54
.L1b20:
	cmp	r5, #0x27
	beq	.L1b2c
	cmp	r5, #0x26
	beq	.L1b2c
	cmp	r5, #0x25
	bne	.L1b54
.L1b2c:
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x3d
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.L1b54:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009ac8
