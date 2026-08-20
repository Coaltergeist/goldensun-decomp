	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a67c
	push	{r5, lr}
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	ldr	r3, [r0, #0xc]
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	ldr	r2, =0xfffe0000
	ldr	r3, [r0, #0x10]
	add	r3, r2
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #3
	and	r2, r3
	cmp	r2, #1
	beq	.Lm888_26bc
	cmp	r2, #1
	bcc	.Lm888_26b6
	cmp	r2, #2
	beq	.Lm888_26ca
	cmp	r2, #3
	beq	.Lm888_26d8
	b	.Lm888_26de
.Lm888_26b6:
	ldr	r3, [r0, #8]
	ldr	r2, =0xfffc8000
	b	.Lm888_26c2
.Lm888_26bc:
	ldr	r3, [r0, #8]
	mov	r2, #0xc0
	lsl	r2, #10
.Lm888_26c2:
	add	r3, r2
	str	r3, [r5, #8]
	str	r3, [r5, #0x38]
	b	.Lm888_26de
.Lm888_26ca:
	ldr	r3, [r0, #0xc]
	mov	r2, #0x80
	lsl	r2, #10
	add	r3, r2
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x3c]
	b	.Lm888_26de
.Lm888_26d8:
	ldr	r3, [r0, #0x10]
	str	r3, [r5, #0x10]
	str	r3, [r5, #0x40]
.Lm888_26de:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200a67c

