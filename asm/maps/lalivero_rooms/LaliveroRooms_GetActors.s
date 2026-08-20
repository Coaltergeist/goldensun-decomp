	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LaliveroRooms_GetActors
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.Lm967_aa
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_a6
	ldr	r0, =.Lm967_1974
	b	.Lm967_ac
.Lm967_a6:
	ldr	r0, =.Lm967_189c
	b	.Lm967_ac
.Lm967_aa:
	ldr	r0, =.Lm967_1734
.Lm967_ac:
	pop	{r1}
	bx	r1
.func_end LaliveroRooms_GetActors

