	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_907_2008f3c
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm907_f96
	ldr	r1, =gScript_907__02009d7c
	ldr	r6, [r5, #0x50]
	bl	__Actor_SetScript
	mov	r3, r5
	add	r3, #0x55
	mov	r7, #0
	mov	r2, r5
	strb	r7, [r3]
	add	r2, #0x22
	mov	r3, #1
	strb	r3, [r2]
	add	r2, #1
	mov	r3, #2
	strb	r3, [r2]
	cmp	r6, #0
	beq	.Lm907_f96
	mov	r0, r6
	mov	r1, #2
	bl	__Sprite_SetAnim
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	mov	r3, #0xd
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r6, #5]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.Lm907_f96:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008f3c

