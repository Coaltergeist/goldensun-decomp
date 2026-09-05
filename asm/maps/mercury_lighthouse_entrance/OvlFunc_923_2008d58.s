	.include "macros.inc"

.thumb_func_start OvlFunc_923_2008d58
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r1, r0
	ldr	r2, [r1, #0x10]
	asr	r3, r2, #19
	cmp	r3, #0x16
	bgt	.Lm923_d7e
	ldr	r0, [r5, #0x10]
	ldr	r1, [r1, #8]
	ldr	r3, [r5, #8]
	sub	r0, r2, r0
	sub	r1, r3
	bl	__atan2
	strh	r0, [r5, #6]
	b	.Lm923_d90
.Lm923_d7e:
	mov	r1, #0xc0
	ldrh	r3, [r5, #6]
	lsl	r1, #8
	cmp	r3, r1
	beq	.Lm923_d90
	mov	r0, #3
	mov	r2, #0
	bl	__Func_8092adc
.Lm923_d90:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_923_2008d58

