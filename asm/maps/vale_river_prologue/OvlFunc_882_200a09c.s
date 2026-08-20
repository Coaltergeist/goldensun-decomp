	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_882_200a09c
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	mov	r2, r1
	mov	r1, #0xf
	and	r1, r3
	cmp	r1, #1
	bne	.Lm882_20f0
	ldr	r0, [r0, #0x50]
	sub	r4, r2, #1
	mov	r12, r0
	cmp	r2, #0
	bne	.Lm882_20c4
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r2, =.Lm882_48bc
	lsr	r3, #1
	and	r3, r1
	ldrb	r4, [r2, r3]
.Lm882_20c4:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lm882_20e8
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.Lm882_20d4:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.Lm882_20e2
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.Lm882_20e2
	strb	r4, [r2, #5]
.Lm882_20e2:
	sub	r1, #1
	cmp	r1, #0
	bne	.Lm882_20d4
.Lm882_20e8:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.Lm882_20f0:
	pop	{r0}
	bx	r0
.func_end OvlFunc_882_200a09c

