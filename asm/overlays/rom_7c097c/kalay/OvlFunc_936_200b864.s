	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_936_200b864
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	mov	r6, r1
	mov	r8, r2
	mov	r5, r0
	bl	__Random
	mov	r2, r0
	ldr	r3, =0xfff80000
	lsl	r2, #3
	lsr	r2, #16
	add	r5, r3
	lsl	r2, #16
	mov	r3, #0x80
	lsl	r3, #13
	add	r2, r6
	add	r2, r3
	mov	r1, r5
	mov	r0, #0xde
	mov	r3, r8
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.Lm936_38fa
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xd
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #9
	bl	__Func_80929d8
	mov	r1, #0
	mov	r0, r5
	bl	__Actor_SetSpriteFlags
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	sub	r0, #1
	lsl	r0, #16
	str	r0, [r5, #0x24]
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #1
	lsr	r3, #16
	sub	r3, #3
	lsl	r3, #16
	mov	r2, r5
	str	r3, [r5, #0x28]
	add	r2, #0x64
	mov	r3, #0x14
	strh	r3, [r2]
	sub	r2, #3
	mov	r3, #1
	mov	r0, r5
	mov	r1, #1
	strb	r3, [r2]
	bl	__Actor_SetAnim
	ldr	r1, =gScript_936__0200d120
	mov	r0, r5
	bl	__Actor_SetScript
.Lm936_38fa:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200b864

