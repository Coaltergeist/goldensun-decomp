	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80216b4  @ 0x080216b4
	push	{r5, lr}
	ldr	r4, =iwram_3001800
	ldr	r3, [r4]
	ldr	r5, =.L37226
	mov	r1, #7
	lsr	r3, #2
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	ldr	r3, [r4]
	strb	r2, [r0, #0x14]
	lsr	r3, #2
	ldr	r0, [r0]
	and	r3, r1
	ldrb	r2, [r0, #8]
	ldrb	r3, [r5, r3]
	add	r2, r3
	strb	r2, [r0, #0x14]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_80216b4
