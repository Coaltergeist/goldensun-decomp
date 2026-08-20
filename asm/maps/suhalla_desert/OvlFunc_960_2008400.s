	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_960_2008400
	push	{r5, r6, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	lsl	r3, #12
	strh	r3, [r0, #6]
	mov	r0, #0x84
	lsl	r0, #2
	bl	__GetFlagByte
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm960_448
	cmp	r5, #1
	bne	.Lm960_43a
	mov	r3, #0xc1
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x63
	strh	r3, [r2]
	b	.Lm960_448
.Lm960_43a:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm960_448
	sub	r5, #1
.Lm960_448:
	mov	r0, #0x84
	lsl	r0, #2
	mov	r1, r5
	bl	__SetFlagByte
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_960_2008400

