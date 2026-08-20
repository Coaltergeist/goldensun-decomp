	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_200b610
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm957_363c
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #0
	strb	r3, [r2]
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x50]
	ldr	r4, [r5, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	and	r2, r3
	ldrb	r1, [r4, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	orr	r3, r2
	strb	r3, [r4, #9]
.Lm957_363c:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_200b610

