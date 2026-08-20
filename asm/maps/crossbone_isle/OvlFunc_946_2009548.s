	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009548
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xc
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm946_155e
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.Lm946_155e:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0xa0
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #15
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	ldr	r0, =0x241
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009548

