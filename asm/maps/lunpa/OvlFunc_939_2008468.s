	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_939_2008468
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #0xc]
	lsl	r2, #13
	cmp	r3, r2
	blt	.Lm939_48a
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	b	.Lm939_494
.Lm939_48a:
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x23
.Lm939_494:
	strb	r3, [r0]
	pop	{r0}
	bx	r0
.func_end OvlFunc_939_2008468

