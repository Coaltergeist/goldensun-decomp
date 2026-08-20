	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_200901c
	push	{r5, lr}
	mov	r5, r3
	ldr	r3, =iwram_3001e70
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.Lm947_1068
	lsl	r3, r0, #1
	add	r3, r0
	mov	r0, #0x98
	lsl	r0, #1
	lsl	r3, #4
	add	r3, r0
	ldr	r0, [r4, r3]
	lsl	r3, r2, #7
	add	r3, r1, r3
	lsl	r3, #2
	add	r0, r3
	ldr	r3, [r5]
	ldrb	r1, [r0, #1]
	lsl	r3, #18
	mov	r2, #0x31
	lsr	r3, #30
	neg	r2, r2
	lsl	r3, #4
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #1]
	mov	r1, #0x3f
	lsr	r3, #6
	lsl	r3, #6
	and	r2, r1
	orr	r2, r3
	strb	r2, [r0, #1]
	ldrb	r3, [r5, #2]
	strb	r3, [r0, #2]
	ldrb	r3, [r5, #3]
	strb	r3, [r0, #3]
.Lm947_1068:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200901c

