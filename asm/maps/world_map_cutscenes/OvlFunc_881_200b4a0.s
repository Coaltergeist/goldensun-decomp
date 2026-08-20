	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_200b4a0
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #0
	bne	.Lm881_3566
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r6, r0
	ldr	r1, [r6, #8]
	ldr	r0, =0xffe00000
	ldr	r3, [r6, #0x10]
	add	r1, r0
	ldr	r0, =0xfff00000
	ldr	r2, [r6, #0xc]
	add	r3, r0
	mov	r0, #0xde
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm881_3566
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	ldr	r7, [r5, #0x50]
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	cmp	r0, #0
	beq	.Lm881_3502
	bl	__Random
	lsl	r2, r0, #1
	add	r2, r0
	lsl	r2, #4
	lsr	r2, #16
	lsl	r2, #16
	ldr	r3, [r5, #8]
	asr	r1, r2, #1
	sub	r3, r1
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	sub	r3, r2
	b	.Lm881_3518
.Lm881_3502:
	bl	__Random
	lsl	r0, #5
	ldr	r3, [r5, #8]
	lsr	r0, #16
	lsl	r0, #16
	add	r3, r0
	str	r3, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r0, #1
	add	r3, r0
.Lm881_3518:
	str	r3, [r5, #0x10]
	mov	r2, r7
	add	r2, #0x26
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, [r6, #0x50]
	ldrb	r3, [r3, #9]
	mov	r2, #0xc
	ldrb	r1, [r7, #9]
	and	r2, r3
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r1
	mov	r1, r5
	add	r1, #0x23
	orr	r3, r2
	ldrb	r2, [r1]
	strb	r3, [r7, #9]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	mov	r3, r6
	add	r3, #0x55
	ldrb	r3, [r3]
	mov	r2, r5
	add	r2, #0x55
	strb	r3, [r2]
	mov	r0, r5
	mov	r1, #9
	bl	__Func_80929d8
	mov	r0, r5
	mov	r1, #2
	bl	__Actor_SetAnim
	ldr	r1, =gScript_881__0200e73c
	mov	r0, r5
	bl	__Actor_SetScript
.Lm881_3566:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_200b4a0

