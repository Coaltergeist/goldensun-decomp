	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_898_2009754
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #0x30]
	add	r3, r2
	str	r3, [r6, #8]
	str	r3, [r6, #0x38]
	mov	r3, r6
	add	r3, #0x64
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.Lm898_1774
	ldr	r3, [r6, #0xc]
	ldr	r2, [r6, #0x34]
	b	.Lm898_1784
.Lm898_1774:
	ldr	r3, [r6, #0x10]
	ldr	r2, [r6, #0x34]
	add	r3, r2
	str	r3, [r6, #0x10]
	str	r3, [r6, #0x40]
	mov	r2, #0x80
	ldr	r3, [r6, #0xc]
	lsl	r2, #3
.Lm898_1784:
	add	r3, r2
	str	r3, [r6, #0xc]
	str	r3, [r6, #0x3c]
	ldr	r5, [r6, #0x30]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_divsi3_RAM
	sub	r5, r0
	str	r5, [r6, #0x30]
	ldr	r5, [r6, #0x34]
	mov	r1, #0x1c
	mov	r0, r5
	bl	_divsi3_RAM
	sub	r5, r0
	str	r5, [r6, #0x34]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_898_2009754

