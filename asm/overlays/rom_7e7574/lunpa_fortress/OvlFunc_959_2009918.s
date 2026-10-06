	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_959_2009918
	push	{r5, lr}
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, [r5, #0x10]
	mov	r3, r0
	cmp	r2, #0
	bge	.Lm959_1932
	ldr	r0, =0xfffff
	add	r2, r0
.Lm959_1932:
	ldr	r0, [r5, #8]
	asr	r1, r2, #20
	cmp	r0, #0
	bge	.Lm959_193e
	ldr	r2, =0xfffff
	add	r0, r2
.Lm959_193e:
	ldr	r2, [r3, #0x10]
	asr	r4, r0, #20
	cmp	r2, #0
	bge	.Lm959_194a
	ldr	r0, =0xfffff
	add	r2, r0
.Lm959_194a:
	ldr	r0, [r3, #8]
	asr	r2, #20
	cmp	r0, #0
	bge	.Lm959_1956
	ldr	r3, =0xfffff
	add	r0, r3
.Lm959_1956:
	asr	r3, r0, #20
	sub	r3, r4, r3
	add	r1, #1
	cmp	r3, #0
	bge	.Lm959_1962
	neg	r3, r3
.Lm959_1962:
	sub	r0, r1, r2
	cmp	r0, #0
	bge	.Lm959_196a
	neg	r0, r0
.Lm959_196a:
	add	r3, r0
	mov	r0, #1
	cmp	r3, #4
	ble	.Lm959_1974
	mov	r0, #0
.Lm959_1974:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_959_2009918

