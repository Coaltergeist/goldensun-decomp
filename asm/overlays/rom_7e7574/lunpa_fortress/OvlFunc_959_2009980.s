	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2009980
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Func_8093554
	ldr	r3, [r5, #8]
	mov	r2, r0
	cmp	r3, #0
	bge	.Lm959_1998
	ldr	r0, =0xfffff
	add	r3, r0
.Lm959_1998:
	ldr	r0, [r5, #0x10]
	asr	r4, r3, #20
	cmp	r0, #0
	bge	.Lm959_19a4
	ldr	r1, =0xfffff
	add	r0, r1
.Lm959_19a4:
	ldr	r3, [r2, #8]
	asr	r1, r0, #20
	cmp	r3, #0
	bge	.Lm959_19b0
	ldr	r0, =0xfffff
	add	r3, r0
.Lm959_19b0:
	ldr	r0, [r2, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm959_19bc
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_19bc:
	sub	r3, r4, r3
	asr	r0, #20
	cmp	r3, #0
	bge	.Lm959_19c6
	neg	r3, r3
.Lm959_19c6:
	sub	r0, r1, r0
	cmp	r0, #0
	bge	.Lm959_19ce
	neg	r0, r0
.Lm959_19ce:
	cmp	r3, #7
	bgt	.Lm959_19d6
	cmp	r0, #5
	ble	.Lm959_19da
.Lm959_19d6:
	mov	r0, #0
	b	.Lm959_19dc
.Lm959_19da:
	mov	r0, #1
.Lm959_19dc:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009980

