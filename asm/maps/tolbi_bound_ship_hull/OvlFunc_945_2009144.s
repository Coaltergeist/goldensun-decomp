	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009144
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xc
	mov	r4, #0xc
	ldr	r3, [r3]
	neg	r2, r2
	neg	r4, r4
	add	r4, r1
	add	r2, r0
	mov	r6, r0
	mov	r5, #8
	mov	r14, r2
	add	r6, #0xc
	mov	r12, r4
	add	r1, #0xc
	add	r3, #0x34
.Lm945_1164:
	ldmia	r3!, {r0}
	mov	r7, #0xa
	ldrsh	r2, [r0, r7]
	mov	r7, #0x12
	ldrsh	r4, [r0, r7]
	cmp	r14, r2
	bge	.Lm945_117e
	cmp	r6, r2
	ble	.Lm945_117e
	cmp	r12, r4
	bge	.Lm945_117e
	cmp	r1, r4
	bgt	.Lm945_1186
.Lm945_117e:
	add	r5, #1
	cmp	r5, #0x41
	bls	.Lm945_1164
	mov	r0, #0
.Lm945_1186:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_945_2009144

