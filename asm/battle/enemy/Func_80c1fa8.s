	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80c1fa8  @ 0x080c1fa8
	push	{r5, r6, lr}
	mov	r3, #0xbe
	lsl	r3, #1
	sub	sp, #0x14
	mov	r5, #0
	cmp	r0, r3
	bcc	.Lc1fb8
	mov	r0, #1
.Lc1fb8:
	ldr	r2, =.Lc5c38
	lsl	r3, r0, #4
	add	r3, r2
	mov	r6, sp
	mov	r0, r3
	add	r2, r3, #1
	add	r0, #0xb
	mov	r4, r6
	mov	r1, #4
.Lc1fca:
	ldrb	r3, [r0]
	add	r0, #1
	cmp	r3, #0
	beq	.Lc1fda
	ldrb	r3, [r2]
	add	r3, #8
	stmia	r4!, {r3}
	add	r5, #1
.Lc1fda:
	sub	r1, #1
	add	r2, #1
	cmp	r1, #0
	bge	.Lc1fca
	bl	Random
	mov	r3, r5
	mul	r3, r0
	lsr	r3, #16
	lsl	r3, #2
	ldr	r0, [r6, r3]
	add	sp, #0x14
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_80c1fa8

