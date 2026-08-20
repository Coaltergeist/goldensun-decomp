	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_917_2009218
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r6, [r3]
	mov	r3, #3
	and	r6, r3
	cmp	r6, #0
	bne	.Lm917_129e
	ldr	r3, =.Lm917_1dd0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.Lm917_1234
	mov	r0, #0xc8
	bl	__PlaySound
.Lm917_1234:
	mov	r1, #0xa3
	mov	r2, #0x80
	mov	r3, #0xc0
	mov	r0, #0x1a
	lsl	r1, #17
	lsl	r2, #14
	lsl	r3, #16
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm917_129e
	ldr	r1, [r5, #0x50]
	add	r0, #0x23
	mov	r3, r1
	ldrb	r2, [r0]
	add	r3, #0x26
	strb	r6, [r3]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	ldr	r3, =0x1999
	str	r3, [r5, #0x18]
	mov	r3, #0x80
	lsl	r3, #11
	str	r3, [r5, #0x30]
	str	r3, [r5, #0x34]
	mov	r3, r5
	add	r3, #0x55
	strb	r6, [r3]
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	mov	r1, #0xa3
	mov	r3, #0xf0
	mov	r0, r5
	lsl	r1, #17
	mov	r2, #0
	lsl	r3, #16
	bl	__Actor_TravelTo
	ldr	r1, =gScript_917__02009d9c
	mov	r0, r5
	bl	__Actor_SetScript
.Lm917_129e:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_917_2009218

