	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Field_Frost_Target  @ 0x08099128
	push	{lr}
	ldr	r3, =iwram_3001f30
	ldr	r2, [r3]
	ldr	r1, [r2, #0x14]
	cmp	r1, #0
	beq	.L99156
	mov	r3, r2
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.L99148
	add	r2, #0x20
	mov	r3, #1
	strb	r3, [r2]
.L99148:
	add	r1, #0x23
	ldrb	r2, [r1]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r1]
	bl	Field_Frost
.L99156:
	pop	{r0}
	bx	r0
.func_end Field_Frost_Target
