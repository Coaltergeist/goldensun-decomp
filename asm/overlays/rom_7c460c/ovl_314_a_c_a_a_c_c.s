	.include "macros.inc"

.thumb_func_start OvlFunc_939_20086e4
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.L702
	ldr	r0, =0x941
	bl	__GetFlag
	ldr	r0, =.L23b4
	b	.L718
.L702:
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.L716
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.L716
	ldr	r0, =.L21bc
	b	.L718
.L716:
	ldr	r0, =.L1fc4
.L718:
	pop	{r1}
	bx	r1
.func_end OvlFunc_939_20086e4

