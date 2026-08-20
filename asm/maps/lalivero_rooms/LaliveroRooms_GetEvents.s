	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LaliveroRooms_GetEvents
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb4
	cmp	r2, r3
	bne	.Lm967_4d6
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_4d2
	ldr	r0, =.Lm967_2010
	b	.Lm967_4e6
.Lm967_4d2:
	ldr	r0, =.Lm967_1eb4
	b	.Lm967_4e6
.Lm967_4d6:
	ldr	r0, =0x9a7
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm967_4e4
	ldr	r0, =gScript_887__02009ca4
	b	.Lm967_4e6
.Lm967_4e4:
	ldr	r0, =.Lm967_1a94
.Lm967_4e6:
	pop	{r1}
	bx	r1
.func_end LaliveroRooms_GetEvents

