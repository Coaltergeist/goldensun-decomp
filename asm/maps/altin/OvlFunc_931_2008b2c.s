	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008b2c
	push	{lr}
	mov	r0, #0x90
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_b5c
	mov	r1, #0xca
	lsl	r1, #18
	ldr	r2, =0x2d70000
	mov	r0, #8
	bl	__MapActor_SetPos
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #6
	strh	r3, [r0, #6]
	ldr	r1, =0x31a0000
	mov	r0, #9
	ldr	r2, =0x3390000
	bl	__MapActor_SetPos
.Lm931_b5c:
	ldr	r0, =0x241
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_b8a
	mov	r1, #0x8c
	lsl	r1, #18
	ldr	r2, =0x2c60000
	mov	r0, #0xa
	bl	__MapActor_SetPos
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #5
	mov	r1, #0x90
	strh	r3, [r0, #6]
	lsl	r1, #18
	mov	r0, #0xb
	ldr	r2, =0x2c60000
	bl	__MapActor_SetPos
.Lm931_b8a:
	ldr	r0, =0x242
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm931_bae
	mov	r2, #0xba
	mov	r0, #0xf
	ldr	r1, =0x1270000
	lsl	r2, #18
	bl	__MapActor_SetPos
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r3, #0xb0
	lsl	r3, #8
	strh	r3, [r0, #6]
	b	.Lm931_bc0
.Lm931_bae:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bc0:
	mov	r0, #0x11
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm931_bd6
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bd6:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm931_bec
	mov	r1, r0
	add	r1, #0x59
	ldrb	r2, [r1]
	mov	r3, #4
	orr	r3, r2
	strb	r3, [r1]
.Lm931_bec:
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008b2c

