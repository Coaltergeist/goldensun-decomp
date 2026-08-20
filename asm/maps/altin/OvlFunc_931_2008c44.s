	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_931_2008c44
	push	{r5, r6, lr}
	mov	r5, r0
	bl	__Random
	mov	r6, r5
	lsl	r0, #1
	add	r6, #0x64
	lsr	r0, #16
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	sub	r0, #1
	lsl	r0, #16
	ldr	r3, [r5, #8]
	lsl	r2, #12
	asr	r0, #1
	add	r2, r0
	add	r3, r2
	str	r3, [r5, #8]
	mov	r2, #0
	ldrsh	r3, [r6, r2]
	cmp	r3, #3
	bgt	.Lm931_c92
	bl	__Random
	ldr	r3, [r5, #0x10]
	lsl	r0, #15
	ldr	r1, =0xffff0000
	lsr	r0, #16
	sub	r3, r0
	add	r3, r1
	str	r3, [r5, #0x10]
	ldr	r2, =0x2666
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r1, =0xfffff5c3
	ldr	r3, [r5, #0x1c]
	add	r3, r1
	b	.Lm931_ca8
.Lm931_c92:
	ldr	r3, [r5, #0x10]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #0x10]
	ldr	r2, =0x7ae
	ldr	r3, [r5, #0x18]
	add	r3, r2
	str	r3, [r5, #0x18]
	ldr	r3, [r5, #0x1c]
	add	r3, r2
.Lm931_ca8:
	str	r3, [r5, #0x1c]
	bl	__Random
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	mul	r3, r0
	lsr	r3, #16
	ldrh	r2, [r6]
	cmp	r3, #0
	bne	.Lm931_cc6
	mov	r0, r5
	mov	r1, #7
	bl	__Func_80929d8
	ldrh	r2, [r6]
.Lm931_cc6:
	lsl	r3, r2, #16
	cmp	r3, #0
	beq	.Lm931_cd0
	sub	r3, r2, #1
	b	.Lm931_cde
.Lm931_cd0:
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsr	r3, #16
	lsl	r3, #1
	add	r3, #2
.Lm931_cde:
	strh	r3, [r6]
	ldr	r3, [r5, #0x68]
	sub	r3, #1
	str	r3, [r5, #0x68]
	cmp	r3, #0
	bne	.Lm931_cf2
	mov	r0, r5
	str	r3, [r5, #0x6c]
	bl	__DeleteActor
.Lm931_cf2:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_2008c44

