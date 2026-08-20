	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start DecFlagByte  @ 0x080793f8
	push	{lr}
	lsl	r3, r0, #20
	ldr	r1, =gFlags
	lsr	r0, r3, #23
	ldrb	r2, [r1, r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.L7940c
	add	r3, #0xff
	strb	r3, [r1, r0]
.L7940c:
	ldrb	r0, [r1, r0]
	pop	{r1}
	bx	r1
.func_end DecFlagByte

