	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8099340  @ 0x08099340
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	mov	r6, r0
	sub	sp, #0xc
	ldr	r1, [r3]
	cmp	r6, #0
	beq	.L9939e
	mov	r2, r6
	add	r2, #0x64
	ldrh	r3, [r2]
	sub	r3, #1
	strh	r3, [r2]
	lsl	r3, #16
	asr	r2, r3, #16
	cmp	r2, #0
	beq	.L99396
	ldr	r3, [r1, #4]
	mov	r5, sp
	str	r3, [r5]
	mov	r0, #0xa0
	ldr	r3, [r1, #8]
	lsl	r0, #12
	add	r3, r0
	str	r3, [r5, #4]
	ldr	r3, [r1, #0xc]
	str	r3, [r5, #8]
	mov	r3, r6
	add	r3, #0x66
	mov	r4, #0
	ldrsh	r1, [r3, r4]
	lsl	r3, r2, #11
	lsl	r0, r2, #16
	add	r1, r3
	mov	r2, r5
	bl	vec3_translate
	ldr	r3, [r5]
	str	r3, [r6, #8]
	ldr	r3, [r5, #4]
	str	r3, [r6, #0xc]
	ldr	r3, [r5, #8]
	str	r3, [r6, #0x10]
	b	.L9939e
.L99396:
	ldr	r1, =Data_9f0b0
	mov	r0, r6
	bl	_Actor_SetScript
.L9939e:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8099340
