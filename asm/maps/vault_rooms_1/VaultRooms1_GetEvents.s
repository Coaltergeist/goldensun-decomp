	.include "macros.inc"

.thumb_func_start VaultRooms1_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0x11
	bgt	.Lm899_32a
	cmp	r3, #0xf
	blt	.Lm899_32a
	ldr	r0, =.Lm899_61fc
	b	.Lm899_33a
.Lm899_32a:
	ldr	r0, =0x855
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm899_338
	ldr	r0, =.Lm899_6250
	b	.Lm899_33a
.Lm899_338:
	ldr	r0, =.Lm899_5e30
.Lm899_33a:
	pop	{r1}
	bx	r1
.func_end VaultRooms1_GetEvents

