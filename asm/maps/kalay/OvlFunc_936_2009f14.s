	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_2009f14
	push	{lr}
	ldr	r3, =.Lm936_5144
	ldr	r3, [r3]
	cmp	r3, #4
	bhi	.Lm936_1ff2
	ldr	r2, =.Lm936_1f28
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lm936_1f28:
	.word	.Lm936_1f3c
	.word	.Lm936_1f58
	.word	.Lm936_1f84
	.word	.Lm936_1fb0
	.word	.Lm936_1fdc
.Lm936_1f3c:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bec0
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r2, =.Lm936_5144
	ldr	r3, [r2]
	add	r3, #1
	b	.Lm936_1ff0
.Lm936_1f58:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm936_1ff2
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bfb0
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r2, =.Lm936_5144
	ldr	r3, [r2]
	add	r3, #1
	b	.Lm936_1ff0
.Lm936_1f84:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm936_1ff2
	mov	r0, #0x14
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bec0
	mov	r0, #0x14
	bl	__MapActor_SetBehavior
	ldr	r2, =.Lm936_5144
	ldr	r3, [r2]
	add	r3, #1
	b	.Lm936_1ff0
.Lm936_1fb0:
	mov	r0, #0x14
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm936_1ff2
	mov	r0, #0x15
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x64
	strh	r3, [r0]
	ldr	r1, =gScript_936__0200bfb0
	mov	r0, #0x15
	bl	__MapActor_SetBehavior
	ldr	r2, =.Lm936_5144
	ldr	r3, [r2]
	add	r3, #1
	b	.Lm936_1ff0
.Lm936_1fdc:
	mov	r0, #0x15
	bl	__MapActor_GetActor
	add	r0, #0x64
	mov	r2, #0
	ldrsh	r3, [r0, r2]
	cmp	r3, #0
	beq	.Lm936_1ff2
	ldr	r2, =.Lm936_5144
	mov	r3, #0
.Lm936_1ff0:
	str	r3, [r2]
.Lm936_1ff2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2009f14

