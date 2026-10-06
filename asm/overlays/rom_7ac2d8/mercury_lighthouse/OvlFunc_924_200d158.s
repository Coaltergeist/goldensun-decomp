	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200d158
	push	{r5, r6, r7, lr}
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0xc]
	ldr	r3, [r0, #0x10]
	mov	r0, #0x18
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm924_51a4
	ldr	r1, =gScript_924__0200de08
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
	beq	.Lm924_51a4
	mov	r0, r6
	mov	r1, #2
	bl	__Sprite_SetAnim
	mov	r3, r6
	add	r3, #0x26
	strb	r7, [r3]
	ldrb	r3, [r6, #9]
	mov	r2, #0xc
	orr	r3, r2
	strb	r3, [r6, #9]
.Lm924_51a4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200d158

