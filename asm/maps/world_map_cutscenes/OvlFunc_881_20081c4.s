	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_881_20081c4
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #2
	and	r3, r2
	mov	r6, r0
	cmp	r3, #0
	beq	.Lm881_1dc
	mov	r1, #0xa
	bl	__Actor_SetColorswap
	b	.Lm881_1e4
.Lm881_1dc:
	mov	r0, r6
	mov	r1, #7
	bl	__Actor_SetColorswap
.Lm881_1e4:
	mov	r3, r6
	add	r3, #0x66
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	bne	.Lm881_23c
	ldr	r3, =0x15d00000
	mov	r5, r6
	str	r3, [r6, #8]
	add	r5, #0x64
	mov	r3, #0
	ldrsh	r0, [r5, r3]
	lsl	r0, #3
	bl	__sin
	mov	r1, #0x80
	ldr	r3, =Func_8000888
	lsl	r1, #11
	.call_via r3
	mov	r4, #0x80
	lsl	r4, #13
	mov	r3, #0xa6
	add	r0, r4
	lsl	r3, #19
	str	r0, [r6, #0xc]
	str	r3, [r6, #0x10]
	mov	r2, #0
	ldrsh	r1, [r5, r2]
	mov	r2, r6
	add	r2, #8
	mov	r0, r4
	bl	__vec3_translate
	ldrh	r3, [r5]
	mov	r2, #0x80
	lsl	r2, #7
	add	r3, r2
	strh	r3, [r6, #6]
	mov	r2, #0x80
	ldrh	r3, [r5]
	lsl	r2, #3
	add	r3, r2
	strh	r3, [r5]
.Lm881_23c:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_881_20081c4

