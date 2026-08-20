	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200a6b8
	push	{r5, r6, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r6, #8
	mov	r5, r0
.Lm947_26c4:
	mov	r0, r6
	bl	__MapActor_GetActor
	ldr	r3, [r5, #0xc]
	cmp	r3, #0
	bge	.Lm947_26d4
	ldr	r1, =0xffff
	add	r3, r1
.Lm947_26d4:
	asr	r2, r3, #16
	ldr	r3, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm947_26e0
	ldr	r4, =0xffff
	add	r3, r4
.Lm947_26e0:
	asr	r3, #16
	cmp	r2, r3
	bne	.Lm947_2720
	ldr	r2, =0xfff80000
	ldr	r1, [r0, #0x10]
	add	r3, r1, r2
	ldr	r2, [r5, #0x10]
	cmp	r2, r3
	bgt	.Lm947_2720
	ldr	r4, =0xffe80000
	add	r3, r1, r4
	cmp	r2, r3
	ble	.Lm947_2720
	ldr	r2, =0xfff00000
	ldr	r1, [r5, #8]
	add	r3, r1, r2
	ldr	r2, [r0, #8]
	cmp	r3, r2
	bgt	.Lm947_2730
	mov	r4, #0x80
	lsl	r4, #13
	add	r3, r1, r4
	cmp	r2, r3
	bge	.Lm947_2730
	ldr	r3, [r0, #0x50]
	ldrb	r1, [r3, #9]
	lsl	r1, #28
	lsr	r1, #30
	mov	r0, #0
	bl	__Func_8092b08
	b	.Lm947_2736
.Lm947_2720:
	mov	r0, #0
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #1
	orr	r3, r2
	strb	r3, [r0]
.Lm947_2730:
	add	r6, #1
	cmp	r6, #0xb
	bls	.Lm947_26c4
.Lm947_2736:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a6b8

