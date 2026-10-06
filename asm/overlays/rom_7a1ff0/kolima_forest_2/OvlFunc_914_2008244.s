	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_914_2008244
	push	{r5, r6, lr}
	mov	r4, r3
	ldr	r3, [sp, #0xc]
	mov	r12, r3
	ldr	r3, =iwram_3001e70
	mov	r6, r1
	mov	r1, r2
	ldr	r2, [r3]
	ldr	r5, [sp, #0x10]
	cmp	r2, #0
	beq	.Lm914_298
	cmp	r0, #2
	bhi	.Lm914_26e
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r2, r3]
	b	.Lm914_270
.Lm914_26e:
	ldr	r0, =gBuffer
.Lm914_270:
	lsl	r3, r1, #7
	add	r3, r6, r3
	lsl	r3, #2
	mov	r1, #0
	add	r0, r3
	cmp	r1, r12
	bcs	.Lm914_298
.Lm914_27e:
	lsl	r3, r1, #9
	mov	r2, #0
	add	r3, r0, r3
	cmp	r2, r4
	bcs	.Lm914_292
.Lm914_288:
	add	r2, #1
	strb	r5, [r3, #2]
	add	r3, #4
	cmp	r2, r4
	bcc	.Lm914_288
.Lm914_292:
	add	r1, #1
	cmp	r1, r12
	bcc	.Lm914_27e
.Lm914_298:
	mov	r0, #0
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_914_2008244

