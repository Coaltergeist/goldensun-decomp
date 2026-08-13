	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80978c4  @ 0x080978c4
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ea8
	ldr	r2, =0x28e
	ldr	r5, [r3]
	add	r6, r5, r2
	ldrh	r0, [r6]
	sub	sp, #0xc
	mov	r7, #0
	lsl	r0, #16
	add	r1, sp, #8
	add	r2, sp, #4
	mov	r3, sp
	str	r7, [sp, #8]
	str	r7, [sp, #4]
	str	r7, [sp]
	bl	Func_8097948
	ldr	r3, [sp, #8]
	ldr	r2, =0x28b
	asr	r3, #18
	add	r4, r5, r2
	add	r3, #4
	strb	r3, [r4]
	ldr	r3, [sp, #4]
	add	r2, #1
	asr	r3, #18
	add	r0, r5, r2
	add	r3, #4
	strb	r3, [r0]
	ldr	r3, [sp]
	add	r2, #1
	asr	r3, #18
	add	r5, r2
	add	r3, #4
	strb	r3, [r5]
	ldrh	r3, [r6]
	add	r3, #4
	strh	r3, [r6]
	mov	r2, #0x1f
	ldrb	r1, [r4]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r4]
	ldrb	r1, [r0]
	mov	r3, r2
	and	r3, r1
	strb	r3, [r0]
	ldrb	r3, [r5]
	and	r2, r3
	strb	r2, [r5]
	mov	r2, #0xb4
	ldrh	r3, [r6]
	lsl	r2, #1
	cmp	r3, r2
	bcc	.L97934
	strh	r7, [r6]
.L97934:
	add	sp, #0xc
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80978c4
