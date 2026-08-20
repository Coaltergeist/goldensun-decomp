	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b1fc
	push	{r5, r6, lr}
	bl	__Random
	lsl	r5, r0, #2
	add	r5, r0
	bl	__Random
	lsl	r5, #3
	lsl	r3, r0, #4
	sub	r3, r0
	ldr	r2, =0x17b00000
	lsr	r5, #16
	lsl	r3, #1
	lsl	r5, #16
	add	r5, r2
	lsr	r3, #16
	ldr	r2, =0xc4c0000
	lsl	r3, #16
	add	r3, r2
	mov	r0, #0xde
	mov	r1, r5
	mov	r2, #0
	bl	__CreateActor
	mov	r6, r0
	cmp	r6, #0
	beq	.Lm881_3270
	ldr	r5, [r6, #0x50]
	bl	__Random
	ldr	r3, =0x13333
	lsl	r0, #15
	lsr	r0, #16
	add	r0, r3
	mov	r3, r5
	mov	r1, #0
	add	r3, #0x26
	strb	r1, [r3]
	mov	r3, #0xd
	ldrb	r2, [r5, #9]
	neg	r3, r3
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r5, #9]
	mov	r3, r6
	add	r3, #0x55
	strb	r1, [r3]
	str	r0, [r6, #0x18]
	str	r0, [r6, #0x1c]
	mov	r1, #1
	mov	r0, r6
	bl	__Actor_SetAnim
	ldr	r1, =gScript_881__0200d14c
	mov	r0, r6
	bl	__Actor_SetScript
.Lm881_3270:
	ldr	r3, =iwram_3001e40
	mov	r1, #3
	ldr	r0, [r3]
	bl	_umodsi3_RAM
	cmp	r0, #0
	bne	.Lm881_32c6
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	cmp	r0, #1
	beq	.Lm881_329e
	cmp	r0, #1
	bcc	.Lm881_3298
	cmp	r0, #2
	beq	.Lm881_32a8
	cmp	r0, #3
	beq	.Lm881_32b8
	b	.Lm881_32c6
.Lm881_3298:
	mov	r1, #1
	ldr	r0, =0x17c70000
	b	.Lm881_32ac
.Lm881_329e:
	mov	r1, #1
	ldr	r0, =0x17c90000
	neg	r1, r1
	ldr	r2, =0xc670000
	b	.Lm881_32b0
.Lm881_32a8:
	mov	r1, #1
	ldr	r0, =0x17c90000
.Lm881_32ac:
	neg	r1, r1
	ldr	r2, =0xc690000
.Lm881_32b0:
	mov	r3, #1
	bl	__Func_80933f8
	b	.Lm881_32c6
.Lm881_32b8:
	mov	r1, #1
	ldr	r0, =0x17c70000
	neg	r1, r1
	ldr	r2, =0xc670000
	mov	r3, #1
	bl	__Func_80933f8
.Lm881_32c6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b1fc

