	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200b144
	push	{lr}
	mov	r3, r0
	add	r3, #0x64
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, [r0, #0xc]
	lsl	r2, #12
	add	r3, r2
	str	r3, [r0, #0xc]
	str	r3, [r0, #0x3c]
	mov	r1, r0
	add	r1, #0x66
	ldrh	r3, [r1]
	lsl	r3, #16
	asr	r2, r3, #18
	ldr	r3, =3
	and	r2, r3
	mov	r4, #0
	cmp	r2, #1
	beq	.Lm888_318a
	cmp	r2, #1
	bgt	.Lm888_3176
	cmp	r2, #0
	beq	.Lm888_3184
	b	.Lm888_3190
.Lm888_3176:
	cmp	r2, #2
	beq	.Lm888_318e
	cmp	r2, #3
	beq	.Lm888_318a
	b	.Lm888_3190

	.pool_aligned

.Lm888_3184:
	mov	r4, #0x80
	lsl	r4, #9
	b	.Lm888_3190
.Lm888_318a:
	ldr	r4, =0xcccc
	b	.Lm888_3190
.Lm888_318e:
	ldr	r4, =0x9999
.Lm888_3190:
	str	r4, [r0, #0x18]
	str	r4, [r0, #0x1c]
	ldrh	r3, [r1]
	sub	r3, #1
	strh	r3, [r1]
	lsl	r3, #16
	cmp	r3, #0
	bgt	.Lm888_31a6
	ldr	r1, =gScript_888__0200c18c
	bl	__Actor_SetScript
.Lm888_31a6:
	pop	{r0}
	bx	r0
.func_end OvlFunc_888_200b144

