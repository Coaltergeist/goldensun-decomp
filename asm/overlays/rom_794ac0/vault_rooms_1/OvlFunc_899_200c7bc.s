	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_899_200c7bc
	push	{r5, r6, lr}
	mov	r5, r0
	mov	r0, r2
	mov	r6, r1
	bl	__GetFieldActor
	mov	r3, #0x80
	ldr	r4, [r0, #0x38]
	lsl	r3, #24
	cmp	r4, r3
	bne	.Lm899_47d4
	ldr	r4, [r0, #8]
.Lm899_47d4:
	ldr	r1, [r0, #0x40]
	cmp	r1, r3
	bne	.Lm899_47dc
	ldr	r1, [r0, #0x10]
.Lm899_47dc:
	sub	r3, r4, r5
	asr	r4, r3, #16
	sub	r3, r1, r6
	asr	r1, r3, #16
	mov	r2, r1
	mul	r2, r1
	mov	r3, r4
	mul	r3, r4
	add	r3, r2
	mov	r0, #1
	cmp	r3, #0x40
	ble	.Lm899_47f6
	mov	r0, #0
.Lm899_47f6:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_899_200c7bc

