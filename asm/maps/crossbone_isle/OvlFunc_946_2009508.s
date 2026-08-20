	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_946_2009508
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0xb
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lm946_151e
	mov	r2, r0
	add	r2, #0x59
	mov	r3, #0
	strb	r3, [r2]
.Lm946_151e:
	mov	r0, r5
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x98
	mov	r2, #0xb8
	mov	r0, #0
	lsl	r1, #17
	lsl	r2, #17
	mov	r3, #0xfd
	bl	__Func_8012078
	mov	r0, #0x90
	lsl	r0, #2
	bl	__SetFlag
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_946_2009508

