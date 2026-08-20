	.include "macros.inc"

.thumb_func_start LaliveroRooms_GetSpecialExits
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0xb3
	cmp	r2, r3
	bne	.Lm967_64
	ldr	r0, =gOvl_02009690
	b	.Lm967_66
.Lm967_64:
	ldr	r0, =.Lm967_16b0
.Lm967_66:
	pop	{r1}
	bx	r1
.func_end LaliveroRooms_GetSpecialExits

