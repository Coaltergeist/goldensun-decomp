	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_200b428
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, #0xc0
	ldr	r3, [r0, #0xc]
	lsl	r2, #14
	cmp	r3, r2
	ble	.L3454
	mov	r0, #0xb
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r1, #3
	mov	r0, #0xc
	bl	__Func_8092b08
	b	.L345c
.L3454:
	mov	r0, #0xc
	mov	r1, #2
	bl	__Func_8092b08
.L345c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_932_200b428
