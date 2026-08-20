	.include "macros.inc"

.thumb_func_start Lunpa_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x9f
	cmp	r2, r3
	bne	.Lm939_702
	ldr	r0, =0x941
	bl	__GetFlag
	ldr	r0, =.Lm939_23b4
	b	.Lm939_718
.Lm939_702:
	ldr	r3, =0x68
	cmp	r2, r3
	bne	.Lm939_716
	ldr	r0, =0x941
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm939_716
	ldr	r0, =.Lm939_21bc
	b	.Lm939_718
.Lm939_716:
	ldr	r0, =.Lm939_1fc4
.Lm939_718:
	pop	{r1}
	bx	r1
.func_end Lunpa_GetEvents

